#!/usr/bin/env bash
set -eo pipefail

pushd $@
flutter clean
flutter pub get
flutter test -d macos integration_test/startup_test.dart
popd
