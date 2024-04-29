// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_integration_test/src/test_auth_plugin.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:stack_trace/stack_trace.dart';

final AWSLogger _logger = AWSLogger().createChild('AuthTestRunner');

/// Environments with a user pool and username-based sign in.
const List<String> userPoolEnvironments = [
  'main',
  'user-pool-only',
  'with-client-secret',
];

/// Environments with a user pool and opt-in device tracking.
const List<String> deviceOptInEnvironments = [
  'device-tracking-opt-in',
  'user-pool-only',
  'with-client-secret',
];

/// A test environment descriptor.
abstract interface class TestEnvironment {
  /// The name of the environment in the backend.
  String get environmentName;
}

/// {@template amplify_auth_integration_test.auth_test_runner}
/// A test-runner for Auth integration tests.
///
/// How to use:
/// 1. At the start of the integration test, call [setupTests].
///
/// ```dart
/// final AuthTestRunner testRunner = AuthTestRunner(amplifyEnvironments);
///
/// void main() {
///   testRunner.setupTests();
/// }
/// ```
///
/// 2. In the [setUp] block of your group, call [configure].
///
/// > **NOTE**: You must use `setUp` and not `setUpAll` so that no state is persisted
///   in between tests.
///
/// ```dart
/// group('fetchAuthSession', () {
///   setUp(() async {
///     await testRunner.configure(environmentName: 'identity-pool-only');
///   });
/// });
/// ```
///
/// 3. That's it! Calls to [AmplifyAuthCognito.signUp] and [adminCreateUser] will
/// automatically register [tearDown] calls to delete and sign out those users.
/// {@endtemplate}
class AuthTestRunner {
  /// {@macro amplify_auth_integration_test.auth_test_runner}
  const AuthTestRunner(this._amplifyEnvironments);

  final Map<String, String> _amplifyEnvironments;

  /// Initializes the testing framework.
  void setupTests() {
    AWSLogger().logLevel = LogLevel.verbose;
    final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    // Required demangler since we use `package:stack_trace` in Auth code
    // but flutter_test expects normal stack traces.
    FlutterError.demangleStackTrace = (StackTrace stack) {
      if (stack is Trace) {
        return stack.vmTrace;
      }
      if (stack is Chain) {
        return stack.toTrace().vmTrace;
      }
      return stack;
    };
    // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
    binding.deferFirstFrame();
  }

  /// Configures Amplify for the given [environmentName].
  ///
  /// **MUST** be called from `setUp` and not `setUpAll` so that users created
  /// during a test are deleted and signed out after the test. This prevents
  /// any state from leaking between tests.
  Future<void> configure({
    String environmentName = 'main',
    List<APIAuthProvider> apiAuthProviders = const [],
    AWSHttpClient? baseClient,
  }) async {
    final config = _amplifyEnvironments[environmentName]!;
    final hasApiPlugin = AmplifyConfig.fromJson(
          jsonDecode(config) as Map<String, dynamic>,
        ).api?.awsPlugin !=
        null;
    final authPlugin = AmplifyAuthTestPlugin(hasApiPlugin: hasApiPlugin);
    await Amplify.addPlugins([
      authPlugin,
      if (hasApiPlugin)
        AmplifyAPI(
          options: APIPluginOptions(
            authProviders: apiAuthProviders,
            baseHttpClient: baseClient,
          ),
        ),
    ]);
    await Amplify.configure(config);
    await Amplify.Auth.signOut();
    addTearDown(
      Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey).close,
    );
    addTearDown(Amplify.reset);
    addTearDown(signOutUser);
  }

  /// Whether a test for [environmentName] should be skipped.
  String? shouldSkip(String environmentName) {
    if (_amplifyEnvironments.containsKey(environmentName)) {
      return null;
    }
    return 'No config found for "$environmentName"';
  }

  /// Runs [body] in a [group] which configures [environment].
  void withEnvironment(TestEnvironment environment, void Function() body) {
    group(environment.environmentName, () {
      setUp(() async {
        await configure(environmentName: environment.environmentName);
      });

      body();
    });
  }
}

/// Signs out a user if one is signed in.
Future<void> signOutUser({bool assertComplete = false}) async {
  final result = await Amplify.Auth.signOut() as CognitoSignOutResult;
  if (assertComplete) {
    expect(result, isA<CognitoCompleteSignOut>());
  }
  switch (result) {
    case CognitoCompleteSignOut _:
      _logger.debug('Successfully signed out user');
      return;
    case CognitoPartialSignOut(
        :final hostedUiException,
        :final globalSignOutException,
        :final revokeTokenException,
      ):
      _logger.error(
        'Error signing out:',
        hostedUiException ?? globalSignOutException ?? revokeTokenException,
      );
    case CognitoFailedSignOut(:final exception):
      _logger.error('Error signing out:', exception);
  }
}
