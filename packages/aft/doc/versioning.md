# Versioning Algorithm

The `aft version` command uses Git history + [conventional commit](https://www.conventionalcommits.org/en/v1.0.0/) formatting to determine a suitable next version for a package along with the required changes for depending packages.

1. Let `packages` be the set of all packages in the repo which are publishable to `pub.dev`.
2. For every package `P` in `packages`:
   1. Let `baseRef` be the commit of the last release of `P` (defaults to the latest tag).
   2. Let `headRef` be the releaseable commit of `P` (defaults to `HEAD`).
   3. Let `history` be the list of git commits in the range `baseRef..headRef` which affected `P`, i.e. those commits which included changes to files in `P`.
   4. Let `nextVersion = currentVersion`.
   5. For each `commit` in `history`:
      1. If `commit` is a version bump (i.e. `chore(version)`) or a merge commit, ignore it.
      2. If `commit` is a breaking change (i.e. `feat(auth)!`), set `isBreakingChange = true`.
      3. If `commit` is a noteworthy change (scope of `feat`/`fix` or breaking change), set `includeInChangelog = true`.
      4. 
