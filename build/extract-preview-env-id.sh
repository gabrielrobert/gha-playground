#!/bin/bash
set -e

GITHUB_REF="refs/pull/1/merge"

PR_NUMBER=$(echo $GITHUB_REF | sed -n 's/.*\/\([0-9]*\)-preview-env/\1/p')
echo "PR_NUMBER: $PR_NUMBER"

ISSUE_NUMBER=$(echo $GITHUB_REF | sed -n 's/.*\/\([0-9]*\)-preview-env/\1/p')
echo "ISSUE_NUMBER: $ISSUE_NUMBER"

## Get the github.event.pull_request.number
PR_NUMBER=$(jq --raw-output .pull_request.number "$GITHUB_EVENT_PATH")
