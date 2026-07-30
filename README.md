# Windsurf AI Skills — `.windsurfrules` for Windsurf IDE

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Windsurf](https://img.shields.io/badge/Windsurf-IDE-00B4D8)](https://codeium.com/windsurf)
[![Skills](https://img.shields.io/badge/Skills-384-success)](https://github.com/Adhamxon/windsurf-skills)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/Adhamxon/windsurf-skills/pulls)
[![Maintained](https://img.shields.io/badge/maintained-yes-success)](https://github.com/Adhamxon/windsurf-skills)

A **massive** `.windsurfrules` configuration (**309 KB, 384 skills converted**) purpose-built for **Windsurf IDE** — the AI-native editor by Codeium. These rules shape how Windsurf's AI understands your project, writes code, and collaborates with you across every session.

This is the largest open-source Windsurf rules configuration, auto-converted from the [opencode-ultimate-skills](https://github.com/Adhamxon/opencode-ultimate-skills) project.

---

## Table of Contents

- [How Windsurf Uses `.windsurfrules`](#how-windsurf-uses-windsurfrules)
- [What's Inside](#whats-inside)
- [Quick Start](#quick-start)
- [Workflow Examples](#workflow-examples)
- [windsurfrules vs cursorrules](#windsurfrules-vs-cursorrules)
- [Cascade Chat Tips](#cascade-chat-tips)
- [Project Structure](#project-structure)
- [Attribution](#attribution)
- [License](#license)

---

## How Windsurf Uses `.windsurfrules`

Windsurf loads `.windsurfrules` from your project root and applies it to every AI interaction:

| Windsurf Feature | How Rules Apply |
|---|---|
| **Cascade** (AI chat panel) | Reads rules as persistent context before generating any code. You describe your conventions once, Cascade remembers across sessions. |
| **Supercomplete** (inline autocomplete) | Respects style rules (naming, formatting, indentation) for every suggestion — zero-config consistency. |
| **Flow mode** (autonomous agent) | Follows testing, architecture, and security rules automatically when executing multi-step tasks. |

Unlike passing instructions in a prompt, `.windsurfrules` is always active. Restart Windsurf once after adding the file, and the AI adheres to it across all files, all sessions, all modes.

---

## What's Inside

### Core Files

- **`.windsurfrules`** — **309 KB** comprehensive rules file covering **all 384 skills** across 13 domains

### Covered Domains

| Domain | Count | Key Skills |
|--------|:-----:|------------|
| **Architecture & Design** | 30+ | Clean Architecture, DDD, system design, refactoring, team topologies, UI/UX |
| **Frontend Development** | 45+ | TypeScript, Three.js, Tailwind, SvelteKit, tRPC, TanStack Query, Zustand, React |
| **Backend & API** | 15+ | REST, GraphQL, gRPC, Supabase, message queues, vector databases |
| **Mobile & iOS** | 16+ | Swift, SwiftUI, iOS patterns, concurrency, performance, debugging |
| **Project Management** | 68+ | OKRs, PRDs, sprints, user stories, GTM, market research, pricing, strategy |
| **DevOps & Cloud** | 20+ | GCP (GKE, Cloud Run, BigQuery), Docker, Kubernetes, CI/CD |
| **Security & Testing** | 55+ | OWASP Top 10, API security, JWT, XSS, SQL injection, container scanning |
| **Code Quality & Review** | 22+ | Code review, TDD, debugging, domain modeling, clean code |
| **AI & LLM** | 28+ | Claude API, Gemini API, MCP, skill creation, transformers, LLM training |
| **Documentation & Design** | 14+ | Figma, docs, spreadsheets, slides, brand design |
| **Git & Workflow** | 15+ | Git workflow, conventional commits, CI/CD, shipping |
| **Developer Productivity** | 20+ | Obsidian, unslop, teaching, diagnostics, handoff |
| **Animation & Motion** | 8+ | Animation vocabulary, Apple design, Emil design, UI prototypes |

### Documentation

- `docs/GETTING_STARTED.md` — Detailed setup guide
- `docs/RULES_REFERENCE.md` — Full rule listing with descriptions
- `docs/WORKFLOWS.md` — Real Windsurf development workflows
- `scripts/setup.bat` — Windows batch setup
- `scripts/setup.ps1` — PowerShell setup

---

## Quick Start

```bash
# 1. Clone the repository
git clone https://github.com/Adhamxon/windsurf-skills.git

# 2. Copy the rules to your project
cp windsurf-skills/.windsurfrules /path/to/your/project/

# 3. Copy docs and scripts (optional)
cp -r windsurf-skills/docs /path/to/your/project/
cp -r windsurf-skills/scripts /path/to/your/project/

# 4. Restart Windsurf IDE (or reload the window)
```

**That's it!** Open Cascade — the AI already knows your project's conventions. Supercomplete and Flow mode now follow your rules.

### Using the Setup Scripts

```bash
# Windows (PowerShell)
.\scripts\setup.ps1 -TargetPath "C:\path\to\project"

# Windows (CMD)
setup.bat
```

---

## Workflow Examples

### Building a Feature with Cascade

1. Open Cascade (`Ctrl+L` or `Cmd+L`)
2. Type: *"Create a user authentication module following our architecture conventions"*
3. Cascade reads `.windsurfrules` → generates Clean Architecture layers
4. Code style rules are automatically applied
5. Testing rules generate matching unit tests
6. Security rules enforce input validation and JWT best practices

### Debugging with Flow Mode

1. Describe the bug: *"Users are getting 403 errors on the dashboard endpoint"*
2. Flow mode follows security testing rules → identifies missing authorization
3. Architecture rules → suggests correct fix location
4. Code style rules → formats the fix consistently

### Code Review with Cascade

1. Open a file and select code
2. In Cascade: *"Review this code for security issues"*
3. Windsurf reads security rules → flags hardcoded secrets, SQL injection risks, XSS vectors
4. Returns CVSS-style severity ratings with remediation code

---

## `.windsurfrules` vs `.cursorrules`

| Aspect | `.windsurfrules` | `.cursorrules` |
|---|---|---|
| IDE | Windsurf (Codeium AI) | Cursor (Anthropic/OpenAI) |
| AI Engine | Codeium Cascade | Claude / GPT-based |
| Format | INI-style sections with key-value pairs | Freeform text / YAML |
| Auto-execute | Flow mode runs rules autonomously | Agent mode reads as instructions |
| Coverage | Explicit sections for style, testing, arch, security, git, CI/CD, DB, perf, a11y, i18n, AI behavior | Typically style + instructions only |

If you're migrating from Cursor: `.windsurfrules` uses structured sections for granular control. The AI behavior section (`[ai]`) is unique to Windsurf — it tunes how Cascade explains things, suggests refactors, and generates code.

---

## Cascade Chat Tips

These prompts work well with `.windsurfrules` loaded:

```
"Design a microservices architecture for our e-commerce platform"
→ Architecture rules guide the response

"Create a migration plan from REST to GraphQL"
→ API design rules + migration patterns applied

"Audit our package.json for deprecated dependencies"
→ Security scanning rules activated

"Generate a test suite for the payment module"
→ Testing rules determine framework and patterns

"What's the best way to cache our API responses?"
→ Performance optimization rules provide guidance
```

---

## Project Structure

```
Windsurf_Skills/
├── .windsurfrules               # 309 KB — 384 skills combined
├── WINDSURF_CASCADE_GUIDE.md    # Master Cascade chat guide
├── docs/
│   ├── GETTING_STARTED.md       # Quick setup reference
│   ├── RULES_REFERENCE.md       # Full rule listing
│   └── WORKFLOWS.md            # Real-world workflow examples
├── scripts/
│   ├── setup.bat                # Windows CMD setup
│   └── setup.ps1               # Windows PowerShell setup
├── README.md
├── LICENSE
├── NOTICE.md
└── .gitignore
```

---

## Attribution

This project is a Windsurf IDE adaptation of **[opencode-ultimate-skills](https://github.com/Adhamxon/opencode-ultimate-skills)** by Adkhamkhon.

Copyright (c) 2026 Adkhamkhon — MIT License

See [NOTICE.md](NOTICE.md) for attribution requirements.

---

## License

MIT — free for personal and commercial use. See [LICENSE](LICENSE) for full terms.

---

*Built for Windsurf IDE. Powered by the community. Maintained by Adkhamkhon.*
