#!/bin/bash

set -o errexit -o nounset -o pipefail
IFS=$'\n\t'

DIRECTORY="${1:-"grafana/dashboards"}"

while IFS= read -r -d '' file; do
  JQ_OUTPUT="$(jq . "$file" 2>&1)"
  errcode=$?
  if [[ $errcode == 0 ]]; then
    echo "✅ Valid JSON: $file"
  else
    echo "::error::❌ Invalid JSON: $file"
    echo "::group::$file"
    #echo "$JQ_OUTPUT"
    echo "::endgroup::"
  fi
done < <(find "$DIRECTORY" -name "*.json" -not -name "_folder.json" -print0)
