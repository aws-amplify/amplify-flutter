## aft version-bump tests

This directory contains tests for `aft version-bump`.

The tests in this directory are snapshot tests. They take a given input (a copy of the Amplify Flutter repo + a series of commits) and generate an output (aka snapshot) which is compared against an expected output.

The generated output is a diff that is generated from running `aft version-bump` after applying the commits in the given test.

The tests are not run against the actual Amplify Flutter repo since this would require updating the tests after each release. Instead tests are run against a copy of the Amplify Flutter repo located in `packages/aft/test/version_bump/data/repo_snapshot`. This snapshot only contains the files required to run and test the version bump script, which include only the `pubspec.yaml` files and `changelog.md` files from packages published to pub. To update the Amplify Flutter monorepo copy run `./tool/repo_snapshot.sh` from the `packages/aft` directory.

> **Note:** The `pubspec.yaml` fixtures in `repo_snapshot` are stored with a `.snapshot` suffix (e.g. `pubspec.yaml.snapshot`). They reuse the real published package names, so without the suffix pub.dev/pana repository verification — which clones the full git tree and scans for files named `pubspec.yaml` — fails with `Repository has multiple matching pubspec.yaml with name: X`. The suffix is stripped when the temp repo is materialized (see `copyDirectory` in `version_bump_test.dart`), so the test input is unchanged. `repo_snapshot.sh` writes the suffix when regenerating the snapshot.

The expected outputs/snapshots are diffs stored in `.diff` files in `packages/aft/test/version_bump/data/snapshots`. To regenerate them run `dart --define=generate-snapshots=true test ./test/version_bump/version_bump_test.dart --use-data-isolate-strategy` from `packages/aft`. Note: `--use-data-isolate-strategy` is a workaround for https://github.com/dart-lang/test/issues/1794.
