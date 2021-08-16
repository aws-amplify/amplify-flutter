#!/bin/bash
set -eu

multi_device_test () {
    # test_id is used to identify a unique test run instance to enable tests to be run in parallel
    test_id=$(uuidgen)

    # list of PIDs from parallel test runs
    testPids=()

    flutter drive \
    --no-pub \
    --driver=test_driver/integration_test.dart \
    --target=integration_test/multi_device/device_1_test.dart \
    --dart-define="test_id=$test_id" \
    -d $1 \
    & testPids+=($!)

    flutter drive \
    --no-pub \
    --driver=test_driver/integration_test.dart \
    --target=integration_test/multi_device/device_2_test.dart \
    --dart-define="test_id=$test_id" \
    -d $2 \
    & testPids+=($!)

    # wait for each test execution to complete or fail 
    for pid in "${testPids[@]}"; do
        wait "$pid"
    done
}


# test run 1 with iPhone as "device 1" and Android as "device 2"
multi_device_test iPhone sdk

# test run 2 with Android as "device 1" and iOS as "device 2"
multi_device_test sdk iPhone

