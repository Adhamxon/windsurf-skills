# Windsurf AI Skills — `.windsurfrules` for Windsurf IDE

A production-grade `.windsurfrules` collection purpose-built for **Windsurf IDE** — the AI-native editor by Codeium. These rules shape how Windsurf's AI understands your project, writes code, and collaborates with you across every session.

## How Windsurf Uses `.windsurfrules`

Windsurf loads `.windsurfrules` from your project root and applies it to every AI interaction:

| Windsurf Feature | How Rules Apply |
|---|---|
| **Cascade** (AI chat panel) | Reads rules as persistent context before generating any code. You describe your conventions once, Cascade remembers across sessions. |
| **Supercomplete** (inline autocomplete) | Respects style rules (naming, formatting, indentation) for every suggestion — zero-config consistency. |
| **Flow mode** (autonomous agent) | Follows testing, architecture, and security rules automatically when executing multi-step tasks. |

Unlike passing instructions in a prompt, `.windsurfrules` is always active. Restart Windsurf once after adding the file, and the AI adheres to it across all files, all sessions, all modes.

## What's Inside

- `.windsurfrules` — 400+ line comprehensive rules file (code style, testing, architecture, security, error handling, git, CI/CD, database, performance, accessibility, i18n, AI behavior)
- `WINDSURF_CASCADE_GUIDE.md` — Master Cascade chat with these rules
- `docs/GETTING_STARTED.md` — Quick setup
- `docs/RULES_REFERENCE.md` — Full rule reference
- `docs/WORKFLOWS.md` — Real Windsurf development workflows
- `scripts/setup.bat` — Windows setup
- `scripts/setup.ps1` — PowerShell setup

## Quick Start

1. Copy `.windsurfrules` into your project root
2. Restart Windsurf IDE (or reload the window)
3. Open Cascade — the AI already knows your project's conventions
4. Start coding — Supercomplete and Flow mode now follow your rules

## `.windsurfrules` vs `.cursorrules`

| Aspect | `.windsurfrules` | `.cursorrules` |
|---|---|---|
| IDE | Windsurf (Codeium AI) | Cursor (Anthropic/OpenAI) |
| AI Engine | Codeium Cascade | Claude / GPT-based |
| Format | INI-style sections with key-value pairs | Freeform text / YAML |
| Auto-execute | Flow mode runs rules autonomously | Agent mode reads as instructions |
| Coverage | Explicit sections for style, testing, arch, security, git, CI/CD, DB, perf, a11y, i18n, AI behavior | Typically style + instructions only |

If you're migrating from Cursor: `.windsurfrules` uses structured sections for granular control. The AI behavior section (`[ai]`) is unique to Windsurf — it tunes how Cascade explains things, suggests refactors, and generates code.

## Attribution

Based on: https://github.com/Adhamxon/opencode-ultimate-skills
Copyright (c) 2026 Adkhamkhon — MIT License
