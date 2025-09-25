#!/usr/bin/env bash
set -euo pipefail
echo "Setting up a tiny submodule (submodules/ui-lib) ..."

mkdir -p submodules
pushd submodules >/dev/null
  mkdir ui-lib && cd ui-lib
  git init
  git config user.name "Demo User"
  git config user.email "demo@example.com"
  echo "export const button='rounded-xl';" > index.ts
  git add index.ts
  git commit -m "feat: initial ui-lib"
  echo "export const text='sm';" >> index.ts
  git commit -am "feat: add text size"
  LIB_PATH=$(pwd)
popd >/dev/null

git checkout develop
git submodule add ./submodules/ui-lib submodules/ui-lib
git commit -m "chore: add ui-lib as submodule"

echo "Submodule added. You can update it and commit the pointer change in GitKraken."
