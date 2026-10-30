#!/bin/bash

gh api \
  --method PUT \
  repos/a00046034-eng/lab6/collaborators/alexiakatambay12 \
  -f permission=push
