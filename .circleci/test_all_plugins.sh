#!/bin/bash

cd packages || exit

failed_plugins=()
skipped_plugins=()

set +e

for plugin_dir in */; do
    cd "$plugin_dir" || exit
    plugin=$(basename "$plugin_dir")
    case $1 in
        flutter-test)
            echo "=== Running Flutter unit tests for $plugin ==="
            if [ -d "test" ]; then
                flutter test
                if [ $? -ne 0 ]; then
                    echo "FAILED: Flutter unit tests for $plugin failed."
                    failed_plugins+=($plugin)
                fi
            else
                echo "Android unit tests for $plugin don't exist. Skipping."
                skipped_plugins+=($plugin)
            fi
            ;;
        android-test)
            echo "=== Running Android unit tests for $plugin ==="
            if [ -d "android/src/test" ]; then
                cd example/android || continue
                flutter build apk
                ./gradlew testDebugUnitTest --info
                if [ $? -ne 0 ]; then
                    echo "FAILED: Android unit tests for $plugin failed."
                    failed_plugins+=($plugin)
                fi
                cd ../..
            else
                echo "Android unit tests for $plugin don't exist. Skipping."
                skipped_plugins+=($plugin)
            fi
            ;;
        ios-test)
            echo "=== Running iOS unit tests for $plugin ==="
            if [ -d "ios/Tests" ]; then
                XCODEBUILD_DESTINATION="platform=iOS Simulator,name=iPhone 11,OS=13.6"
                cd example/ios || continue
                flutter build ios --no-codesign
                xcodebuild test -workspace Runner.xcworkspace -scheme Runner -destination "$XCODEBUILD_DESTINATION"
                if [ $? -ne 0 ]; then
                    echo "FAILED: iOS unit tests for $plugin failed."
                    failed_plugins+=($plugin)
                fi
                cd ../..
            else
                echo "iOS unit tests for $plugin don't exist. Skipping."
                skipped_plugins+=($plugin)
            fi
            ;;
    esac
    cd ..
    echo
done

echo "=== Unit test complete ==="
echo "${#failed_plugins[@]} failed plugins:"
echo $failed_plugins
echo
echo "${#skipped_plugins[@]} skipped plugins:"
echo $skipped_plugins

cd ..

set -e

return ${#failed_plugins[@]}
