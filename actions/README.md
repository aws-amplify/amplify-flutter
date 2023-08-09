# AFT Actions

Dart wrapper for the GitHub Actions Node.js modules and Dart-based GitHub Actions for internal Amplify Flutter use.

> This package is largely based on https://github.com/dart-lang/setup-dart

## Creating a Composite Action

A composite action consists of two files:
- `bin/<action-name>.dart`: The entrypoint of the action
- `bin/<action-name>.yaml`: The `action.yaml` file of the action which specifies the inputs

Create both of these files to register a new action with name `action-name`. When building, the action will be compiled
and copied to `.github/composite_actions/<action-name>`.

## Building

Building requires a dev release of the Dart compiler.

To build, run `tool/build.dart`.
