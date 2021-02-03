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

import 'dart:convert';

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/categories/amplify_categories.dart';
import 'package:amplify_core/types/index.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify.dart';

void main() {
  const MethodChannel channel = MethodChannel('com.amazonaws.amplify/amplify');

  // Test data
  String invalidConfiguration = 'How dare you call me invalid';
  String validJsonConfiguration = '{ \"happy\": \"validConfiguration\"}';

  const amplifyAlreadyConfiguredException = AmplifyAlreadyConfiguredException(
      'Amplify has already been configured and re-configuration is not supported.',
      recoverySuggestion:
          'Catch AmplifyAlreadyConfiguredException in your app to avoid this state.');

  const amplifyAlreadyConfiguredForAddPluginException = AmplifyException(
      'Amplify has already been configured and adding plugins after configure is not supported.',
      recoverySuggestion:
          'Catch AmplifyAlreadyConfiguredException in your app to avoid this state.');

  AmplifyException multiplePluginsForAuthException = AmplifyException(
      'Amplify plugin AmplifyAuthCognito was not added successfully.',
      recoverySuggestion:
          "We currently don't have a recovery suggestion for this exception.",
      underlyingException: AmplifyException(
              'Auth plugin has already been added, multiple ' +
                  'plugins for Auth category are currently not supported.')
          .toString());

  const nullConfigurationException = AmplifyException(
      'Configuration passed in null.',
      recoverySuggestion:
          'Make sure that your amplifyconfiguration.dart file exists and has ' +
              'string constant ``amplifyconfig` and that you are calling configure() correctly.');

  const pluginNotAddedException = AmplifyException(
      'Auth plugin has not been added to Amplify',
      recoverySuggestion:
          'Add Auth plugin to Amplify and call configure before calling Auth related APIs');

  TestWidgetsFlutterBinding.ensureInitialized();

  // Class under test
  AmplifyClass amplify;

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

  test('configure should result in AmplifyException when null value is passed',
      () async {
    amplify
        .configure(null)
        .then((v) => fail('configuration should have been failed.'))
        .catchError((e) => expect(e, nullConfigurationException));
  });

  test(
      'configure should result in AmplifyException when invalid value is passed',
      () async {
    FormatException formatException = null;
    // Setup the expected exception
    try {
      jsonDecode(invalidConfiguration);
    } catch (e) {
      formatException = e;
    }
    AmplifyException invalidConfigurationException = AmplifyException(
        'The provided configuration is not a valid json. Check underlyingException.',
        recoverySuggestion:
            'Inspect your amplifyconfiguration.dart and ensure that the string is proper json',
        underlyingException: formatException.toString());
    amplify
        .configure(invalidConfiguration)
        .then((v) => fail('configuration should have been failed.'))
        .catchError((e) => expect(e, invalidConfigurationException));
  });

  test('calling configure twice results in an exception', () async {
    await amplify.configure(validJsonConfiguration);
    try {
      await amplify.configure(validJsonConfiguration);
    } catch (e) {
      expect(e, amplifyAlreadyConfiguredException);
      return;
    }
    fail('an exception should have been thrown');
  });

  test('adding multiple plugins using addPlugins method doesn\'t throw',
      () async {
    await amplify
        .addPlugins([AmplifyAuthCognito(), AmplifyAnalyticsPinpoint()]);
    await amplify.configure(validJsonConfiguration);
  });

  test('adding single plugins using addPlugin method doesn\'t throw', () async {
    await amplify.addPlugin(AmplifyAuthCognito());
    await amplify.configure(validJsonConfiguration);
  });

  test('adding multiple plugins from same Auth category throws exception',
      () async {
    await amplify.addPlugin(AmplifyAuthCognito());
    try {
      await amplify.addPlugin(AmplifyAuthCognito());
    } catch (e) {
      expect(e, multiplePluginsForAuthException);
      return;
    }
    fail('an exception should have been thrown');
  });

  test('adding plugins after configure throws an exception', () async {
    await amplify.addPlugin(AmplifyAuthCognito());
    await amplify.configure(validJsonConfiguration);
    try {
      await amplify.addPlugin(AmplifyAnalyticsPinpoint());
    } catch (e) {
      expect(e, amplifyAlreadyConfiguredForAddPluginException);
      return;
    }
    fail('an exception should have been thrown');
  });

  test('Calling a plugin through Amplify before adding one', () async {
    await amplify.configure(validJsonConfiguration);
    try {
      await Amplify.Auth.signOut();
    } catch (e) {
      expect(e, pluginNotAddedException);
      return;
    }
    fail('an exception should have been thrown');
  });
}
