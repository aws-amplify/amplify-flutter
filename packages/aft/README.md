# Amplify Flutter Repo Tool (aft)

A CLI tool for managing the Amplify Flutter repository.

## Commands

- `bootstrap`/`bs`: Sets up repo for development work
- `clean`: Cleans temporary files and build artifacts for all packages
- `deps check`: Checks dependencies of all packages against `aft.yaml`
- `generate-sdk`: Generates the AWS SDK for a given package
- `link`: Links all packages together using `pubspec_overrides.yaml`
- `list`: Lists all packages in the repo
- `pub`: Run pub commands for all packages in the repo
  - `get`: Runs `dart pub get`/`flutter pub get` for all packages
  - `upgrade`: Runs `dart pub upgrade`/`flutter pub upgrade` for all packages
  - `publish`: Runs `dart pub publish`/`flutter pub publish` for all packages which need publishing
- `test`: Runs unit and integration tests.
  - `unit`: Runs unit tests for the current directory, e.g.
    - `aft test unit` (same as `dart`/`flutter test`)
    - `aft test unit -- -p chrome` (arguments after `--` are passed to test command)
  - `integ`: Runs integration tests for the current directory's package, e.g.
    - `aft test integ` (to get an interactive device selector)
    - `aft test integ -d iPhone` (to specify a device)
    - `aft test integ -d sdk -- integration_test/sign_in_test.dart` (to specify a device and entrypoint)
