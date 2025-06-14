#!/bin/bash

# Claude Code Context Monitor with OTel Integration
# Monitors token usage and manages context window thresholds

# Configuration
CONTEXT_WINDOW_SIZE=200000  # Assumed context window size
LOG_FILE="/tmp/claude-context.log"
CHECKPOINT_DIR="/home/li/dev/projects/refactor/workflow/.workflow/checkpoints"

# OTel Token Parser Function
parse_otel_tokens() {
    # Look for recent OTel metrics in console output or logs
    # This would need to be adapted based on actual OTel output format
    
    if [ "$OTEL_METRICS_EXPORTER" = "console" ]; then
        # Parse console output for token metrics
        # Example: looking for patterns like "input_tokens: 1234"
        RECENT_TOKENS=$(tail -100 ~/.claude/logs/* 2>/dev/null | grep -E "(input_tokens|token_count)" | tail -1 | grep -oE '[0-9]+' | tail -1)
        echo "${RECENT_TOKENS:-0}"
    elif [ "$OTEL_METRICS_EXPORTER" = "otlp" ]; then
        # Query OTLP endpoint for metrics
        # This would require curl to OTLP endpoint
        echo "0"  # Placeholder - would implement OTLP query
    else
        echo "0"
    fi
}

# Heuristic Token Estimation (Fallback)
estimate_tokens_heuristic() {
    local operations_file="$CHECKPOINT_DIR/operations.log"
    
    if [ ! -f "$operations_file" ]; then
        echo "0"
        return
    fi
    
    # Sum up estimated tokens from recent operations
    local total=0
    while IFS= read -r line; do
        case "$line" in
            "file_read_small") total=$((total + 500)) ;;
            "file_read_medium") total=$((total + 1500)) ;;
            "file_read_large") total=$((total + 3000)) ;;
            "code_edit") total=$((total + 800)) ;;
            "tool_output") total=$((total + 1200)) ;;
            "grep_search") total=$((total + 600)) ;;
            "mode_switch") total=$((total + 400)) ;;
        esac
    done < "$operations_file"
    
    echo "$total"
}

# Log Operation for Heuristic Tracking
log_operation() {
    local operation_type="$1"
    local operations_file="$CHECKPOINT_DIR/operations.log"
    
    mkdir -p "$CHECKPOINT_DIR"
    echo "$operation_type" >> "$operations_file"
    
    # Keep only last 50 operations
    tail -50 "$operations_file" > "${operations_file}.tmp" && mv "${operations_file}.tmp" "$operations_file"
}

# Get Current Context Usage
get_context_usage() {
    local token_count=0
    
    # Try OTel first
    if [ "$CLAUDE_CODE_ENABLE_TELEMETRY" = "1" ]; then
        token_count=$(parse_otel_tokens)
        echo "OTel" > "$LOG_FILE.method"
    fi
    
    # Fallback to heuristics if OTel unavailable or returns 0
    if [ "$token_count" -eq 0 ]; then
        token_count=$(estimate_tokens_heuristic)
        echo "Heuristic" > "$LOG_FILE.method"
    fi
    
    # Calculate percentage
    local usage_pct=$((token_count * 100 / CONTEXT_WINDOW_SIZE))
    
    # Log results
    echo "$(date): Tokens: $token_count, Usage: ${usage_pct}%, Method: $(cat $LOG_FILE.method 2>/dev/null)" >> "$LOG_FILE"
    
    # Return both values
    echo "$token_count $usage_pct"
}

# Determine Action Based on Usage
get_recommended_action() {
    local usage_pct="$1"
    
    if [ "$usage_pct" -lt 60 ]; then
        echo "continue"
    elif [ "$usage_pct" -lt 80 ]; then
        echo "checkpoint"
    elif [ "$usage_pct" -lt 90 ]; then
        echo "compact"
    else
        echo "clear"
    fi
}

# Main Function
main() {
    local command="${1:-check}"
    
    case "$command" in
        "check")
            read -r token_count usage_pct <<< "$(get_context_usage)"
            local action=$(get_recommended_action "$usage_pct")
            local method=$(cat "$LOG_FILE.method" 2>/dev/null || echo "Unknown")
            
            echo "Context Usage: ${usage_pct}% (${token_count}/${CONTEXT_WINDOW_SIZE} tokens)"
            echo "Method: $method"
            echo "Recommended Action: $action"
            
            case "$action" in
                "checkpoint") echo "⚠️  Consider creating checkpoint" ;;
                "compact") echo "🟡 Recommend /compact" ;;
                "clear") echo "🔴 Context critical - /clear needed" ;;
                *) echo "✅ Normal operation" ;;
            esac
            ;;
            
        "log")
            # Log an operation for heuristic tracking
            log_operation "$2"
            ;;
            
        "reset")
            # Reset tracking
            rm -f "$CHECKPOINT_DIR/operations.log" "$LOG_FILE" "$LOG_FILE.method"
            echo "Context tracking reset"
            ;;
            
        *)
            echo "Usage: $0 {check|log <operation>|reset}"
            echo "Operations: file_read_small, file_read_medium, file_read_large, code_edit, tool_output, grep_search, mode_switch"
            ;;
    esac
}

# Make sure checkpoint directory exists
mkdir -p "$CHECKPOINT_DIR"

# Run main function
main "$@"