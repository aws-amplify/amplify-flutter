# Amplify Flutter Repo Tool (aft)

A CLI tool for managing the Amplify Flutter repository.

## Commands

- `bootstrap`/`bs`: Sets up repo for development work
- `clean`: Cleans temporary files and build artifacts for all packages
- `deps`: Manages dependencies of all packages in the repo
  - `check`: Checks dependencies against `aft.yaml`, for use in CI
  - `update`: Updates dependency constraints in `aft.yaml` to match latest in `pub.dev`
  - `apply`: Applies dependency constraints in `aft.yaml` to all repo packages
- `generate-sdk`: Generates the AWS SDK for a given package
- `link`: Links all packages together using `pubspec_overrides.yaml`
- `list`: Lists all packages in the repo
- `pub`: Run pub commands for all packages in the repo
  - `get`: Runs `dart pub get`/`flutter pub get` for all packages
  - `upgrade`: Runs `dart pub upgrade`/`flutter pub upgrade` for all packages
  - `publish`: Runs `dart pub publish`/`flutter pub publish` for all packages which need publishing
