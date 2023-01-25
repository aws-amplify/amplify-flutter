#!/usr/bin/env bash
set -eo pipefail

pushd $@
flutter pub get
flutter test -d macos integration_test/main_test.dart
popd
