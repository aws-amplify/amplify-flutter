#!/usr/bin/env python3
"""Render pana score markdown as a readable ASCII terminal report."""
import re
import sys


def render(text):
    W = 72
    lines = []

    def bar(label, got, total):
        pct = got / total if total else 0
        filled = int(pct * 20)
        return f"  {label:<45} [{'█' * filled + '░' * (20 - filled)}] {got}/{total}"

    lines.append("=" * W)
    lines.append("  PACKAGE SCORE REPORT".center(W))
    lines.append("=" * W)

    m = re.search(r'Points:\s*(\d+)\s*/\s*(\d+)', text)
    if m:
        got, total = int(m.group(1)), int(m.group(2))
        lines.append(f"\n  Total: {got} / {total} points")
        lines.append(bar("Overall", got, total))
        lines.append("")

    for sm in re.finditer(r'^## (✓|✗)\s+(.+?)\s*\((\d+)\s*/\s*(\d+)\)', text, re.M):
        icon = "✓" if sm.group(1) == "✓" else "✗"
        name, got, total = sm.group(2), int(sm.group(3)), int(sm.group(4))
        lines.append("-" * W)
        lines.append(f"  {icon}  {name}")
        lines.append(bar(name, got, total))

        sec_start = sm.end()
        sec_end = text.find("\n## ", sec_start)
        if sec_end == -1:
            sec_end = len(text)
        section = text[sec_start:sec_end]

        for sub in re.finditer(r'^### \[(.)\]\s+(\d+)/(\d+) points:\s+(.+)', section, re.M):
            mark = sub.group(1)
            sg, st, label = int(sub.group(2)), int(sub.group(3)), re.sub(r'\*\*([^*]+)\*\*', r'\1', sub.group(4))
            sym = {"*": "✓", "x": "✗", "~": "~"}.get(mark, mark)
            lines.append(f"    {sym} {sg:>2}/{st:<2}  {label}")

        if "platform" in name.lower():
            if re.search(r'\*\*WASM-ready:\*\*', section):
                lines.append("    ✓  WASM compatible")
            elif re.search(r'not WASM-compatible', section):
                lines.append("    ✗  WASM not compatible (partial Web score)")

    lines.append("-" * W)

    issues = re.findall(
        r'The constraint `([^`]+)` on (\w+) does not support the stable version `([^`]+)`', text
    )
    if issues:
        lines.append(f"\n  ⚠  Dependency issues ({len(issues)}):")
        for constraint, pkg, ver in issues:
            lines.append(f"    • {pkg}: {constraint} doesn't support {ver}")

    lines.append("")
    print("\n".join(lines))


if __name__ == "__main__":
    path = sys.argv[1] if len(sys.argv) > 1 else "score.md"
    render(open(path).read())
