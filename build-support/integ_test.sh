#!/bin/bash

DEFAULT_DEVICE_ID="sdk"
DEFAULT_ENABLE_CLOUD_SYNC="true"
DEFAULT_RETRIES=0
DEFAULT_SMALL="false"

while [ $# -gt 0 ]; do
    case "$1" in
        -d|--device-id)
            deviceId="$2"
            ;;
        -ec|--enable-cloud-sync)
            case "$2" in
                true|false)
                    enableCloudSync="$2"
                ;;
                *)
                    echo "Invalid value for $1"
                    exit 1
            esac
            ;;
        --retries)
            retries="$2"
            ;;
        *)
            echo "Invalid arguments"
            exit 1
    esac
    shift
    shift
done

deviceId=${deviceId:-$DEFAULT_DEVICE_ID}
enableCloudSync=${enableCloudSync:-$DEFAULT_ENABLE_CLOUD_SYNC}
retries=${retries:-$DEFAULT_RETRIES}
small=${small:-$DEFAULT_SMALL}

if [[ "$OSTYPE" == "linux-gnu"* && $deviceId == "linux"* ]]; then
    sudo apt-get update -y
    sudo apt-get install -y ninja-build libgtk-3-dev libsecret-1-dev libglib2.0-dev gnome-keyring network-manager

    if [ -n $CI ]; then
        # Headless tests require virtual display for the linux tests to run.
        # from https://github.com/fluttercommunity/plus_plugins/blob/main/.github/workflows/scripts/integration-test.sh
        export DISPLAY=:99
        sudo Xvfb -ac :99 -screen 0 1280x1024x24 > /dev/null 2>&1 &
        # Needed for WebSocket connections in API GraphQL subscriptions.
        sudo systemctl start NetworkManager.service

        # Set up keyring.
        echo 'password' | gnome-keyring-daemon --start --replace --daemonize --unlock
    fi
fi

declare -a testsList
declare -a resultsList

TARGET=integration_test/main_test.dart
if [ ! -e $TARGET ]; then
    echo "$TARGET file not found" >&2
    exit
fi

if [ -n $CI ]; then
    flutter pub get
fi

testsList+=("$TARGET")
# Run tests with retry.
n=0
until [ "$n" -gt $retries ]
do
    if [[ $deviceId = "web-server" ]] && flutter drive \
        --driver=test_driver/integration_test.dart \
        --target=$TARGET \
        -d web-server
    then
        resultsList+=(0)
        break
    elif flutter test \
        --no-pub \
        -d $deviceId \
        -v \
        $TARGET;
    then
        resultsList+=(0)
        break
    else
        n=$((n+1))
        echo "Integration test failed on attempt: $n"
        if [ "$n" -gt $retries ]
        then
            resultsList+=(1)
        else
            echo "Retrying..."
        fi
    fi
done

TEST_ENTRIES="integration_test/separate_integration_tests/*.dart"
# For small option (summarized) just test basic cloud operation.
if [ $small == "true" ]
then
  TEST_ENTRIES="integration_test/separate_integration_tests/basic_model_operation_test.dart"
fi

for ENTRY in $TEST_ENTRIES; do
    if [ ! -f "${ENTRY}" ]; then
        continue
    fi
    testsList+=("$ENTRY")
    if [ $enableCloudSync == "true" ]; then
        echo "Run $ENTRY WITH API Sync"
    else
        echo "Run $ENTRY WITHOUT API Sync"
    fi

    # Run tests with retry.
    n=0
    until [ "$n" -gt $retries ]
    do
        if [[ $deviceId = "web-server" ]] && flutter drive \
            --driver=test_driver/integration_test.dart \
            --dart-define ENABLE_CLOUD_SYNC=$enableCloudSync \
            --target=$ENTRY \
            -d web-server
        then
            resultsList+=(0)
            break
        elif flutter test \
            --no-pub \
            --dart-define ENABLE_CLOUD_SYNC=$enableCloudSync \
            -d $deviceId \
            $ENTRY;
        then
            resultsList+=(0)
            break
        else
            n=$((n+1))
            echo "Integration test failed on attempt: $n"
            if [ "$n" -gt $retries ]
            then
                resultsList+=(1)
            else
                echo "Retrying..."
            fi
        fi
    done
done

testFailure=0
for i in "${!testsList[@]}"; do
    if [ "${resultsList[i]}" == 0 ]; then
        echo "✅ ${testsList[i]}"
    else
        testFailure=1
        echo "❌ ${testsList[i]}"
    fi
done

exit $testFailure
