# Getting Started with Windsurf Skills

## Prerequisites

- [Windsurf IDE](https://codeium.com/windsurf) installed

## Installation

### Option 1: Manual Copy

1. Copy `.windsurfrules` to the root of your project
2. Restart Windsurf IDE
3. The AI will automatically load and follow the configured rules

### Option 2: Run Setup Script

**Unix/macOS:**
```bash
chmod +x scripts/setup.sh
./scripts/setup.sh
```

**Windows:**
```powershell
.\scripts\setup.ps1
```

## Verification

After installation, Windsurf AI will:
- Follow the code style conventions defined in the rules
- Suggest tests for new code you write
- Flag security issues and anti-patterns
- Generate code matching the project's architecture patterns

## Customization

Edit `.windsurfrules` to adjust rules for your specific project needs. See `docs/RULES_REFERENCE.md` for a complete reference of all available options.
