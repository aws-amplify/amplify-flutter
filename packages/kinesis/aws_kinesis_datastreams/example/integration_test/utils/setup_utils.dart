// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Setup utilities for Kinesis integration tests.
///
/// Configures Amplify with the Auth plugin, signs up and signs in a
/// test user, and provides credentials for the Kinesis client.
///
/// This follows the same pattern used by the storage and analytics
/// integration tests — using the Amplify Auth SDK rather than raw
/// Cognito HTTP calls.
library;

import 'dart:convert';
import 'dart:math';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation show AWSCredentialsProvider, TemporaryCredentials;
import 'package:aws_kinesis_datastreams_example/amplify_outputs.dart';
import 'package:flutter_test/flutter_test.dart';

/// The Amplify config string from the example app.
String get testAmplifyConfig => amplifyConfig;

/// AWS Region parsed from the Amplify config.
String get testRegion {
  final config = jsonDecode(amplifyConfig) as Map<String, dynamic>;
  final auth = config['auth'] as Map<String, dynamic>;
  return auth['aws_region'] as String;
}

/// Name of the Kinesis Data Stream to use for testing.
///
/// Defaults to the stream name provisioned by the infra-gen2 backend.
String get testStreamName =>
    const String.fromEnvironment('TEST_STREAM_NAME').isNotEmpty
        ? const String.fromEnvironment('TEST_STREAM_NAME')
        : 'amplify-kinesis-test-stream';

/// Whether the test environment is configured.
///
/// True when amplify_outputs.dart has valid auth config.
bool get isConfigured {
  try {
    final config = jsonDecode(amplifyConfig) as Map<String, dynamic>;
    return config.containsKey('auth');
  } on Object {
    return false;
  }
}

/// Configures Amplify with the Auth Cognito plugin.
///
/// Adds a tearDown to reset Amplify after each test group.
Future<void> configureAmplify() async {
  final authPlugin = AmplifyAuthCognito(
    secureStorageFactory: AmplifySecureStorage.factoryFrom(
      macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
    ),
  );

  await Amplify.addPlugins([authPlugin]);
  await Amplify.configure(amplifyConfig);
  addTearDown(Amplify.reset);
}

/// Generates a random test email address.
String _generateTestEmail() {
  final random = Random();
  final suffix = random.nextInt(999999).toString().padLeft(6, '0');
  return 'kinesis-flutter-e2e-$suffix@test.example.com';
}

/// Signs up and signs in a new test user using Amplify Auth.
///
/// Returns a [foundation.AWSCredentialsProvider] backed by the
/// authenticated session.
///
/// Adds a tearDown to sign out after the test completes.
Future<AmplifyAuthCredentialsProvider> signInNewUser() async {
  const password = 'Test@12345678';
  final email = _generateTestEmail();

  await Amplify.Auth.signUp(username: email, password: password);
  await Amplify.Auth.signIn(username: email, password: password);

  addTearDown(() async {
    try {
      await Amplify.Auth.signOut();
    } on Object {
      // Best-effort sign out.
    }
  });

  return const AmplifyAuthCredentialsProvider();
}

/// An [foundation.AWSCredentialsProvider] that fetches credentials from
/// Amplify Auth's current authenticated session.
///
/// This is the same approach used by the example app's main.dart.
class AmplifyAuthCredentialsProvider
    implements foundation.AWSCredentialsProvider {
  const AmplifyAuthCredentialsProvider();

  @override
  Future<foundation.TemporaryCredentials> resolve() async {
    final session = await Amplify.Auth.fetchAuthSession(
      options: const FetchAuthSessionOptions(forceRefresh: false),
    ) as CognitoAuthSession;

    final credentials = session.credentialsResult.value;
    return foundation.TemporaryCredentials(
      credentials.accessKeyId,
      credentials.secretAccessKey,
      credentials.sessionToken!,
      credentials.expiration!,
    );
  }
}
