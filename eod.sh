#!/bin/bash

cd ~/Progress06/ || { echo "grind repo not found at ~/grind"; exit 1; }

git add .

if git diff --cached --quiet; then
  echo "nothing to commit today."
  exit 0
fi

DATE=$(date +"%d %b %Y")
git commit -m "grind: $DATE"
git push

echo "pushed. good night."
