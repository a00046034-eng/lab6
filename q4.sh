#!/bin/bash
set -e

REPO="a00046034-eng/lab6"
COLLAB="pearse1104"

echo "Removing collaborator..."
gh api --method DELETE \
  "repos/$REPO/collaborators/$COLLAB"

echo "Checking access after removal..."
gh api "repos/$REPO/collaborators/$COLLAB" \
  --include
