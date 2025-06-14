# IMPLEMENT Mode Activation

Focused code execution and concrete deliverable creation

## Command Usage
```
/project:workflow:implement
```

## Instructions for Claude

When this command is activated, immediately switch to IMPLEMENT mode behavioral patterns:

### Your Mindset
- **Execution-focused**: Write code, create files, build tangible outputs
- **Task-oriented**: Work through specific, concrete tasks systematically  
- **Quality-driven**: Test as you go, follow best practices
- **Progress-tracking**: Update todos and document what's accomplished

### What You Should Do

1. **Task Execution**
   - Work on specific, well-defined tasks from your todo list
   - Write actual code implementations
   - Create, modify, or refactor files as needed
   - Build concrete features or components

2. **Quality Assurance**
   - Test implementations as you create them
   - Follow established coding patterns and conventions
   - Ensure code is readable and well-documented
   - Validate that changes work as expected

3. **Progress Management**
   - Update TodoWrite with task completion status
   - Mark completed tasks and add new ones as discovered
   - Document any issues or blockers encountered
   - Keep implementation aligned with the plan

4. **Incremental Delivery**
   - Focus on delivering working increments
   - Commit meaningful changes regularly
   - Validate each increment before moving to the next
   - Maintain working state throughout development

### Your Response Should Include

**Format your response like this:**

```markdown
# IMPLEMENT Mode Execution Report

## Tasks Completed
- [✅] [Task 1]: [Brief description of what was implemented]
- [✅] [Task 2]: [Brief description of what was implemented]
- [✅] [Task 3]: [Brief description of what was implemented]

## Implementation Details

### [Component/Feature Name]
**Files Modified**:
- `path/to/file1.ext`: [What was changed]
- `path/to/file2.ext`: [What was changed]
- `path/to/file3.ext`: [What was created]

**Key Implementation Decisions**:
- [Decision 1]: [Rationale]
- [Decision 2]: [Rationale]

**Testing Performed**:
- [Test 1]: [Result]
- [Test 2]: [Result]
- [Validation]: [Outcome]

### [Next Component/Feature]
[Similar structure for each major implementation block]

## Issues Encountered
- **[Issue 1]**: [Description and how it was resolved]
- **[Issue 2]**: [Description and current status]

## Progress Status
**Completed**: [X/Y tasks] ([percentage]%)
**In Progress**: [Current task being worked on]
**Blocked**: [Any blockers and mitigation plans]

## Quality Checklist
- [ ] Code follows project conventions
- [ ] Implementation tested and working
- [ ] Documentation updated where needed
- [ ] No broken functionality introduced
- [ ] Ready for next implementation cycle

## Next Actions
1. **Immediate**: [What to tackle in the next implementation session]
2. **Dependencies**: [What needs to be completed first]
3. **Mode transition**: [When to switch to REFLECT or continue IMPLEMENT]
```

### Implementation Best Practices

**Code Quality Standards**:
- Follow existing project patterns and conventions
- Write clear, self-documenting code
- Include appropriate error handling
- Add comments for complex logic
- Maintain consistent naming and structure

**Testing and Validation**:
- Test each implementation incrementally
- Validate against requirements or acceptance criteria
- Run existing tests to ensure no regressions
- Create simple tests for new functionality when appropriate

**Progress Tracking**:
- Update todos immediately when tasks are completed
- Break down large tasks into smaller, manageable pieces
- Document decisions and rationale for future reference
- Note any changes to original plans or requirements

**File and Code Management**:
- Use meaningful commit messages
- Keep commits focused on specific features or fixes
- Maintain clean, organized file structures
- Remove or comment out debugging code before completion

### Mode Transition Signals

**Continue in IMPLEMENT when:**
- Tasks are flowing smoothly and making good progress
- Implementation is straightforward and well-defined
- No major blockers or design questions arise
- Good momentum exists on current work

**Switch to REFLECT when:**
- Significant milestone reached (phase completion)
- Implementation quality needs assessment
- Learning from recent work should be captured
- Process improvements should be identified

**Switch to CREATIVE when:**
- Implementation reveals design problems
- Alternative approaches need exploration
- Unexpected technical challenges require innovation
- Architecture needs rethinking based on implementation experience

**Switch to PLAN when:**
- Current task list is exhausted but work remains
- Implementation complexity requires better planning
- Dependencies become unclear during implementation
- Coordination with other work streams is needed

### State Management
- Update memory-bank/activeContext.md with implementation progress
- Use TodoWrite extensively to track task completion
- Document significant implementations in memory-bank/progress.md
- Keep memory-bank/tasks.md current with remaining work

### Success Criteria
- Concrete, working implementations delivered
- Progress measured in completed features/tasks
- Quality maintained through testing and validation
- Todos updated to reflect actual progress
- Clear path forward for next implementation cycle

Remember: IMPLEMENT mode is about **getting things done**. Focus on creating working, tested implementations that move the project forward tangibly.