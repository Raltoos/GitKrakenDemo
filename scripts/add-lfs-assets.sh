#!/usr/bin/env bash
set -euo pipefail
if ! command -v git-lfs >/dev/null 2>&1; then
  echo "git-lfs not found. Install with: brew install git-lfs && git lfs install"
  exit 0
fi

git lfs install

mkdir -p media
dd if=/dev/urandom of=media/hero.png bs=1024 count=200 >/dev/null 2>&1
dd if=/dev/urandom of=media/intro.mp4 bs=1024 count=1000 >/dev/null 2>&1

git add .gitattributes media/hero.png media/intro.mp4
git commit -m "chore(lfs): track media assets via LFS"

echo "LFS assets added. GitKraken will show LFS badges on these files."
