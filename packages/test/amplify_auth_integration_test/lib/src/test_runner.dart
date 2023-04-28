// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_integration_test/src/test_auth_plugin.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:stack_trace/stack_trace.dart';

/// Environments with a user pool and username-based sign in.
const userPoolEnvironments = ['main', 'user-pool-only', 'with-client-secret'];

/// Environments with a user pool and opt-in device tracking.
const deviceOptInEnvironments = [
  'device-tracking-opt-in',
  'user-pool-only',
  'with-client-secret'
];

/// {@template amplify_auth_integration_test.auth_test_runner}
/// A test-runner for Auth integration tests.
/// {@endtemplate}
class AuthTestRunner {
  /// {@macro amplify_auth_integration_test.auth_test_runner}
  const AuthTestRunner(this._amplifyEnvironments);

  final Map<String, String> _amplifyEnvironments;

  /// Initializes the testing framework.
  void setupTests() {
    AWSLogger().logLevel = LogLevel.verbose;
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
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
  }

  /// Configures Amplify for the given [environmentName].
  Future<void> configure({
    String environmentName = 'main',
    List<APIAuthProvider> apiAuthProviders = const [],
    AWSHttpClient? baseClient,
  }) async {
    final config = _amplifyEnvironments[environmentName]!;
    final authPlugin = AmplifyAuthTestPlugin();
    final hasApiPlugin = AmplifyConfig.fromJson(
          jsonDecode(config) as Map<String, dynamic>,
        ).api?.awsPlugin !=
        null;
    await Amplify.addPlugins([
      authPlugin,
      if (hasApiPlugin)
        AmplifyAPI(
          authProviders: apiAuthProviders,
          baseHttpClient: baseClient,
        ),
    ]);
    await Amplify.configure(config);
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
}

/// Signs out a user if one is signed in.
Future<void> signOutUser() async {
  try {
    await Amplify.Auth.signOut();
  } on Exception {
    // Ignore a signOut error because we only care when someone signed in.
  }
}
