# Mode Switching Command

Switch between behavioral modes for focused workflow management.

## Command Usage
```
/project:workflow:mode [MODE_NAME]
```

## Available Modes
- **VAN**: Quick analysis and next-step determination
- **PLAN**: Strategic planning and roadmap creation  
- **CREATIVE**: Design exploration and architectural decisions
- **IMPLEMENT**: Focused code execution and deliverables
- **REFLECT**: Progress analysis and learning capture
- **ARCHIVE**: Documentation finalization and cleanup

## Instructions for Claude

When this command is called:

1. **Validate the requested mode** - Check if the provided mode is one of: VAN, PLAN, CREATIVE, IMPLEMENT, REFLECT, ARCHIVE
2. **Read current mode** from memory-bank/activeContext.md 
3. **Update activeContext.md** with the new mode and timestamp
4. **Activate the requested mode** by following the mode-specific behavioral patterns below

## Mode Activation Behaviors

### 🔍 VAN Mode
**When activated, you should:**
- Focus on rapid understanding and analysis
- Spend maximum 5-10 minutes in this mode
- Quickly assess the current situation
- Identify the most appropriate next mode (PLAN/IMPLEMENT/CREATIVE)
- Provide clear direction on what to do next

**Your response should include:**
- Brief analysis of current state
- Recommended next mode with reasoning
- Immediate actionable steps

### 📋 PLAN Mode  
**When activated, you should:**
- Think strategically about implementation approaches
- Break down complex tasks into manageable phases
- Create detailed roadmaps and task lists
- Use TodoWrite extensively for task management
- Consider dependencies and potential risks

**Your response should include:**
- Structured implementation plan
- Clear milestones and phases
- Updated todo list with specific tasks
- Timeline estimates where relevant

### 🎨 CREATIVE Mode
**When activated, you should:**
- Explore multiple solution approaches
- Consider architectural alternatives and trade-offs
- Research best practices and design patterns
- Prototype or sketch different concepts
- Document design decisions and rationale

**Your response should include:**
- Multiple solution options explored
- Pros/cons analysis of different approaches
- Recommended approach with clear reasoning
- Design documentation or prototypes

### 🔧 IMPLEMENT Mode
**When activated, you should:**
- Focus on concrete code execution
- Make tangible progress on specific tasks
- Test implementations as you go
- Follow established patterns and conventions
- Update todos with completion status

**Your response should include:**
- Actual code implementations
- Test results and validation
- Progress updates on current tasks
- Clear next steps for continued implementation

### 🤔 REFLECT Mode
**When activated, you should:**
- Analyze what has been accomplished
- Identify lessons learned and areas for improvement
- Update documentation with insights
- Assess quality and effectiveness of recent work
- Plan optimizations or corrections

**Your response should include:**
- Progress analysis and accomplishments
- Lessons learned documentation
- Quality assessment of recent work
- Recommendations for future improvements

### 📚 ARCHIVE Mode
**When activated, you should:**
- Finalize all project documentation
- Clean up temporary files and organize code
- Create comprehensive README and guides
- Archive important decisions and patterns
- Prepare deliverables for handoff

**Your response should include:**
- Completed documentation
- Organized project structure
- Final deliverables ready for use
- Archived decisions and learnings

## State Management
- Always update memory-bank/activeContext.md with the new mode
- Include timestamp of mode switch
- Maintain mode consistency throughout the session
- Reference mode-specific behaviors in your responses

## Integration with Workflow
- Use TodoWrite for task management in all modes
- Reference memory-bank/tasks.md for context
- Update memory-bank/progress.md at major milestones
- Follow established project patterns and conventions