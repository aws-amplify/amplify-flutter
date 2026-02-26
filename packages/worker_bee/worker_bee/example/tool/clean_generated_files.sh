#!/usr/bin/env bash

set -euo pipefail

# Resolve the example project root (one level up from tool/)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

echo "Cleaning generated files in: $PROJECT_DIR"

find "$PROJECT_DIR/lib" -type f \( \
  -name '*.dart2js.*' -o \
  -name '*.min.*' -o \
  -name '*.wasm*' -o \
  -name '*.mjs' -o \
  -name '*.js' \
\) -print -delete

for f in workers.debug.dart workers.release.dart; do
  target="$PROJECT_DIR/lib/$f"
  if [ -f "$target" ]; then
    echo "  rm $target"
    rm "$target"
  fi
done

target="$PROJECT_DIR/lib/models/echo_message.g.dart"
if [ -f "$target" ]; then
  echo "  rm $target"
  rm "$target"
fi

for f in echo_worker.g.dart echo_worker.worker.dart echo_worker.worker.js.dart echo_worker.worker.vm.dart; do
  target="$PROJECT_DIR/lib/workers/$f"
  if [ -f "$target" ]; then
    echo "  rm $target"
    rm "$target"
  fi
done

echo "Done."
