#!/bin/bash
if [[ $(git ls-files --modified) ]]; then
  echo "Formatting issues found in the following files:"
  for f in $(git ls-files --modified); do
    echo "* $f"
    git --no-pager diff --unified=0 --minimal "$f"
    echo
  done
  if $CI; then
    git checkout . > /dev/null 2>&1
  fi
  echo "Formatting issues found in the above files."
  echo "To fix these locally, run: 'melos run format'."
  exit 1
else
  echo "No formatting issues found."
fi
