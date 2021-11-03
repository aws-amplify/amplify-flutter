#!/bin/bash

set -euo pipefail

if [ ! -d ios ]; then
    echo "No iOS project to test" >&2
    exit
fi

TARGET=integration_test/main_test.dart
if [ ! -e $TARGET ]; then
    echo "$TARGET file not found" >&2
    exit
fi

# Build app for testing
flutter build ios --no-pub --config-only --simulator --target=$TARGET

# Use 'RunnerTests' scheme, if available, else use default 'Runner'
if xcodebuild -workspace ios/Runner.xcworkspace -list -json | jq -e '.workspace.schemes | index("RunnerTests")' >/dev/null; then
    SCHEME=RunnerTests
else
    SCHEME=Runner
fi

# Run tests on destination simulator
xcodebuild \
    -workspace ios/Runner.xcworkspace \
    -scheme $SCHEME \
    -destination "platform=iOS Simulator,name=iPhone 12 Pro Max" \
    test