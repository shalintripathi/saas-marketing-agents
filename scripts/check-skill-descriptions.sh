#!/usr/bin/env bash
# Fails if any plugin skill's description is missing or over the Agent Skills limit of 1,024 characters.
set -euo pipefail
python3 - <<'PY'
import glob, re, sys
LIMIT = 1024
pattern = re.compile(r'^description:\s*"((?:[^"\\]|\\.)*)"\s*$', re.M)
bad = 0
for path in sorted(glob.glob("plugins/saas-marketing/skills/*/SKILL.md")):
    text = open(path, encoding="utf8").read()
    head = re.match(r"---\n(.*?)\n---\n", text, re.S)
    found = pattern.search(head.group(1)) if head else None
    if not found:
        print(f"FAIL {path}: no double-quoted description found")
        bad += 1
        continue
    length = len(found.group(1).replace('\\"', '"'))
    if length > LIMIT:
        print(f"FAIL {path}: {length} characters, limit is {LIMIT}")
        bad += 1
sys.exit(1 if bad else 0)
PY
echo "All skill descriptions are within 1,024 characters."
