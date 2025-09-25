# GitKraken Visual Demo Repo

This repository is designed to **show off GitKraken’s visual power**: beautiful commit graph, GitFlow, interactive rebase, cherry-pick, squash, revert, stashes, partial staging, conflict resolution, submodules, tags/releases, blame, file history, and LFS.

Run the one-liners below to generate a **rich history** with branches, tags, conflicts, and a submodule — then open the folder in **GitKraken** and demo away.

## TL;DR
```bash
bash scripts/init-demo.sh
bash scripts/make-conflicts.sh
bash scripts/create-rebase-scenario.sh
bash scripts/setup-submodule.sh
# Optional (if you have git lfs): 
bash scripts/add-lfs-assets.sh
```

Then open GitKraken on this repo and use `docs/demo-script.md` as your live guide.

---

## What you’ll be able to demonstrate

- **Commit graph, branches & tags**: `main`, `develop`, `feature/*`, `release/1.0.0`, `hotfix/1.0.1` with `v0.1.0`, `v1.0.0` tags.
- **Interactive rebase & squash**: clean up `feature/ui-overhaul` with squash/fixup.
- **Cherry-pick**: move bugfix commits from `feature/*` to `release/1.0.0`.
- **Revert**: revert a bad commit and show GitKraken’s revert UI.
- **Conflict resolution**: merge `feature/pricing` into `develop` to trigger a conflict.
- **Partial staging & file history**: use `src/pricing.ts` and `src/home.md`.
- **Stashes**: script leaves unstaged changes for you to stash visually.
- **Submodules**: `submodules/ui-lib` (tiny lib), show updating and pinning revisions.
- **LFS** (optional): track `media/*.png` & `media/*.mp4` to show LFS badges.

## Requirements
- git 2.35+
- bash
- (optional) git lfs (`git lfs install`)

