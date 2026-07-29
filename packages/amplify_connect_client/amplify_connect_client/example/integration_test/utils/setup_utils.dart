// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Setup utilities for Connect client integration tests.
///
/// Configures Amplify with the Auth plugin, signs up and signs in a test user,
/// and builds an [AmplifyConnectClientFlutter] from the same outputs. Reads the
/// gitignored `lib/amplify_outputs.dart` (pulled by `tool/pull_test_backend.sh`)
/// so no real backend config is committed.
library;

import 'dart:convert';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_connect_client/amplify_connect_client.dart';
import 'package:amplify_connect_client_example/amplify_outputs.dart';
import 'package:amplify_flutter/amplify_flutter.dart' hide UserProfile;
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';

Map<String, dynamic> get _outputs =>
    jsonDecode(amplifyConfig) as Map<String, dynamic>;

/// Whether a real test backend is configured.
///
/// True only when `amplify_outputs.dart` carries both an `auth` section and the
/// `notifications.amazon_connect` section the client needs.
bool get isConfigured {
  try {
    final config = _outputs;
    if (!config.containsKey('auth')) return false;
    final notifications = config['notifications'];
    return notifications is Map<String, dynamic> &&
        notifications['amazon_connect'] is Map<String, dynamic>;
  } on Object {
    return false;
  }
}

/// Configures Amplify with the Auth Cognito plugin.
///
/// Adds a tearDown to reset Amplify after each test.
Future<void> configureAmplify() async {
  final authPlugin = AmplifyAuthCognito(
    secureStorageFactory: AmplifySecureStorage.factoryFrom(
      macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
    ),
  );

  await Amplify.addPlugins([authPlugin]);
  // Amplify.configure only understands its own sections; strip the custom
  // notifications key so Auth configures cleanly.
  final authOnly = Map<String, dynamic>.from(_outputs)..remove('notifications');
  await Amplify.configure(jsonEncode(authOnly));
  addTearDown(Amplify.reset);
}

/// Signs up and signs in a new test user using Amplify Auth.
///
/// Adds a tearDown to delete the user (and sign out) after the test completes.
Future<void> signInNewUser() async {
  final password = generatePassword();
  final email = generateEmail();

  await Amplify.Auth.signUp(username: email, password: password);
  await Amplify.Auth.signIn(username: email, password: password);

  addTearDown(() async {
    try {
      await Amplify.Auth.deleteUser();
    } on Object {
      // Best-effort delete — also handles sign-out.
    }
  });
}

/// Builds a client from the configured outputs.
AmplifyConnectClientFlutter buildClient() =>
    AmplifyConnectClientFlutter.createFromAmplifyOutputs(
      amplifyOutputs: _outputs,
    );
