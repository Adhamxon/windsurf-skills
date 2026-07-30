# Windsurf Development Workflows

Real-world workflows showing how Windsurf IDE AI (Cascade + Supercomplete + Flow mode) operates with the **384-skill `.windsurfrules`** loaded in the project root.

---

## Workflow 1: Architecture Design with Cascade

**Scenario**: Design a clean architecture for a new payment microservice.

### Steps

1. **Open Cascade** — Ctrl+Shift+I
2. **Ask**:
   ```
   Design a payment processing microservice following Clean Architecture principles
   ```
3. **Cascade reads skill rules**:
   - `clean-architecture` → enforces Dependency Rule, layer separation
   - `domain-driven-design` → suggests bounded contexts, aggregates
   - `refactoring-patterns` → recommends patterns for the domain
4. **Result**: A layered architecture with domain, application, and infrastructure modules

---

## Workflow 2: Building a Full Stack Feature

**Scenario**: Add a product review system with frontend, API, and database.

### Steps

1. **Open Cascade** and describe the feature
2. **Multiple skills activate**:
   - `trpc-fullstack` → type-safe API endpoints
   - `tanstack-query-expert` → data fetching patterns
   - `tailwind-patterns` → UI component styling
   - `supabase-postgres-best-practices` → database schema design
3. **Flow mode** generates all layers simultaneously
4. **Result**: A complete feature with typed API, UI, and database

---

## Workflow 3: Security Audit Before Deployment

**Scenario**: Audit a web application for security vulnerabilities.

### Steps

1. **Open Cascade**
2. **Ask**:
   ```
   Perform a security audit on this application
   ```
3. **Security skills activate**:
   - `testing-api-security-with-owasp-top-10` → OWASP audit
   - `testing-for-xss-vulnerabilities` → XSS detection
   - `testing-for-sql-injection` → injection testing
   - `testing-jwt-token-security` → JWT verification
4. **Result**: Comprehensive security report with remediation steps

---

## Workflow 4: Project Planning with AI

**Scenario**: Plan a product launch.

### Steps

1. **Open Cascade**
2. **Ask**:
   ```
   Create a GTM strategy for our new SaaS product
   ```
3. **PM skills activate**:
   - `gtm-strategy` → launch plan
   - `create-prd` → product requirements
   - `user-stories` → backlog items
   - `pricing-strategy` → pricing recommendations
   - `competitive-battlecard` → competitor positioning
4. **Result**: Complete GTM plan with timeline and deliverables

---

## Workflow 5: Bug Diagnosis & Fix

**Scenario**: Users report 503 errors during peak hours.

### Steps

1. **Open Cascade** and paste the error log
2. **Ask**:
   ```
   What's causing these 503 errors and how do I fix them?
   ```
3. **Skills activate**:
   - `diagnosing-bugs` → systematic debugging approach
   - `high-perf-browser` → performance analysis
   - `systematic-debugging` → root cause analysis
4. **Result**: Identified bottleneck and fix recommendation
