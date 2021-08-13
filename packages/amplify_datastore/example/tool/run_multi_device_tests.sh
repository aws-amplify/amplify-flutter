#!/bin/bash

# test_id is used to identify a unique test instance to enable tests to be run in parallel
# the id is prepended to items saved to the db to avoid conflicting items from other tests
test_id=$(uuidgen)

# test with iPhone and "device 1" and Android as "device 2"
flutter drive \
--no-pub \
--driver=test_driver/integration_test.dart \
--target=integration_test/multi_device/device_1_test.dart \
--dart-define="test_id=$test_id" \
-d iPhone \
& \ 
flutter drive \
--no-pub \
--driver=test_driver/integration_test.dart \
--target=integration_test/multi_device/device_2_test.dart \
--dart-define="test_id=$test_id" \
-d sdk \