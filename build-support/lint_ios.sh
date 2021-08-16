#!/bin/bash

if [ -z "$AMPLIFY_FLUTTER_ROOT" ]; then
    echo "Must set AMPLIFY_FLUTTER_ROOT" >&2
    exit 1
fi

SWIFT_VERSION="5.0"

flutter build ios --simulator --config-only
ios/Pods/SwiftFormat/CommandLineTool/swiftformat --config "$AMPLIFY_FLUTTER_ROOT/.swiftformat" --swiftversion "$SWIFT_VERSION" --lint ../ios
ios/Pods/SwiftLint/swiftlint --config "$AMPLIFY_FLUTTER_ROOT/.swiftlint.yml" --path ../ios