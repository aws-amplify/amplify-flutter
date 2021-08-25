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

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify.dart';

import '../test_resources/amplifyconfiguration_all_resources.dart';

void main() {
  const channel = MethodChannel('com.amazonaws.amplify/amplify');
  var platformConfigured = false;

  TestWidgetsFlutterBinding.ensureInitialized();

  // Class under test
  late AmplifyClass amplify;

  // Amplify config file
  var allResources = allResourcesConfig;

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (!platformConfigured) {
        return true;
      } else {
        throw PlatformException(code: 'AmplifyAlreadyConfiguredException');
      }
    });
    // We want to instantiate a new instance for each test so we start
    // with a fresh state as `Amplify` singleton holds a state.
    amplify = AmplifyClass.protected();
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
  test('config user agent should be set', () async {
    await amplify.configure(allResources);
    var config = await amplify.asyncConfig;
    expect(config.userAgent, 'aws-amplify-cli/2.0');
  });

  test('config version should be set', () async {
    await amplify.configure(allResources);
    var config = await amplify.asyncConfig;
    expect(config.version, '1.0');
  });

  test('missing user agent and version in config should result in null value',
      () async {
    await amplify.configure('{}');
    var config = await amplify.asyncConfig;
    expect(config.userAgent, null);
    expect(config.version, null);
  });

  test('Analytics is null when config is empty', () async {
    await amplify.configure('{}');
    var config = await amplify.asyncConfig;
    expect(config.analytics, null);
  });

  test('API is null when config is empty', () async {
    await amplify.configure('{}');
    var config = await amplify.asyncConfig;
    expect(config.api, null);
  });

  test('Auth is null when config is empty', () async {
    await amplify.configure('{}');
    var config = await amplify.asyncConfig;
    expect(config.auth, null);
  });

  test('Storage is null when config is empty', () async {
    await amplify.configure('{}');
    var config = await amplify.asyncConfig;
    expect(config.storage, null);
  });
}
