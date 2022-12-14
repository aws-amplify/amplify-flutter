# Versioning Algorithm

The `aft version` command uses Git history + [conventional commit](https://www.conventionalcommits.org/en/v1.0.0/) formatting to determine a suitable next version for a package along with the required changes for depending packages.

1. Let `packages` be the set of all packages in the repo which are publishable to `pub.dev`.
2. For every package `P` in `packages`:
   1. Let `component` be the component of `P`, if any.
   2. Let `baseRef` be the commit of the last release of `P`.
   3. Let `headRef` be the releaseable commit of `P` (defaults to `HEAD`).
   4. Let `history` be the list of git commits in the range `baseRef..headRef` which affected `P`, i.e. those commits which included changes to files in `P`.
   5. Let `nextVersion = currentVersion`.
   6. For each `commit` in `history`:
      1. If `commit` is a version bump (i.e. `chore(version)`), ignore it.
      2. If `commit` is a merge commit, update dependencies based on the packages changed by the commit.
         1. The thinking here is that PRs should either be squashed into a single commit or merged as a set of independent commits capped off by a merge commit. The independent commits are isolated changes which are used to update changelogs and bump versions. The merge commit is then used solely for associating previous commits and updating constraints accordingly.
      3. If `commit` is a breaking change (i.e. `feat(auth)!`), set `bumpType = breaking`.
         1. else if `commit`'s type is `feat`, set `bumpType = nonBreaking`.
         2. else, set `bumpType = patch`.
      4. If `commit` is a noteworthy change (scope is one of `feat`, `fix`, `bug`, `perf`, or `revert` or it's a breaking change), set `includeInChangelog = true`.
      5. Let `proposedVersion = currentVersion.bump(bumpType)`
      6. Let `nextVersion = max(nextVersion, proposedVersion)`
      7. If `nextVersion > currentVersion`:
         1. Update `pubspec.yaml`, set `version = nextVersion`
         2. If `includeInChangelog`:
            1. Update `CHANGELOG.md` with an entry for `commit`.
         3. If `bumpType == breaking`:
            1. For every package `Q` which directly depends on `P`:
               1. Bump the version of `Q` with `bumpType = patch` and `includeInChangelog = false`.
               2. Update `Q`'s constraint on `P`.
         4. If `bumpType == breaking` or `bumpType == nonBreaking` and `component != null`:
            1. For every package `Q` in `component`:
               1. Bump the version of `Q` with the same `bumpType` as `P` and `includeInChangelog = false`.
      8. If `component` has a summary package:
         1. Update `CHANGELOG.md` in the summary package with `commit`.
      9. For every package `Q` which was affected by `commit`:
         1. Update `Q`'s constraint on `P` using `nextVersion`.
