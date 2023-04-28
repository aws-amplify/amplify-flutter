// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:amplify_native_legacy_wrapper/amplify_native_legacy_wrapper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/test_utils.dart';
import 'utils/validation_utils.dart';

final usernameConfig = amplifyEnvironments['sign-in-with-username']!;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'should migrate a user session from the legacy plugin',
    skip: zIsWeb || !(Platform.isIOS || Platform.isAndroid),
    () {
      final legacyPlugin = AmplifyNativeLegacyWrapper();

      late final String username;
      late final String cognitoUsername;
      late final String password;

      setUp(() async {
        // configure Amplify and legacy plugin, and ensure no users are signed in.
        await configureAmplify(usernameConfig);
        await legacyPlugin.configure(usernameConfig);
        await tryAsync(Amplify.Auth.signOut);
        await tryAsync(legacyPlugin.signOut);

        // create new user.
        username = generateUsername();
        password = generatePassword();
        cognitoUsername = await createUser(username, password);
      });

      asyncTest('sign in with username', (_) async {
        // assert no user is signed in.
        final session1 = await Amplify.Auth.fetchAuthSession();
        expect(session1.isSignedIn, isFalse);

        // sign a user in with the legacy plugin.
        await legacyPlugin.signIn(username, password);

        // reconfigure Amplify to trigger credential migration.
        await configureAmplify(usernameConfig);

        final plugin = Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey);

        // assert a user is signed in and tokens have been migrated.
        final session2 = await plugin.fetchAuthSession();
        expect(session2.isSignedIn, isTrue);
        expect(isValidUserSub(session2.userSubResult.value), isTrue);
        expect(isValidIdentityId(session2.identityIdResult.value), isTrue);
        expect(isValidAWSCredentials(session2.credentialsResult.value), isTrue);
        expect(
          isValidAWSCognitoUserPoolTokens(session2.userPoolTokensResult.value),
          isTrue,
        );

        final currentUser = await plugin.getCurrentUser();
        expect(currentUser.username, cognitoUsername);
        expect(isValidUserSub(currentUser.userId), isTrue);
      });
    },
  );
}

Future<void> configureAmplify(String config) async {
  await clearCredentialStore();
  if (Amplify.isConfigured) {
    await Amplify.reset();
  }
  await Amplify.addPlugins([AmplifyAPI(), AmplifyAuthCognito()]);
  await Amplify.configure(config);
}

Future<String> createUser(String username, String password) {
  return adminCreateUser(
    username,
    password,
    autoConfirm: true,
    verifyAttributes: true,
  );
}

/// Clears the Amplify vLatest credential store, including the "version" key
/// which is not cleared on sign out.
///
/// This is used to reset to the device back to a state prior to upgrading to
/// Amplify vLatest.
Future<void> clearCredentialStore() async {
  final storage = AmplifySecureStorage.factoryFrom()(
    AmplifySecureStorageScope.awsCognitoAuthPlugin,
  );
  await storage.removeAll();
}

/// Calls [cb] and ignores all exceptions.
Future<void> tryAsync(Future<Object?> Function() cb) async {
  try {
    await cb();
  } on Exception {
    // do nothing
  }
}
