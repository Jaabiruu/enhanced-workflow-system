# Enhanced Workflow System - Usage Guide

> **Complete Guide to the Enhanced Memory Bank Workflow for Claude Code**
> **Version**: 1.0
> **Date**: 2024-12-19

## 🚀 Quick Start

### First Time Setup
1. **Read this guide** to understand the workflow system
2. **Check workflow/CLAUDE.md** for mode definitions
3. **Start with @VAN mode** for any new project or task
4. **Follow the complexity-based routing** automatically

### Essential Files to Know
- **memory-bank/tasks.md** - Your central source of truth
- **memory-bank/progress.md** - Track your milestones
- **memory-bank/activeContext.md** - Current focus and mode
- **workflow/custom_modes/** - All enhanced mode instructions

## 🎯 Core Workflow Modes

### 🔍 VAN Mode - Entry Point (ALWAYS START HERE)
**Purpose**: Project analysis, complexity assessment, and task creation

**When to Use**: 
- Beginning any new project or task
- When tasks.md doesn't exist or is incomplete
- Reassessing project complexity

**Key Actions**:
- Analyze project structure and requirements
- Assess complexity level (1-4)
- Create/update tasks.md with complete breakdown
- Route to appropriate next mode

**Time Commitment**: 30s quick assessment + 60s deep analysis + 30s routing

**Entry**: Read `workflow/custom_modes/van_instructions.md` and execute mandatory checklist

**Exit Criteria**: 
- ✅ Complexity level determined and justified
- ✅ tasks.md created/updated with complete structure
- ✅ Next mode clearly recommended

### 📋 PLAN Mode - Implementation Planning
**Purpose**: Create detailed implementation strategy

**When to Use**:
- Level 2, 3, or 4 complexity tasks (Level 1 skips to IMPLEMENT)
- After VAN mode completion
- When detailed planning is needed before implementation

**Key Actions**:
- Develop step-by-step implementation strategy
- Identify affected components and dependencies
- Flag components needing creative design (Level 3-4)
- Document challenges and risk mitigation

**Entry**: Read `workflow/custom_modes/plan_instructions.md`

**Exit Criteria**:
- ✅ Implementation plan addresses all VAN tasks
- ✅ Creative phase components flagged (Level 3-4)
- ✅ Testing strategy defined

### 🎨 CREATIVE Mode - Design Exploration
**Purpose**: Structured design exploration for complex components

**When to Use**:
- Level 3-4 tasks with components flagged for design decisions
- Architecture, algorithm, or UI/UX design needed
- Multiple approaches need evaluation

**Key Actions**:
- Follow 15/30/45/15 minute structured design process
- Generate 2-4 design options for each component
- Analyze pros/cons systematically
- Document implementation guidelines

**Time Commitment**: 
- 15 min: Understand problem and constraints
- 30 min: Explore multiple approaches
- 45 min: Design selected solution
- 15 min: Validate and document

**Entry**: Read `workflow/custom_modes/creative_instructions.md`

**Exit Criteria**:
- ✅ All flagged components have design decisions
- ✅ Implementation guidelines provided
- ✅ design-options.md created with complete documentation

### ⚒️ IMPLEMENT Mode - Systematic Implementation
**Purpose**: Execute implementation plan with continuous testing

**When to Use**:
- After PLAN mode (and CREATIVE mode for Level 3-4)
- Ready to build according to plan
- Design decisions are complete

**Key Actions**:
- Follow prepare/build/integrate/validate cycles
- Apply design decisions from CREATIVE mode
- Test continuously during implementation
- Update progress tracking in real-time

**Entry**: Read `workflow/custom_modes/implement_instructions.md`

**Exit Criteria**:
- ✅ All planned components implemented
- ✅ All tests passing
- ✅ Implementation log complete

### 🔍 REFLECT Mode - Quality Validation
**Purpose**: Comprehensive review and lessons learned

**When to Use**:
- After IMPLEMENT mode completion
- All functionality built and tested
- Ready for quality validation

**Key Actions**:
- Follow validate/analyze/learn/document phases
- Verify all requirements met
- Capture lessons learned
- Document patterns for future use

**Entry**: Read `workflow/custom_modes/reflect_instructions.md`

**Exit Criteria**:
- ✅ All requirements validated
- ✅ Lessons learned documented
- ✅ validation-results.md created

### 📊 MODE SWITCHING ANALYSIS - Architecture Assessment
**Purpose**: Analyze workflow effectiveness and optimize

**When to Use**:
- After completing complex projects (Level 3-4)
- Periodically to assess workflow effectiveness
- When optimizing workflow patterns

**Key Actions**:
- Follow 20/30/25/15 minute analysis process
- Measure quantitative effectiveness metrics
- Document behavioral observations
- Generate optimization recommendations

**Entry**: Read `workflow/custom_modes/mode_switching_analysis.md`

## 🛣️ Complexity-Based Routing

### Level 1: Quick Bug Fix
**Route**: VAN → IMPLEMENT → REFLECT
**Duration**: < 30 minutes
**Example**: Fix typo, correct variable name, simple logic fix

### Level 2: Simple Enhancement
**Route**: VAN → PLAN → IMPLEMENT → REFLECT
**Duration**: 2-8 hours
**Example**: Add form field, update UI component, simple API endpoint

### Level 3: Complex Feature
**Route**: VAN → PLAN → CREATIVE → IMPLEMENT → REFLECT
**Duration**: 1-3 days
**Example**: User dashboard, payment integration, complex business logic

### Level 4: System Architecture
**Route**: VAN → PLAN → CREATIVE → IMPLEMENT → REFLECT
**Duration**: 1+ weeks
**Example**: Database migration, microservices split, major refactoring

## 📝 Essential File Management

### Memory Bank Files (Critical)

#### tasks.md - Central Source of Truth
**Purpose**: Single source of truth for all task tracking
**When to Update**: 
- Always in VAN mode (mandatory)
- Throughout workflow as status changes
- Before any major mode transition

**Structure**:
```markdown
# Memory Bank Tasks
## Current Task Status
- **Status**: [Active/Planning/In Progress/Completed]
- **Complexity Level**: [1-4]
- **Current Mode**: [Current mode]
- **Next Mode**: [Recommended next mode]

## Task Overview
[Brief description]

## Complexity Assessment
[Level justification and reasoning]

## Task List
[Specific, actionable tasks]

## Progress Tracking
[Mode completion status]
```

#### progress.md - Milestone Tracking
**Purpose**: Track major milestones and accomplishments
**When to Update**:
- At mode completions
- At major milestones
- When significant progress is made

#### activeContext.md - Current Focus
**Purpose**: Track current mode and immediate focus
**When to Update**:
- Every mode transition
- When changing focus within a mode
- When context shifts significantly

### Generated Files During Workflow

#### memory-bank/decisions/design-options.md
**Generated by**: CREATIVE mode
**Contains**: All design decisions with options analysis

#### memory-bank/implementation-log.md
**Generated by**: IMPLEMENT mode
**Contains**: Detailed implementation progress and decisions

#### memory-bank/qa/validation-results.md
**Generated by**: REFLECT mode
**Contains**: Comprehensive validation results and lessons learned

## 🔧 Tool Integration

### TodoWrite/TodoRead Integration
- **Use TodoWrite** for all task progress tracking
- **Update todos** as you complete components
- **Mark todos complete** immediately after finishing tasks
- **Keep only one todo in_progress** at a time

### Claude Code Native Tools
- **Use @workflow files** for context loading
- **Follow CLAUDE.md** behavioral definitions
- **Leverage memory persistence** across sessions

## ⚡ Best Practices

### Mode Discipline
1. **Always start with VAN** - Never skip initial analysis
2. **Complete mandatory checklists** in each mode
3. **Follow time-boxed phases** for optimal cognitive load
4. **Meet exit criteria** before transitioning modes
5. **Document decisions** as you make them

### Quality Assurance
1. **Use quality gates** at every mode transition
2. **Test continuously** during implementation
3. **Validate requirements** systematically in REFLECT
4. **Capture lessons learned** for future improvement

### Context Management
1. **Read memory-bank/tasks.md** before starting work
2. **Update progress.md** at major milestones
3. **Maintain activeContext.md** current
4. **Preserve decisions** in appropriate files

### Workflow Optimization
1. **Follow complexity routing** automatically
2. **Use analysis mode** after complex projects
3. **Apply lessons learned** to future projects
4. **Refine processes** based on evidence

## 🚨 Common Pitfalls to Avoid

### ❌ Skipping VAN Mode
**Problem**: Starting implementation without proper analysis
**Solution**: Always begin with VAN mode, no exceptions

### ❌ Rushing Through Creative Phases
**Problem**: Making design decisions without proper exploration
**Solution**: Follow time-boxed phases completely

### ❌ Incomplete Documentation
**Problem**: Missing context for future work
**Solution**: Complete all mandatory documentation before mode transitions

### ❌ Ignoring Quality Gates
**Problem**: Proceeding with incomplete work
**Solution**: Meet all exit criteria before moving to next mode

### ❌ Poor Context Management
**Problem**: Losing track of progress and decisions
**Solution**: Maintain memory-bank files consistently

## 🎯 Success Patterns

### For Quick Tasks (Level 1)
1. **VAN**: Quick complexity assessment (5 minutes)
2. **IMPLEMENT**: Direct implementation with testing (15-25 minutes)
3. **REFLECT**: Brief validation and lessons (5 minutes)

### For Features (Level 2)
1. **VAN**: Thorough analysis and planning setup (15 minutes)
2. **PLAN**: Detailed implementation strategy (30-60 minutes)
3. **IMPLEMENT**: Systematic building with testing (2-6 hours)
4. **REFLECT**: Comprehensive validation (30 minutes)

### For Complex Projects (Level 3-4)
1. **VAN**: Complete project analysis (30 minutes)
2. **PLAN**: Comprehensive planning with creative component identification (1-2 hours)
3. **CREATIVE**: Structured design exploration for flagged components (2-4 hours)
4. **IMPLEMENT**: Phased implementation with continuous validation (days/weeks)
5. **REFLECT**: Thorough validation and lessons capture (1-2 hours)
6. **MODE SWITCHING ANALYSIS**: Effectiveness assessment (90 minutes)

## 📈 Measuring Success

### Quantitative Metrics
- **Planning Comprehensiveness**: Are all components identified?
- **Design Decision Documentation**: Are decisions justified?
- **Implementation Consistency**: Does code follow patterns?
- **Quality Gate Compliance**: Are exit criteria met?
- **Context Preservation**: Is information retained across sessions?

### Qualitative Indicators
- **Structured Thinking**: Are time-boxed phases being followed?
- **Research Integration**: Are best practices being applied?
- **Decision Quality**: Are choices well-reasoned and documented?
- **Workflow Discipline**: Are modes being used appropriately?

## 🔄 Continuous Improvement

### Regular Assessment
- **Run MODE SWITCHING ANALYSIS** after complex projects
- **Review validation-results.md** for patterns
- **Identify optimization opportunities** in workflow
- **Apply lessons learned** to future projects

### Workflow Evolution
- **Adapt time allocations** based on experience
- **Refine complexity assessments** with historical data
- **Enhance mode instructions** based on usage patterns
- **Integrate new research** as it becomes available

## 🎉 Getting Started Checklist

### First Project Setup
- [ ] Read this usage guide completely
- [ ] Review workflow/CLAUDE.md for mode definitions
- [ ] Understand your project requirements
- [ ] Start with @VAN mode following van_instructions.md
- [ ] Create tasks.md with proper complexity assessment
- [ ] Follow recommended routing based on complexity level

### Ongoing Usage
- [ ] Always read memory-bank/tasks.md before starting work
- [ ] Follow mode-specific instruction files
- [ ] Complete mandatory checklists in each mode
- [ ] Update progress tracking continuously
- [ ] Meet exit criteria before mode transitions
- [ ] Run analysis mode periodically for optimization

---

**Original methodology by @vanzan01**  
**Enhanced with Anthropic research and Claude Code integration**  
**Ready for production use with comprehensive workflow system** ✅