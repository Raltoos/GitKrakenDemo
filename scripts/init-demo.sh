#!/usr/bin/env bash
set -euo pipefail
echo "Initializing git repo and rich history..."
git init
git config user.name "Demo User"
git config user.email "demo@example.com"

# initial commit on main
git add .
git commit -m "feat: initial project scaffold"
git branch -M main

# create develop and a couple of tags
git checkout -b develop
echo "// version file" > VERSION.ts
git add VERSION.ts
git commit -m "chore: add VERSION.ts"
git tag -a v0.1.0 -m "v0.1.0"

# feature branch with multiple WIP commits
git checkout -b feature/ui-overhaul
echo "/* new button styles */" >> src/ui/theme.css
git add -A
git commit -m "feat(ui): add button styles (WIP)"
echo "/* new spacing scale */" >> src/ui/theme.css
git add -A
git commit -m "refactor(ui): adjust spacing (WIP)"
echo "/* dark mode experiment */" >> src/ui/theme.css
git add -A
git commit -m "feat(ui): experimental dark mode"

# back to develop and merge another minor change
git checkout develop
echo "export const VERSION='0.1.0';" >> VERSION.ts
git add VERSION.ts
git commit -m "chore: version constant"

# create release and hotfix branches for GitFlow visuals
git checkout -b release/1.0.0
echo "export const VERSION='1.0.0-rc1';" > VERSION.ts
git add VERSION.ts
git commit -m "chore(release): prepare 1.0.0-rc1"

git checkout -b hotfix/1.0.1 main
echo "hotfix note" > HOTFIX.md
git add HOTFIX.md
git commit -m "fix: urgent hotfix note"

echo "Repo initialized. Open in GitKraken to see the graph."
