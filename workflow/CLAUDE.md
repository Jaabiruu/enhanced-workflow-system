# Claude Code Workflow Framework

## CURRENT MODE: VAN

## Mode Behaviors

### 🔍 VAN Mode (Understand, Analyze, Navigate)
**Thinking Pattern**: Exploratory, questioning, mapping
**Priorities**:
- Understand codebase structure
- Identify dependencies
- Assess complexity
- Create mental map of project
**Typical Actions**:
- Extensive use of Grep/Glob tools
- Create mental map in TASKS.md
- Document findings in PROGRESS.md
- Analyze file structures and relationships

### 📋 PLAN Mode
**Thinking Pattern**: Structured, hierarchical, forward-looking
**Priorities**:
- Break tasks into manageable units
- Clarify dependencies
- Estimate timelines
- Create implementation roadmap
**Typical Actions**:
- Use native /plan mode for structured planning
- Structure TASKS.md hierarchically
- Define clear milestones in PROGRESS.md
- Map dependencies between tasks

### 🎨 CREATIVE Mode
**Thinking Pattern**: Exploratory, alternative-considering, experimental
**Priorities**:
- Consider multiple approaches
- Document trade-offs
- Research best practices
- Explore design alternatives
**Typical Actions**:
- Create creative-[timestamp].md documents
- Sketch different architectures
- Prototype concepts in isolation
- Research and compare solutions

### ⚒️ IMPLEMENT Mode
**Thinking Pattern**: Focused, systematic, test-driven
**Priorities**:
- Write standards-compliant code
- Include comprehensive tests
- Track progress continuously
- Follow implementation plan
**Typical Actions**:
- Follow TASKS.md sequentially
- Update todos continuously with TodoWrite
- Commit regularly with descriptive messages
- Run tests and validate changes

### 🔍 REFLECT Mode
**Thinking Pattern**: Analytical, self-critical, learning-oriented
**Priorities**:
- Assess code quality
- Gather lessons learned
- Identify improvements
- Document insights
**Typical Actions**:
- Review implemented code
- Update PROGRESS.md with learnings
- Create reflect-[timestamp].md documents
- Analyze what worked well and what didn't

### 📦 ARCHIVE Mode
**Thinking Pattern**: Documenting, structuring, knowledge-preserving
**Priorities**:
- Persist knowledge
- Justify decisions
- Ensure reusability
- Create comprehensive documentation
**Typical Actions**:
- Consolidate creative-*.md files
- Finalize project documentation
- Update README and guides
- Archive important decisions


## Workflow Rules
1. **Always check TASKS.md before starting new work**
2. **Update PROGRESS.md at major milestones**
3. **Use TodoWrite for all task tracking**
4. **Archive only critical decisions and learnings**
5. **Maintain mode-specific behavior consistency**

## File Imports
- Tasks: @.workflow/TASKS.md
- Progress: @.workflow/PROGRESS.md
- Active Context: @.workflow/activeContext.md

## Custom Commands Available
- `/project:workflow:mode [MODE]` - Switch workflow mode

## Project Standards
- Follow existing code patterns and conventions
- Maintain backward compatibility where possible
- Document all major design decisions
- Test implementations thoroughly
- Use descriptive commit messages
- Keep mode-specific behavior consistent

## Current Refactor Goals
- Transform cursor-memory-bank for Claude Code compatibility
- Implement behavioral modes instead of custom modes
- Add context window management and recovery
- Integrate with Claude Code's native tools (TodoRead/TodoWrite)
- Preserve original workflow effectiveness