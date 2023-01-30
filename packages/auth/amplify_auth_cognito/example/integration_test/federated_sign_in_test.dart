// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
// ignore: invalid_use_of_internal_member
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('federateToIdentityPool', () {
    late final cognitoPlugin = Amplify.Auth.getPlugin(
      AmplifyAuthCognito.pluginKey,
    );

    // We test federated sign-in using Cognito. The combination of calling
    // `federateWithIdentityPool` with `AuthProvider.custom` allows testing
    // the critical code paths related to federated sign-in, even though on
    // the surface it resembles an ordinary call to fetchAuthSession.
    final userPoolConfig = AmplifyConfig.fromJson(
      jsonDecode(amplifyconfig) as Map<String, Object?>,
    ).auth!.awsPlugin!.cognitoUserPool!.default$!;
    final provider = AuthProvider.custom(
      'cognito-idp.${userPoolConfig.region}.amazonaws.com/${userPoolConfig.poolId}',
    );

    final username = generateUsername();
    final password = generatePassword();

    setUpAll(() async {
      await configureAuth();
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      await signOutUser();
    });

    tearDownAll(Amplify.reset);

    tearDown(signOutUser);

    Future<FederateToIdentityPoolResult> federateToIdentityPool() async {
      final signInResult = await cognitoPlugin.signIn(
        username: username,
        password: password,
      );
      expect(signInResult.nextStep.signInStep, 'DONE');

      final userPoolTokens =
          (await cognitoPlugin.fetchAuthSession()).userPoolTokensResult.value;
      // Clear but do not sign out so that tokens are still valid.
      // ignore: invalid_use_of_protected_member
      await cognitoPlugin.plugin.stateMachine.dispatch(
        CredentialStoreEvent.clearCredentials(
          CognitoUserPoolKeys(userPoolConfig),
        ),
      );

      return cognitoPlugin.federateToIdentityPool(
        token: userPoolTokens.idToken.raw,
        provider: provider,
      );
    }

    asyncTest('throws when signed in', (_) async {
      final signInResult = await cognitoPlugin.signIn(
        username: username,
        password: password,
      );
      expect(signInResult.nextStep.signInStep, 'DONE');

      await expectLater(
        cognitoPlugin.federateToIdentityPool(
          token: 'dummyToken',
          provider: provider,
        ),
        throwsA(
          isA<InvalidStateException>().having(
            (e) => e.message,
            'message',
            contains('active user session'),
          ),
        ),
      );
    });

    asyncTest('federates to external provider', (_) async {
      await expectLater(federateToIdentityPool(), completes);
    });

    asyncTest('replaces unauthenticated identity', (_) async {
      // Get unauthenticated identity
      final unauthSession = await cognitoPlugin.fetchAuthSession();

      final authSession = await federateToIdentityPool();
      expect(
        authSession.identityId,
        unauthSession.identityIdResult.value,
        reason: 'Should retain unauthenticated identity',
      );
      expect(
        authSession.credentials,
        isNot(unauthSession.credentialsResult.value),
        reason: 'Should get new credentials',
      );
    });

    asyncTest('can specify identity ID', (_) async {
      // Get unauthenticated identity (doesn't matter, just need identity ID)
      final unauthSession = await cognitoPlugin.fetchAuthSession();
      final identityId = unauthSession.identityIdResult.value;

      final signInResult = await cognitoPlugin.signIn(
        username: username,
        password: password,
      );
      expect(signInResult.nextStep.signInStep, 'DONE');

      final userPoolTokens =
          (await cognitoPlugin.fetchAuthSession()).userPoolTokensResult.value;
      // Clear but do not sign out so that tokens are still valid.
      // ignore: invalid_use_of_protected_member
      await cognitoPlugin.plugin.stateMachine.dispatch(
        CredentialStoreEvent.clearCredentials(
          CognitoUserPoolKeys(userPoolConfig),
        ),
      );

      final session = await cognitoPlugin.federateToIdentityPool(
        token: userPoolTokens.idToken.raw,
        provider: provider,
        options: FederateToIdentityPoolOptions(
          developerProvidedIdentityId: identityId,
        ),
      );
      expect(
        session.identityId,
        identityId,
        reason: 'Should be able to specify identity ID',
      );
    });

    asyncTest('can refresh federated credentials', (_) async {
      final authSession = await federateToIdentityPool();
      final newAuthSession = await federateToIdentityPool();

      expect(
        newAuthSession.identityId,
        authSession.identityId,
        reason: 'Should retain authenticated identity',
      );
      expect(
        newAuthSession.credentials,
        isNot(authSession.credentials),
        reason: 'Should refresh credentials',
      );
    });

    asyncTest('can clear federation', (_) async {
      final federateToIdentityPoolResult = await federateToIdentityPool();

      await expectLater(
        cognitoPlugin.clearFederationToIdentityPool(),
        completes,
      );

      final unauthSession = await cognitoPlugin.fetchAuthSession();
      expect(
        unauthSession.identityIdResult.value,
        isNot(federateToIdentityPoolResult.identityId),
        reason: 'Should clear session and refetch',
      );
      expect(
        unauthSession.credentialsResult.value,
        isNot(federateToIdentityPoolResult.credentials),
        reason: 'Should clear session and refetch',
      );
    });

    asyncTest('can clear nonexistent federation', (_) async {
      await expectLater(
        cognitoPlugin.clearFederationToIdentityPool(),
        completes,
        reason: 'Clearing with no federation is a no-op',
      );
    });
  });
}
