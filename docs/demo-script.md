# Live Demo Script (GitKraken)

> Keep this open during your session.

## 1) Overview (1 min)
- Open the repo in GitKraken. Show the **graph** with `main`, `develop`, `feature/*`, `release/1.0.0`, `hotfix/1.0.1`, and annotated **tags**.
- Explain you used simple scripts to create a realistic history.

## 2) Commit Graph & GitFlow (2–3 mins)
- Filter by branch `develop` and toggle tag visibility.
- Show branch creation dialog and the GitFlow dropdown (if enabled).
- Open a couple of commits to show **diffs** and commit metadata.

## 3) Interactive Rebase & Squash (2–3 mins)
- Checkout `feature/ui-overhaul` and open **Rebase** in GitKraken.
- Squash/fixup the “WIP” commits into a single clean commit.
- Force-push the branch (if prompted). Point out safety checks.

## 4) Cherry-pick & Revert (2 mins)
- Cherry-pick the commit “fix: rounding error in pricing table” onto `release/1.0.0`.
- Revert the commit “feat: experimental dark mode” and show GitKraken’s revert UI.

## 5) Conflicts & Resolution (3 mins)
- Merge `feature/pricing` into `develop` to trigger conflicts (the script prepared it).
- Use GitKraken’s **merge tool** to choose ours/theirs and edit inline.
- Complete the merge and push.

## 6) Partial staging & Stash (2 mins)
- Open `src/home.md` and make a small change in your editor, then **stage hunks** selectively inside GitKraken.
- Save remaining changes as a **stash**, name it “WIP home tweaks”; apply and drop it to show the flow.

## 7) Submodules (2 mins)
- Expand `submodules/ui-lib` and show the pinned SHA.
- Update submodule to a new commit (GitKraken UI), commit the submodule pointer change.

## 8) LFS (optional, 1 min)
- Show LFS-tracked files in `media/` (GitKraken indicates LFS).

Finish by showing the clean graph after rebase & merges.
