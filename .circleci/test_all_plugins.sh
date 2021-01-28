#!/bin/bash

cd packages || exit

passed_plugins=()
failed_plugins=()
skipped_plugins=()

set +e
set -o pipefail

for plugin_dir in */; do
    cd "$plugin_dir" || exit
    plugin=$(basename "$plugin_dir")
    case $1 in
        flutter-test)
            echo "=== Running Flutter unit tests for $plugin ==="
            if [ -d "test" ]; then
                mkdir -p test-results
                if flutter test --machine --coverage | tojunit --output "test-results/$plugin-flutter-test.xml"; then
                    echo "PASSED: Flutter unit tests for $plugin passed."
                    passed_plugins+=("$plugin")
                else
                    echo "FAILED: Flutter unit tests for $plugin failed."
                    failed_plugins+=("$plugin")
                fi
            else
                echo "SKIPPED: Flutter unit tests for $plugin don't exist. Skipping."
                skipped_plugins+=("$plugin")
            fi
            ;;
        android-test)
            echo "=== Running Android unit tests for $plugin ==="
            if [ -d "android/src/test" ]; then
                if [ ! -d "example/android" ]; then
                    echo "FAILED: example/android missing, can't run tests."
                    failed_plugins+=("$plugin")
                    continue
                fi
                cp ../../.circleci/dummy_amplifyconfiguration.dart example/lib/amplifyconfiguration.dart
                cd example/android

                if ./gradlew :"$plugin":testDebugUnitTest; then
                    echo "PASSED: Android unit tests for $plugin passed."
                    if ./gradlew :"$plugin":testDebugUnitTestCoverage; then
                        echo "PASSED: Generating android unit tests coverage for $plugin passed."
                        passed_plugins+=("$plugin")
                    else
                        echo "FAILED: Generating android unit tests coverage for $plugin failed."
                        failed_plugins+=("$plugin")
                    fi
                else
                    echo "FAILED: Android unit tests for $plugin failed."
                    failed_plugins+=("$plugin")
                fi
                cd ../..
            else
                echo "SKIPPED: Android unit tests for $plugin don't exist. Skipping."
                skipped_plugins+=("$plugin")
            fi
            ;;
        ios-test)
            echo "=== Running iOS unit tests for $plugin ==="
            if [ -d "example/ios/unit_tests" ]; then
                XCODEBUILD_DESTINATION="platform=iOS Simulator,name=iPhone 11,OS=14.2"
                cp ../../.circleci/dummy_amplifyconfiguration.dart example/lib/amplifyconfiguration.dart
                cd example/ios
                if xcodebuild test \
                        -workspace Runner.xcworkspace \
                        -scheme Runner \
                        -destination "$XCODEBUILD_DESTINATION" | xcpretty \
                        -r "junit" \
                        -o "test-results/$plugin-xcodebuild-test.xml"; then
                    echo "PASSED: iOS unit tests for $plugin passed."
                    passed_plugins+=("$plugin")
                else
                    echo "FAILED: iOS unit tests for $plugin failed."
                    failed_plugins+=("$plugin")
                fi
                cd ../..
            else
                echo "SKIPPED: iOS unit tests for $plugin don't exist. Skipping."
                skipped_plugins+=("$plugin")
            fi
            ;;
    esac
    cd ..
    echo
done

echo "=== Unit test complete ==="
echo

echo "${#passed_plugins[@]} passed plugins:"
printf "* %s\n" "${passed_plugins[@]}"
echo

echo "${#failed_plugins[@]} failed plugins:"
printf "* %s\n" "${failed_plugins[@]}"
echo

echo "${#skipped_plugins[@]} skipped plugins:"
printf "* %s\n" "${skipped_plugins[@]}"
echo

cd ..

set -e

exit ${#failed_plugins[@]}
