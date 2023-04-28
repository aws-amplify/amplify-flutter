// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:stack_trace/stack_trace.dart';

import 'test_auth_plugin.dart';

/// Environments with a user pool and username-based sign in.
const userPoolEnvironments = ['main', 'user-pool-only', 'with-client-secret'];

/// Environments with a user pool and opt-in device tracking.
const deviceOptInEnvironments = [
  'device-tracking-opt-in',
  'user-pool-only',
  'with-client-secret'
];

/// Initializes the testing framework.
void initTests() {
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

Future<void> configureAuth({
  String config = amplifyconfig,
  List<APIAuthProvider> apiAuthProviders = const [],
  AWSHttpClient? baseClient,
}) async {
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
  if (amplifyEnvironments.containsKey(environmentName)) {
    return null;
  }
  return 'No config found for "$environmentName"';
}

// ensure no user is currently signed in
Future<void> signOutUser() async {
  try {
    await Amplify.Auth.signOut();
  } on Exception {
    // Ignore a signOut error because we only care when someone signed in.
  }
}
