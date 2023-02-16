# Amplify Flutter Repo Tool (aft)

A CLI tool for managing the Amplify Flutter repository.

## Commands

- `bootstrap`/`bs`: Sets up repo for development work
- `clean`: Cleans temporary files and build artifacts for all packages
- `create`: Creates new Amplify packages and plugins
- `deps`: Manages dependencies of all packages in the repo
  - `check`: Checks dependencies against `aft.yaml`, for use in CI
  - `update`: Updates dependency constraints in `aft.yaml` to match latest in `pub.dev`
  - `apply`: Applies dependency constraints in `aft.yaml` to all repo packages
- `exec`: Execute a command in all repo packages
- `generate`: Generates various repo items
  - `workflows`: Generates GitHub actions workflows for all packages in the repo
- `link`: Links all packages together using `pubspec_overrides.yaml`
- `list`: Lists all packages in the repo
- `publish`: Runs `dart pub publish`/`flutter pub publish` for all packages which need publishing
- `version-bump`: Bumps version using git history

## Setup

To run some commands, `libgit2` is required and can be installed with the following commands:

```sh
$ brew install libgit2
```

```sh
$ sudo apt-get install libgit2-dev
```

To activate `aft`, run:

```sh
$ dart pub global activate -spath packages/aft
```

A full list of available commands and options can be found by running `aft --help`.
