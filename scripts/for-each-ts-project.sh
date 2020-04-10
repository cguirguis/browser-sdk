#!/bin/bash

set -euo pipefail

PROJECTS=(
  .
  test/e2e/scenario
  test/app
)


for project in "${PROJECTS[@]}"; do
  script="${*/\{\}/$project}"
  echo "Running $script"
  eval "$script"
done
