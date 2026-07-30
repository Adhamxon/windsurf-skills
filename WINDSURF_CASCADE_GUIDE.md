# Windsurf Cascade Guide — Using `.windsurfrules` with Cascade

Cascade is Windsurf's AI chat panel — a persistent assistant that reads your `.windsurfrules` to understand project conventions before generating code. This guide shows how to get the most out of Cascade with these rules loaded.

## How Cascade Reads Rules

When you open Cascade, it automatically loads `.windsurfrules` from the project root. This happens in three phases:

1. **Initialization** — Cascade scans the rules file and builds a context map of your project's conventions
2. **Active reading** — Every code generation request references the rules for style, architecture, and security
3. **Enforcement** — Cascade flags violations of rules (e.g., "this doesn't follow the naming convention in `.windsurfrules`")

You don't need to re-state conventions in every prompt. Just tell Cascade what you want built, and it follows the rules.

## Prompting Patterns

### Build a feature (Cascade uses architecture + style rules)

```
Build a user authentication module with login, register, and password reset
```

Cascade automatically:
- Follows your naming conventions (`camelCase`, `PascalCase`)
- Structures code per your layering rules (presentation → application → domain → infrastructure)
- Includes tests per your testing requirements
- Applies security rules (JWT, bcrypt, input validation)

### Debug an issue (Cascade uses error handling + logging rules)

```
Why is my API returning 500 on this endpoint? Here's the stack trace...
```

Cascade automatically:
- Checks error handling patterns from `[errors]` section
- Suggests logging improvements per `[errors]` rules
- Verifies against security rules for input validation

### Refactor code (Cascade uses architecture + performance rules)

```
Refactor this service to use the repository pattern
```

Cascade automatically:
- Applies `design_patterns` from `[architecture]`
- Respects module size limits and single responsibility
- Suggests tests per `[testing]` rules

## Flow Mode + Cascade

Flow mode extends Cascade to execute multi-step tasks autonomously. With rules loaded:

1. Describe the task: "Set up a new Express API with PostgreSQL and Docker"
2. Flow mode executes each step, checking rules at every stage
3. If a generated file violates a rule, Flow mode self-corrects before proceeding

Flow mode respects `[testing]` requirements — it won't mark a task complete without passing tests.

## Supercomplete + Cascade

Supercomplete is Windsurf's inline autocomplete. When Cascade has rules loaded, Supercomplete:

- Uses your exact naming conventions (`naming.*` rules)
- Follows your import style (`imports.*` rules)
- Respects line length and formatting (`[style]` rules)
- Suggests test files automatically when you create implementation files

## Troubleshooting

| Problem | Fix |
|---|---|
| Cascade ignores a rule | Check the rule is in a recognized section (`[style]`, `[testing]`, `[architecture]`, etc.) |
| Supercomplete doesn't follow naming | Restart Windsurf after adding/editing `.windsurfrules` |
| Flow mode doesn't write tests | Verify `testing.require_tests_for_new_code = true` is set |
| Rule conflicts with project setup | Use `rules.language.override` sections for language-specific exceptions |

## Pro Tips

- **Start small**: Add `.windsurfrules` to a new project before writing any code — Cascade builds better architecture from the start
- **Iterate on `[ai]` section**: Tweak `tone`, `explanation_level`, and `persona` to match your preferred interaction style
- **Use `[ai].suggest_refactoring = true`**: Cascade will proactively suggest improvements when it spots rule violations
- **Pair with `.windsurf/` directory**: Place project-specific overrides in `.windsurf/` for multi-project setups

## Attribution

Based on: https://github.com/Adhamxon/opencode-ultimate-skills
Copyright (c) 2026 Adkhamkhon
