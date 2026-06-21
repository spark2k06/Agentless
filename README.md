# Agentless

> **Human-supervised agentic workflows for tool-restricted AI environments**

Agentless is an open workflow framework that enables agent-like outcomes using standard AI chat systems and a human operator.

It is designed for environments where autonomous agents are unavailable, restricted, undesirable, or simply not required.

Rather than granting an AI direct access to repositories, terminals, IDEs, or production systems, Agentless uses an evidence-driven workflow that keeps humans in control while preserving many of the practical benefits of agentic execution.

---

## Demo

![Agentless Demo](docs/demo.gif)

---

## What Makes Agentless Different?

Most agentic systems assume:

- Direct tool execution
- IDE integration
- Repository access
- Autonomous actions
- Persistent memory
- Minimal human intervention

Agentless deliberately takes a different approach.

Instead of replacing human oversight, it treats the human as part of the runtime.

```text
AI reasons
↓
Human executes
↓
AI analyses evidence
↓
Human validates
↓
Objective achieved
```

This approach prioritises:

- Evidence over assumptions
- Human oversight over autonomy
- Verification over blind execution
- Traceability over speed
- Control over automation

---

## Why Agentless?

Modern AI agents are powerful.

They are also not always available, appropriate, or desirable.

Agentless is particularly relevant in environments where the following requirements exist:

- Human approval before execution
- Human oversight and accountability
- Auditable workflows
- Controlled environments
- Git-based validation
- Incremental changes
- Reduced operational risk
- Predictable operational costs

Agentless provides a structured methodology for those scenarios.

---

## Core Principles

### Evidence Over Assumptions

Unknown information remains unknown until evidence is gathered.

Agentless does not assume:

- Operating systems
- Shells
- Repository structures
- Programming languages
- Frameworks
- Configuration states

### Iterative Execution

Agentless operates through short feedback loops:

```text
Goal
↓
Evidence
↓
Analysis
↓
Next Step
```

Large implementation plans are avoided until sufficient evidence exists.

### Human Runtime

The user is the execution runtime.

The AI reasons.

The human executes.

The AI analyses.

The human validates.

### Patch-First Modifications

Small, explicit and reviewable changes are preferred.

Large automated modifications require justification and validation.

### Diff-First Verification

Every modification should be validated before additional modifications are proposed.

Git diffs become the primary verification mechanism.

### Context Efficiency

Agentless minimises context growth through:

- Small iterative turns
- Session snapshots
- Externalised evidence
- Git-based memory

---

## Workflow Modes

| Mode | Purpose |
|--------|---------|
| DISCOVER | Establish environment facts |
| ANALYSE | Investigate a problem |
| PLAN | Define an evidence-based path |
| APPLY | Implement approved changes |
| VERIFY | Validate results |
| COMMIT | Prepare version control actions |
| DEPLOY | Prepare deployment actions |
| RESPONSE | Deliver outcomes and conclusions |

---

## Strengths

Agentless excels at:

- Repository analysis
- Root cause investigation
- Feature implementation
- Refactoring guidance
- Architecture exploration
- Infrastructure diagnostics
- Learning unfamiliar codebases
- Working in controlled environments

---

## Limitations

Agentless is not a replacement for autonomous agents.

Compared to true agent systems:

- Execution is slower.
- Human participation is required.
- Direct tool access is unavailable.
- Results depend on the quality of supplied evidence.
- Long workflows may require multiple interaction cycles.
- Context window limitations still apply.

Agentless intentionally trades:

```text
Speed
↓
for
↓
Control
Traceability
Auditability
Safety
```

---

## Safety Disclaimer

Agentless may suggest:

- Commands
- Package installations
- Configuration changes
- Code modifications
- Build actions
- Deployment actions

Users are solely responsible for reviewing and understanding any command before execution.

Always:

- Review commands before running them.
- Inspect generated patches and diffs.
- Validate changes through version control.
- Maintain backups when appropriate.
- Exercise caution when using elevated privileges.
- Independently verify significant actions.

Agentless assumes that a human operator remains responsible for all executed actions.

No guarantee is provided regarding the correctness, safety, suitability, or consequences of generated actions.

---

## Who Is It For?

- Software Engineers
- Researchers
- DevOps Engineers
- Architects
- Security-Conscious Teams
- Corporate Environments
- Local LLM Users
- AI Power Users

Compatible with:

- ChatGPT
- Microsoft Copilot
- Claude
- Gemini
- Local Models
- Any chat-based AI capable of following structured instructions

---

## Repository Structure

```text
.
├── Agentless.md
├── README.md
├── docs/
│   └── demo.gif
└── LICENSE
```

---

## Philosophy

Agentless is not an AI agent.

Agentless is not an agent framework.

Agentless is not a replacement for Cursor, Claude Code, Codex or GitHub Copilot Agents.

Agentless is a workflow.

Its purpose is simple:

**Obtain agent-like outcomes using evidence-driven iteration, human execution, and structured reasoning.**

---

## Contributing

Feedback, experiments, issues, pull requests, alternative prompts, and workflow improvements are welcome.

Agentless is an ongoing exploration of how far structured workflows can go without autonomous agents.

---

## License

This project is licensed under the MIT License.

You are free to use, modify, distribute, and adapt Agentless for personal or commercial purposes, subject to the terms of the MIT License.

See the LICENSE file for details.
