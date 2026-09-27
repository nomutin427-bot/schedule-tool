#!/bin/bash
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# No package dependencies — just verify the HTML file is present
if [ ! -f "$CLAUDE_PROJECT_DIR/schedule-tool.html" ]; then
  echo "WARNING: schedule-tool.html not found" >&2
  exit 1
fi

echo "Session ready: schedule-tool.html found."
