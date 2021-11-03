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

# Use xcodebuild if 'RunnerTests' scheme exists, else `flutter test`
if xcodebuild -workspace ios/Runner.xcworkspace -list -json | jq -e '.workspace.schemes | index("RunnerTests")' >/dev/null; then
    # Build app for testing
    flutter build ios --no-pub --config-only --simulator --target=$TARGET
    
    xcodebuild \
        -workspace ios/Runner.xcworkspace \
        -scheme RunnerTests \
        -destination "platform=iOS Simulator,name=iPhone 12 Pro Max" \
        test
else
    flutter test \
        --no-pub \
        -d iPhone \
        $TARGET
fi
