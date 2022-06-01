#!/bin/bash

cd packages || exit

test_failure=0
# TODO: FIND OUT WHY ARGS ARE SENT OUT OF ORDER
test_suite=$1
plugin=$3
project_root_dir=$2

dummy_file_path=example/lib/amplifyconfiguration.dart
category_dir=$(echo $plugin | cut -d'_' -f 2)
if [[ "$plugin" =~ "amplify_flutter" ]]; then
    category_dir="amplify" 
fi

set +e
set -o pipefail

# Check for federated plugin structure
if [ -d "${category_dir}" ]; then
    cd "./${category_dir}/"
fi
cd "./$plugin"

case $test_suite in
    flutter-test)
        echo "=== Running Flutter unit tests for $plugin ==="
        
        # Navigate into the app-facing plugin for federated plugin structures
        if [ -d "${plugin}" ]; then
            cd "./${plugin}"
        fi
        if [ -d "test" ]; then
            mkdir -p test-results
            if flutter test --machine --coverage | tojunit --output "test-results/$plugin-flutter-test.xml"; then
                echo "PASSED: Flutter unit tests for $plugin passed."
            else
                echo "FAILED: Flutter unit tests for $plugin failed."
                test_failure=1
            fi
        else
            echo "FAILED: Expected Flutter unit tests for $plugin don't exist or where not found."
            test_failure=1
        fi
        cd $project_root_dir
        ;;

    android-test)
        echo "=== Running Android unit tests for $plugin ==="       
        
        if [ -d "android/src/test" ]; then
            if [ ! -d "example/android" ]; then
                echo "FAILED: example/android missing, can't run tests."
                test_failure=1
                continue
            fi
            if [ ! -f $dummy_file_path ]; then
                cp ${project_root_dir}/.circleci/dummy_amplifyconfiguration.dart $dummy_file_path
            fi
            cd example/android
            if ./gradlew :"$plugin":testDebugUnitTest; then
                echo "PASSED: Android unit tests for $plugin passed."
                # if ./gradlew :"$plugin":testDebugUnitTestCoverage; then
                #     echo "PASSED: Generating android unit tests coverage for $plugin passed."
                # else
                #     echo "FAILED: Generating android unit tests coverage for $plugin failed."
                #     test_failure=1
                # fi
            else
                echo "FAILED: Android unit tests for $plugin failed."
                test_failure=1
            fi
            cd ${project_root_dir}

        else
            echo "FAILED: Expected Android unit tests for $plugin don't exist or where not found."
            test_failure=1
        fi
        ;;
    ios-test)
        echo "=== Running iOS unit tests for $plugin ==="
        
        # Navigate into the iOS plugin for federated plugin structures
        if [ -d "example/ios/unit_tests" ]; then
            XCODEBUILD_DESTINATION="platform=iOS Simulator,name=iPhone 13,OS=latest"
            if [ ! -f $dummy_file_path ]; then
                cp ${project_root_dir}/.circleci/dummy_amplifyconfiguration.dart $dummy_file_path
            fi
            cd example/ios
            if xcodebuild test \
                    -workspace Runner.xcworkspace \
                    -scheme Runner \
                    -destination "$XCODEBUILD_DESTINATION" | xcpretty \
                    -r "junit" \
                    -o "test-results/$plugin-xcodebuild-test.xml"; then
                echo "PASSED: iOS unit tests for $plugin passed."
            else
                echo "FAILED: iOS unit tests for $plugin failed."
                test_failure=1
            fi
            cd ${project_root_dir}
        else
            echo "FAILED: Expected iOS unit tests for $plugin don't exist or where not found."
            test_failure=1
        fi
        ;;
esac
cd ..
echo
# done

echo "=== Unit test complete ==="
echo

cd ..

set -e

if [ $test_failure -eq 1 ]; then
    echo "${plugin} tests FAILED."
    exit 1
else
    echo "${plugin} tests PASSED."
    exit 0
fi 
