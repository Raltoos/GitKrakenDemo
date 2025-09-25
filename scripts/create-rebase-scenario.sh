#!/usr/bin/env bash
set -euo pipefail
echo "Creating messy history for rebase/squash on feature/ui-overhaul..."

git checkout feature/ui-overhaul

# create multiple small commits to squash
for msg in "WIP layout tweaks" "WIP header spacing" "WIP footer spacing" "docs: update readme note" ; do
  echo "// $msg" >> src/ui/theme.css
  git add src/ui/theme.css
  git commit -m "$msg"
done

# create a bugfix commit we want to cherry-pick later
echo "// bugfix: rounding error note" >> src/pricing.ts
git add src/pricing.ts
git commit -m "fix: rounding error in pricing table"

echo "Rebase scenario ready. Open GitKraken -> Rebase to squash WIPs into one."
