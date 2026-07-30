#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

echo "Installing Windsurf Skills..."

if [ -f "$PROJECT_DIR/.windsurfrules" ]; then
    cp "$PROJECT_DIR/.windsurfrules" "$PWD/.windsurfrules"
    echo "✓ .windsurfrules copied to $PWD"
else
    echo "✗ .windsurfrules not found in $PROJECT_DIR"
    exit 1
fi

echo ""
echo "Done! Restart Windsurf IDE to apply the rules."
