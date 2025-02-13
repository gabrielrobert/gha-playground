#!/bin/bash
set -e

if [ -n "$GITHUB_REF" ]; then
  # If GITHUB_REF ends with -preview-env, extract the PR number
  if [[ $GITHUB_REF == *"-preview-env" ]]; then
    # If the GITHUB_REF starts with a number, extract the PR number
    PR_NUMBER=$(echo $GITHUB_REF | sed -n 's/.*\/\([0-9]*\)-preview-env/\1/p')
  fi
  echo "PR_NUMBER=$PR_NUMBER" >>$GITHUB_ENV
else
  echo "NO GITHUB_REF"
fi
