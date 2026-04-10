// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Setup utilities for Firehose integration tests.
library;

import 'dart:convert';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_firehose/amplify_firehose.dart';
import 'package:amplify_firehose_example/amplify_outputs.dart';
import 'package:amplify_flutter/amplify_flutter.dart'
    hide AWSCredentialsProvider;
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show AWSCredentialsProvider, TemporaryCredentials;
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';

/// The Amplify config string from the example app.
String get testAmplifyConfig => amplifyConfig;

/// AWS Region parsed from the Amplify config.
String get testRegion {
  final config = jsonDecode(amplifyConfig) as Map<String, dynamic>;
  final auth = config['auth'] as Map<String, dynamic>;
  return auth['aws_region'] as String;
}

/// Name of the Firehose delivery stream to use for testing.
String get testStreamName =>
    const String.fromEnvironment('TEST_STREAM_NAME').isNotEmpty
        ? const String.fromEnvironment('TEST_STREAM_NAME')
        : 'amplify-firehose-test-stream';

/// Whether the test environment is configured.
bool get isConfigured {
  try {
    final config = jsonDecode(amplifyConfig) as Map<String, dynamic>;
    return config.containsKey('auth');
  } on Object {
    return false;
  }
}

/// Configures Amplify with the Auth Cognito plugin.
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

/// Signs up and signs in a new test user using Amplify Auth.
Future<AmplifyAuthCredentialsProvider> signInNewUser() async {
  final password = generatePassword();
  final email = generateEmail();

  await Amplify.Auth.signUp(username: email, password: password);
  await Amplify.Auth.signIn(username: email, password: password);

  addTearDown(() async {
    try {
      await Amplify.Auth.deleteUser();
    } on Object {
      // Best-effort delete.
    }
  });

  return const AmplifyAuthCredentialsProvider();
}

/// An [AWSCredentialsProvider] backed by Amplify Auth's current session.
class AmplifyAuthCredentialsProvider implements AWSCredentialsProvider {
  /// Creates an [AmplifyAuthCredentialsProvider].
  const AmplifyAuthCredentialsProvider();

  @override
  Future<TemporaryCredentials> resolve() async {
    final session =
        await Amplify.Auth.fetchAuthSession(
              options: const FetchAuthSessionOptions(forceRefresh: false),
            )
            as CognitoAuthSession;

    final credentials = session.credentialsResult.value;
    return TemporaryCredentials(
      credentials.accessKeyId,
      credentials.secretAccessKey,
      credentials.sessionToken!,
      credentials.expiration!,
    );
  }
}
