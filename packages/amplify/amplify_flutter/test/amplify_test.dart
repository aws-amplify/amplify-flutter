// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_flutter/src/amplify_impl.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

final throwsConfigurationError = throwsA(isA<ConfigurationError>());
final throwsPluginError = throwsA(isA<PluginError>());
final throwsPluginNotAddedError = throwsA(
  isA<PluginError>().having(
    (e) => e.message,
    'message',
    contains('plugin has not been added to Amplify'),
  ),
);

class MockPlugin extends AuthPluginInterface {}

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();
  Amplify = MethodChannelAmplify();

  const MethodChannel channel = MethodChannel('com.amazonaws.amplify/amplify');
  const MethodChannel dataStoreChannel =
      MethodChannel('com.amazonaws.amplify/datastore');
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

  // Class under test
  late AmplifyClass amplify;

  setUp(() {
    binding.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        if (!platformConfigured) {
          return true;
        } else {
          throw PlatformException(code: 'AmplifyAlreadyConfiguredException');
        }
      },
    );
    binding.defaultBinaryMessenger.setMockMethodCallHandler(
      dataStoreChannel,
      (MethodCall methodCall) async => true,
    );
    // We want to instantiate a new instance for each test so we start
    // with a fresh state as `Amplify` singleton holds a state.
    amplify = MethodChannelAmplify();
    AmplifyClass.instance = amplify;

    // We only use Auth and DataStore category for testing this class.
    // Clear out their plugins before each test for a fresh state.
    Amplify.Auth.reset();
    Amplify.DataStore.reset();
  });

  tearDown(() {
    binding.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
    binding.defaultBinaryMessenger
        .setMockMethodCallHandler(dataStoreChannel, null);
  });

  test('before calling configure, isConfigure should be false', () {
    expect(amplify.isConfigured, false);
  });

  test('after calling configure, isConfigure should be true', () async {
    await amplify.configure(validJsonConfiguration);
    expect(amplify.isConfigured, true);
  });

  test('Failed configure should result in isConfigure to be false', () async {
    binding.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        throw Exception(); // configuration failed
      },
    );
    await expectLater(
      amplify.configure(validJsonConfiguration),
      throwsPluginError,
    );
    expect(amplify.isConfigured, false);
  });

  test(
      'configure should result in ConfigurationError when invalid value is passed',
      () async {
    expect(
      amplify.asyncConfig,
      throwsConfigurationError,
    );
    await expectLater(
      amplify.configure(invalidConfiguration),
      throwsConfigurationError,
    );
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
    await amplify.addPlugins([
      MockPlugin(),
      MockPlugin(),
    ]);
    await amplify.configure(validJsonConfiguration);
    expect(amplify.isConfigured, true);
  });

  test('adding single plugins using addPlugin method doesn\'t throw', () async {
    await amplify.addPlugin(MockPlugin());
    await amplify.configure(validJsonConfiguration);
    expect(amplify.isConfigured, true);
  });

  test('adding plugins after configure throws an exception', () async {
    await amplify.addPlugin(MockPlugin());
    await amplify.configure(validJsonConfiguration);
    try {
      await amplify.addPlugin(MockPlugin());
    } catch (e) {
      expect(e, amplifyAlreadyConfiguredForAddPluginException);
      expect(amplify.isConfigured, true);
      return;
    }
    fail('an exception should have been thrown');
  });

  test('Calling a plugin through Amplify before adding one', () async {
    await amplify.configure(validJsonConfiguration);
    expect(() => Amplify.Auth.signOut(), throwsPluginNotAddedError);
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
