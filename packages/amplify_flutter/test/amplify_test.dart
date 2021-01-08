/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/categories/amplify_categories.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify.dart';

void main() {
  const MethodChannel channel = MethodChannel('com.amazonaws.amplify/amplify');
  AmplifyClass amplify;
  String dummyConfiguration = "dummy";
  String amplifyAlreadyConfiguredError =
      "Amplify has already been configured and re-configuration is not supported. " +
          "Please use Amplify.isConfigured to check before calling configure again.";
  String amplifyAlreadyConfiguredForAddPluginError =
      "Amplify is already configured. Adding plugins after configure is not supported.";
  String multiplePluginsForAuthError = "Auth plugin has already been added, " +
      "multiple plugins for Auth category are currently not supported.";
  String amplifyConfigureFailedError = "Amplify failed to configure. " +
      "Please raise an issue in amplify-flutter repository.";

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
    // We want to instantiate a new instance for each test so we start
    // with a fresh state as `Amplify` singleton holds a state.
    amplify = new AmplifyClass();

    // We only use Auth and Analytics category for testing this class.
    // Clear out their plugins before each test for a fresh state.
    AuthCategory.plugins.clear();
    AnalyticsCategory.plugins.clear();
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('configure should result in assertion error when null value is passed',
      () async {
    amplify
        .configure(null)
        .then((v) => expect(true, false))
        .catchError((e) => expect(e, isAssertionError));
  });

  test('before calling configure, isConfigure should be false', () {
    expect(amplify.isConfigured, false);
  });

  test('after calling configure, isConfigure should be true', () async {
    await amplify.configure(dummyConfiguration);
    expect(amplify.isConfigured, true);
  });

  test('Failed configure should result in isConfigure to be false', () async {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return false; // configuration failed
    });
    try {
      await amplify.configure(dummyConfiguration);
    } catch (e) {
      expect(e, amplifyConfigureFailedError);
    }
    expect(amplify.isConfigured, false);
  });

  test('calling configure twice results in an error', () async {
    await amplify.configure(dummyConfiguration);
    try {
      await amplify.configure(dummyConfiguration);
    } catch (e) {
      expect(e, isStateError);
      expect((e as StateError).message, amplifyAlreadyConfiguredError);
      return;
    }
    fail("an error should have been thrown");
  });

  test("adding multiple plugins using addPlugins method doesn't throw",
      () async {
    await amplify
        .addPlugins([AmplifyAuthCognito(), AmplifyAnalyticsPinpoint()]);
    await amplify.configure(dummyConfiguration);
    expect(amplify.isConfigured, true);
  });

  test("adding single plugins using addPlugin method doesn't throw", () async {
    await amplify.addPlugin(AmplifyAuthCognito());
    await amplify.configure(dummyConfiguration);
    expect(amplify.isConfigured, true);
  });

  test("adding multiple plugins from same Auth category throws error",
      () async {
    await amplify.addPlugin(AmplifyAuthCognito());
    try {
      await amplify.addPlugin(AmplifyAuthCognito());
    } catch (e) {
      expect(e, isStateError);
      expect((e as StateError).message, multiplePluginsForAuthError);
      return;
    }
    fail("an error should have been thrown");
  });

  test("adding plugins after configure throws an error", () async {
    await amplify.addPlugin(AmplifyAuthCognito());
    await amplify.configure(dummyConfiguration);
    expect(amplify.isConfigured, true);
    try {
      await amplify.addPlugin(AmplifyAnalyticsPinpoint());
    } catch (e) {
      expect(e, isStateError);
      expect(
          (e as StateError).message, amplifyAlreadyConfiguredForAddPluginError);
      return;
    }
    fail("an error should have been thrown");
  });
}
