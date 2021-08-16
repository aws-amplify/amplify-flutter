/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'dart:async';

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter_test/flutter_test.dart';

String _testId = '';

/// sets an ID that is available accross all tests instances from
/// a single test run. Used to sync test execution across devices from
/// a single test run
setTestId() {
  // const is needed for use with String.fromEnvironment
  const testId = String.fromEnvironment('test_id');
  _testId = testId;
  print('test Id set to: $_testId');
}

/// signal that device one is ready for test execution
Future<void> signalDeviceOneReady() async {
  await _createTestEventWithName('device 1 ready');
}

/// signal that device two is ready for test execution
Future<void> signalDeviceTwoReady() async {
  await _createTestEventWithName('device 2 ready');
}

/// wait for device one to be ready for device execution
Future<void> waitForDeviceOneReady() async {
  // failOnTimeout is set to false since this is called from setUp()
  // timeout is increased to account for the difference in time between iOS and Android builds
  return _waitForTestEventWithName(
    'device 1 ready',
    failOnTimeout: false,
    timeout: Duration(seconds: 120),
  );
}

/// wait for device two to be ready for device execution
Future<void> waitForDeviceTwoReady() async {
  // failOnTimeout is set to false since this is called from setUp()
  // timeout is increased to account for the difference in time between iOS and Android builds
  return _waitForTestEventWithName(
    'device 2 ready',
    failOnTimeout: false,
    timeout: Duration(seconds: 120),
  );
}

/// signal that a test with a given name has started
Future<void> signalTestStart({required String testName}) async {
  return _createTestEventWithName('test start: $testName');
}

/// wait for a test with a given name to start
Future<void> waitForTestStart({required String testName}) async {
  return _waitForTestEventWithName('test start: $testName');
}

/// signal that a test with a given name has ended and can be cleaned up
Future<void> signalTestEnd({required String testName}) async {
  return _createTestEventWithName('test end: $testName');
}

/// wait for a test with a given name to end
Future<void> waitForTestEnd({required String testName}) async {
  return _waitForTestEventWithName('test end: $testName');
}

/// create a testEvent with a given name, and prepends the test ID to the
/// name. Used to sync test execution between devices.
Future<void> _createTestEventWithName(String name) async {
  print('Created: ' + name);
  TestEvent testEvent = TestEvent(testRunId: _testId, eventName: name);
  await Amplify.DataStore.save(testEvent);
}

/// wait for a testEvent to be created with a given name. Used to sync
/// test execution between devices.
Future<void> _waitForTestEventWithName(
  String name, {
  Duration timeout = const Duration(seconds: 30),
  bool failOnTimeout = true,
}) async {
  Completer completer = new Completer();

  Future.delayed(timeout).then((value) {
    if (!completer.isCompleted) {
      if (failOnTimeout) {
        fail('timeout exceeded while waiting for testEvent: $name.');
      }
      print(
          'timeout exceeded while waiting for testEvent: $name. Fail set to false. Proceeding with tests ...');
      completer.complete();
    }
  });

  Amplify.DataStore.observe(TestEvent.classType)
      .firstWhere((element) =>
          element.item.testRunId == _testId && element.item.eventName == name)
      .then((value) {
    if (!completer.isCompleted) {
      print('Recieved: ' + name);
      completer.complete();
    }
  });

  Amplify.DataStore.query(TestEvent.classType,
          where:
              TestEvent.TESTRUNID.eq(_testId).and(TestEvent.EVENTNAME.eq(name)))
      .then((testEvents) {
    if (testEvents.length > 0) {
      if (!completer.isCompleted) {
        print('Recieved: ' + name);
        completer.complete();
      }
    }
  });

  await completer.future;
}
