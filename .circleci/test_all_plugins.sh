#!/bin/bash

set -uo pipefail

KIND=$1
PLUGIN=$2
EXAMPLE_DIR=${3:-example}

case $KIND in
    flutter)
        echo "=== Running Flutter unit tests for $PLUGIN ==="

        if [ ! -d "test" ]; then
            echo "No tests to run"
            exit
        fi

        mkdir -p test-results
        if ! command -v tojunit >/dev/null; then
            dart pub global activate junitreport
        fi
        if flutter test --machine --coverage | tojunit --output "test-results/$PLUGIN-flutter-test.xml"; then
            echo "PASSED: Flutter unit tests for $PLUGIN passed."
        else
            echo "FAILED: Flutter unit tests for $PLUGIN failed." >&2
            exit 1
        fi
        ;;

    android)
        echo "=== Running Android unit tests for $PLUGIN ==="       

        cd $EXAMPLE_DIR
        if [ ! -d "android" ]; then
            echo "No tests to run"
            exit
        fi

        cd android
        if ./gradlew :"$PLUGIN":testDebugUnitTest; then
            echo "PASSED: Android unit tests for $PLUGIN passed."
        else
            echo "FAILED: Android unit tests for $PLUGIN failed."
            exit 1
        fi
        ;;
    
    ios)
        echo "=== Running iOS unit tests for $PLUGIN ==="

        cd $EXAMPLE_DIR
        if [ ! -d "ios/unit_tests" ]; then
            echo "No tests to run"
            exit
        fi

        cd ios
        XCODEBUILD_DESTINATION="platform=iOS Simulator,name=iPhone 14 Pro Max,OS=latest"
        if xcodebuild test \
                -workspace Runner.xcworkspace \
                -scheme Runner \
                -destination "$XCODEBUILD_DESTINATION" | xcpretty \
                -r "junit" \
                -o "test-results/$PLUGIN-xcodebuild-test.xml"; then
            echo "PASSED: iOS unit tests for $PLUGIN passed."
        else
            echo "FAILED: iOS unit tests for $PLUGIN failed." >&2
            exit 1
        fi
        ;;
esac
