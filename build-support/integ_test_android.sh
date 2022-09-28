#!/bin/bash

if [ ! -d android ]; then
    echo "No Android project to test" >&2
    exit
fi

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

declare -a testsList
declare -a resultsList

TARGET=integration_test/main_test.dart
if [ ! -e $TARGET ]; then
    echo "$TARGET file not found" >&2
    exit
fi

testsList+=("$TARGET")
# Run tests with retry.
n=0
until [ "$n" -gt $retries ]
do
    if flutter test \
        --no-pub \
        -d $deviceId \
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
        if flutter test \
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
