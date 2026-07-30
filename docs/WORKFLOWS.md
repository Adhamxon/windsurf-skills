# Windsurf Development Workflows

Real-world workflows showing how Windsurf IDE AI (Cascade + Supercomplete + Flow mode) operates with `.windsurfrules` loaded in the project root.

---

## Workflow 1: Building a New Feature from Scratch

**Scenario**: Add a payment processing module to an existing Express app.

### Steps

1. **Open Cascade** — Ctrl+Shift+I (or Cmd+Shift+I on macOS)
2. **Describe the feature**:
   ```
   Add a Stripe payment processing module. Users should be able to
   create a checkout session, handle webhook events, and view payment history.
   ```
3. **Cascade reads `.windsurfrules`** and:
   - Applies naming conventions (`camelCase` for functions, `PascalCase` for classes)
   - Follows layering — creates files under `src/presentation/routes/`, `src/application/services/`, `src/domain/entities/`
   - Generates tests alongside implementation (`[testing]` section requires this)
   - Validates input with middleware (per `validation.*` rules)
   - Uses `bcrypt` and JWT per `[security]` rules
4. **Supercomplete assists** while you review Cascade's output — tab-completes variable names, import paths, and boilerplate
5. **Flow mode runs tests** automatically after generation

### Result

A fully structured payment module with tests, error handling, and security — all conforming to project conventions — in under 5 minutes.

---

## Workflow 2: Debugging a Production Bug

**Scenario**: Users report 503 errors during peak hours on an API endpoint.

### Steps

1. **Open Cascade** and paste the error log
2. **Ask**:
   ```
   Here's the error log. What's causing the 503s and how do I fix it?
   ```
3. **Cascade uses `[errors]` rules** to suggest:
   - Checking if error types are properly propagated per layer
   - Verifying logging includes request/correlation IDs
   - Inspecting the monitoring config from `[performance]` for alert thresholds
4. **Cascade cross-references `[performance]` rules**:
   - Suggests connection pooling optimization
   - Recommends adding Redis caching with correct TTL
5. **Supercomplete** helps implement the fix inline — respecting `[style]` formatting

### Result

Root cause identified and fix implemented with proper error handling, logging, and caching — all consistent with project rules.

---

## Workflow 3: Refactoring a Monolith to Microservices

**Scenario**: Split a monolithic Node.js app into microservices.

### Steps

1. **Open Cascade** — "Plan a microservices extraction for this monolith"
2. **Cascade reads `[architecture]` rules**:
   - Uses `dependency_injection`, `repository`, and `factory` patterns
   - Follows layering rules for each new service
   - Generates ADRs in `docs/adr/` (per `[documentation]` rules)
3. **Flow mode executes**:
   - Extracts domain logic into separate services
   - Creates Dockerfiles per `[devops]` rules (multi-stage, no-root, small base images)
   - Sets up CI/CD pipelines per `[devops]` rules
4. **Cascade validates**:
   - No circular dependencies (per `dependency.cycle_detection = error`)
   - All API endpoints follow REST conventions
   - OpenAPI specs generated for each service

### Result

Monolith split into 4 microservices with Docker, CI/CD, tests, and documentation — all adhering to `.windsurfrules`.

---

## Workflow 4: Onboarding a New Developer

**Scenario**: A new team member joins mid-project.

### Steps

1. **New dev clones the repo** — `.windsurfrules` is already in the project root
2. **Opens Windsurf** — Supercomplete immediately follows correct conventions
3. **Opens Cascade** — AI knows the project's architecture, naming, testing requirements
4. **New dev asks**: "How do I add a new API endpoint?"
5. **Cascade responds** with the exact file structure, naming, and patterns used throughout the codebase

### Result

Zero ramp-up time. The rules file serves as living documentation that the AI enforces.

---

## Workflow 5: Security Audit

**Scenario**: Quarterly security review of the codebase.

### Steps

1. **Open Cascade** — "Run a security audit on this codebase following our rules"
2. **Cascade uses `[security]` rules**:
   - Scans for hardcoded secrets (API keys, tokens, passwords)
   - Validates input sanitization in all user-facing endpoints
   - Checks JWT auth on all protected routes
   - Verifies CSP, CORS, CSRF, HSTS headers
   - Reviews dependency licenses against allowed/blocked lists
3. **Flow mode** generates a report and opens PRs for each finding

### Result

Comprehensive security audit aligned with project policies, with automated fix PRs.

---

## Customizing Workflows

Override or extend these workflows for your project by editing the `[ai]` section in `.windsurfrules`:

```ini
[ai]
persona = "expert_developer"
tone = "professional_concise"
explanation_level = "detailed"
suggestions.suggest_security_fixes = true
suggestions.suggest_refactoring = true
```

The `[ai]` section is Windsurf-specific — it controls how Cascade communicates and what it proactively suggests.

## Attribution

Based on: https://github.com/Adhamxon/opencode-ultimate-skills
Copyright (c) 2026 Adkhamkhon
