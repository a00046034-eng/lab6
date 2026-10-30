#!/bin/bash
set -e

gh pr merge 3 \
  --repo a00046034-eng/lab6 \
  --merge

echo "Checking pull request status..."

gh pr view 3 \
  --repo a00046034-eng/lab6 \
  --json state,mergedAt
