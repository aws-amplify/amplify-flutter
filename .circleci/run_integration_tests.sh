#!/bin/bash

cd packages || exit

passed_plugins=()
failed_plugins=()
skipped_plugins=()
devices=("sdk" "iPhone") # list of flutter device identifiers where all integration tests will run

set +e
set -o pipefail

for plugin_dir in */; do
    # Do not expect integration tests in interface packages.
    if [[ $plugin_dir == *"_interface"* ]]; then
      continue
    fi

    cd "$plugin_dir" || exit
    plugin=$(basename "$plugin_dir")

    if [ -d "example/integration_test" ]; then
        echo "===Running integration tests for $plugin==="
        cd example
        
        for device in "${devices[@]}"
        do
          drive_options=( --driver=test_driver/integration_test.dart --target=integration_test/main_test.dart -d $device )
          # auth tests require environmental variables passed to --dart-define
          if [[ $plugin == "amplify_auth_cognito" ]]; then
            drive_options+=( --dart-define=TEST_COGNITO_USERNAME=$TEST_COGNITO_USERNAME --dart-define=TEST_COGNITO_PASSWORD=$TEST_COGNITO_PASSWORD )
          fi

          if flutter drive "${drive_options[@]}" ; then
            tput setaf 2 # green
            echo "$plugin $device integration tests passed"
            tput sgr0
            passed_plugins+=("$plugin,$device")
          else
            tput setaf 1 # red
            echo "$plugin $device integration tests failed"
            tput sgr0
            failed_plugins+=("$plugin,$device")
          fi
        done

        cd ..
    else
      echo "SKIPPED: integration tests for $plugin don't exist. Skipping."
      skipped_plugins+=("$plugin")
    fi

    cd ..
    echo
done

cd ..
set -e

exit ${#failed_plugins[@]}
