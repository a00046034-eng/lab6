#!/bin/bash

REPO="a00046034-eng/lab6"
COLLAB="pearse1104"

echo "Checking pending invitations..."
gh api "repos/$REPO/invitations" \
  --jq '.[].invitee.login'

echo "Checking collaborator access..."
gh api "repos/$REPO/collaborators/$COLLAB/permission" \
  --jq '{user: .user.login, permission: .permission}'\
