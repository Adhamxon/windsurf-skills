# Rules Reference

This document describes the structure of the `.windsurfrules` file — a **309 KB** ruleset covering all **384 skills** from the OpenCode collection.

## File Structure

The `.windsurfrules` file uses an INI-like format with sections:

```ini
[project]
name = "universal-dev-skills"
version = "3.0.0"

[skill.clean-architecture]
description = "Structure software around the Dependency Rule..."
enabled = true
instructions = """..."""

[skill.domain-driven-design]
description = "Model complex domains using ubiquitous language..."
enabled = true
instructions = """..."""
```

## Domain Categories

The 384 skills are organized into 13 domains within the file:

| Domain | Section Prefix | Count |
|--------|---------------|-------|
| Architecture & Design | `[skill.clean-architecture` ... `skill.ux-heuristics]` | ~30 |
| Frontend Development | `[skill.threejs-fundamentals` ... `skill.frontend-ui-engineering]` | ~25 |
| Backend & API | `[skill.api-design` ... `skill.message-queues]` | ~12 |
| Mobile & iOS | `[skill.swift-concurrency` ... `skill.macos-spm-app-packaging]` | ~11 |
| Project Management | `[skill.brainstorm-okrs` ... `skill.value-proposition]` | ~65 |
| DevOps & Cloud | `[skill.gcp-cloud-run` ... `skill.turborepo-caching]` | ~25 |
| Security & Testing | `[skill.security-review` ... `skill.web-security-testing]` | ~55 |
| Code Quality | `[skill.matt-code-review` ... `skill.matt-domain-modeling]` | ~22 |
| AI & LLM | `[skill.claude-api` ... `skill.verification-before-completion]` | ~28 |
| Documentation & Design | `[skill.docx` ... `skill.algorithmic-art]` | ~14 |
| Git & Workflow | `[skill.git-workflow` ... `skill.review-and-simplify-changes]` | ~15 |
| Browser & Debugging | `[skill.playwright` ... `skill.browser-testing-with-devtools]` | ~8 |
| Developer Productivity | `[skill.obsidian-bases` ... `skill.handoff]` | ~20 |

## How Windsurf Uses This File

Windsurf loads `.windsurfrules` from the project root and applies it to:
- **Cascade** (AI chat panel) — Reads rules as persistent context before generating any code
- **Supercomplete** (inline autocomplete) — Respects style rules for suggestions
- **Flow mode** (autonomous agent) — Follows rules when executing multi-step tasks
