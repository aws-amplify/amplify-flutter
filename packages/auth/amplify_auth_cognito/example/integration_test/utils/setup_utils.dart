// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> configureAuth({
  String? config,
  List<AmplifyPluginInterface> additionalPlugins = const [],
}) async {
  final authPlugin = AmplifyAuthCognito(
    credentialStorage: AmplifySecureStorage(
      config: AmplifySecureStorageConfig(
        scope: 'auth-test',
        macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
      ),
    ),
  );
  await Amplify.addPlugins([authPlugin, ...additionalPlugins]);
  await Amplify.configure(config ?? amplifyconfig);
  addTearDown(
    Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey).close,
  );
  addTearDown(Amplify.reset);
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
