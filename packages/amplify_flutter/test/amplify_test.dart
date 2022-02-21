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
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const MethodChannel channel = MethodChannel('com.amazonaws.amplify/amplify');
  const MethodChannel authChannel =
      MethodChannel('com.amazonaws.amplify/auth_cognito');
  const MethodChannel analyticsChannel =
      MethodChannel('com.amazonaws.amplify/analytics_pinpoint');
  var platformConfigured = false;

  // Test data
  String invalidConfiguration = 'How dare you call me invalid';
  String validJsonConfiguration = '{ "happy": "validConfiguration"}';

  const amplifyAlreadyConfiguredException = AmplifyAlreadyConfiguredException(
      'Amplify has already been configured and re-configuration is not supported.',
      recoverySuggestion:
          'Check if Amplify is already configured using Amplify.isConfigured.');

  const amplifyAlreadyConfiguredForAddPluginException =
      AmplifyAlreadyConfiguredException(
          'Amplify has already been configured and adding plugins after configure is not supported.',
          recoverySuggestion:
              'Check if Amplify is already configured using Amplify.isConfigured.');

  AmplifyException multiplePluginsForAuthException = AmplifyException(
    'Amplify plugin AmplifyAuthCognito was not added successfully.',
    recoverySuggestion:
        "We currently don't have a recovery suggestion for this exception.",
    underlyingException:
        const AmplifyException('Auth plugin has already been added, multiple '
                'plugins for Auth category are currently not supported.')
            .toString(),
  );

  const pluginNotAddedException = AmplifyException(
      'Auth plugin has not been added to Amplify',
      recoverySuggestion:
          'Add Auth plugin to Amplify and call configure before calling Auth related APIs');

  TestWidgetsFlutterBinding.ensureInitialized();

  // Class under test
  late AmplifyClass amplify;

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (!platformConfigured) {
        return true;
      } else {
        throw PlatformException(code: 'AmplifyAlreadyConfiguredException');
      }
    });
    authChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
    analyticsChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
    // We want to instantiate a new instance for each test so we start
    // with a fresh state as `Amplify` singleton holds a state.
    amplify = AmplifyClass.protected();
    AmplifyClass.instance = MethodChannelAmplify();

    // We only use Auth and Analytics category for testing this class.
    // Clear out their plugins before each test for a fresh state.
    AuthCategory.plugins.clear();
    AnalyticsCategory.plugins.clear();
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
    authChannel.setMockMethodCallHandler(null);
    analyticsChannel.setMockMethodCallHandler(null);
  });

  test('before calling configure, isConfigure should be false', () {
    expect(amplify.isConfigured, false);
  });

  test('after calling configure, isConfigure should be true', () async {
    await amplify.configure(validJsonConfiguration);
    expect(amplify.isConfigured, true);
  });

  test('Failed configure should result in isConfigure to be false', () async {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      throw Exception(); // configuration failed
    });
    await expectLater(
      amplify.configure(validJsonConfiguration),
      throwsException,
    );
    expect(amplify.isConfigured, false);
  });

  test(
      'configure should result in AmplifyException when invalid value is passed',
      () async {
    FormatException? formatException;
    // Setup the expected exception
    try {
      jsonDecode(invalidConfiguration);
    } on FormatException catch (e) {
      formatException = e;
    } catch (e) {
      expect(e, isA<FormatException>());
    }

    AmplifyException invalidConfigurationException = AmplifyException(
        'The provided configuration is not a valid json. Check underlyingException.',
        recoverySuggestion:
            'Inspect your amplifyconfiguration.dart and ensure that the string is proper json',
        underlyingException: formatException.toString());
    amplify
        .configure(invalidConfiguration)
        .catchError((Object e) => expect(e, invalidConfigurationException));
    expect(amplify.isConfigured, false);
  });

  test('calling configure twice results in an exception', () async {
    await amplify.configure(validJsonConfiguration);
    try {
      await amplify.configure(validJsonConfiguration);
    } catch (e) {
      expect(e, amplifyAlreadyConfiguredException);
      expect(amplify.isConfigured, true);
      return;
    }
    fail('an exception should have been thrown');
  });

  test('adding multiple plugins using addPlugins method doesn\'t throw',
      () async {
    await amplify
        .addPlugins([AmplifyAuthCognito(), AmplifyAnalyticsPinpoint()]);
    await amplify.configure(validJsonConfiguration);
    expect(amplify.isConfigured, true);
  });

  test('adding single plugins using addPlugin method doesn\'t throw', () async {
    await amplify.addPlugin(AmplifyAuthCognito());
    await amplify.configure(validJsonConfiguration);
    expect(amplify.isConfigured, true);
  });

  test('adding multiple plugins from same Auth category throws exception',
      () async {
    await amplify.addPlugin(AmplifyAuthCognito());
    try {
      await amplify.addPlugin(AmplifyAuthCognito());
    } catch (e) {
      expect(e, multiplePluginsForAuthException);
      expect(amplify.isConfigured, false);
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
      expect(amplify.isConfigured, true);
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

  test(
      'PlatformException with AmplifyAlreadyConfiguredException code is swallowed',
      () async {
    platformConfigured = true;

    try {
      await amplify.configure(validJsonConfiguration);
    } catch (e) {
      fail('AmplifyAlreadyConfiguredException was not swallowed');
    }
  });
}

// ignore_for_file: avoid_catches_without_on_clauses
