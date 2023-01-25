#!/usr/bin/env bash
set -eo pipefail

pushd $@
fvm use local
dart pub global activate fvm
fvm flutter pub get
fvm flutter test -d macos integration_test/main_test.dart
popd
