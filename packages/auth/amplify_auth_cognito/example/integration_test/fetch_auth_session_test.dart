// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';
import 'utils/validation_utils.dart';

void main() {
  initTests();

  group('fetchAuthSession', () {
    group('unauthenticated access enabled', () {
      group('no user pool', () {
        setUpAll(() async {
          await configureAuth(
            config: amplifyEnvironments['identity-pool-only']!,
          );
        });

        test('allows retrieving credentials', () async {
          final session =
              await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
          expect(session.isSignedIn, isFalse);
          expect(session.credentialsResult.valueOrNull, isA<AWSCredentials>());
          expect(session.identityIdResult.valueOrNull, isA<String>());
          expect(
            () => session.userPoolTokensResult.value,
            throwsA(const InvalidAccountTypeException.noUserPool()),
          );
          expect(
            () => session.userSubResult.value,
            throwsA(const InvalidAccountTypeException.noUserPool()),
          );
        });
      });

      group('with user pool', () {
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
        });

        tearDownAll(Amplify.reset);

        setUp(() async {
          await signOutUser();
          final res = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          expect(res.isSignedIn, isTrue);
        });

        asyncTest(
          'should return user credentials',
          (_) async {
            final res =
                await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
            expect(res.isSignedIn, isTrue);
            expect(isValidUserSub(res.userSubResult.value), isTrue);
            expect(isValidIdentityId(res.identityIdResult.value), isTrue);
            expect(isValidAWSCredentials(res.credentialsResult.value), isTrue);
            expect(
              isValidAWSCognitoUserPoolTokens(res.userPoolTokensResult.value),
              isTrue,
            );
          },
        );

        group('user is signed out', () {
          asyncTest(
            'should return isSignedIn as false with credentials present',
            (_) async {
              await Amplify.Auth.signOut();
              final res =
                  await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
              expect(res.isSignedIn, isFalse);
              expect(
                () => res.userPoolTokensResult.value,
                throwsA(isA<SignedOutException>()),
              );
              expect(
                () => res.userSubResult.value,
                throwsA(isA<SignedOutException>()),
              );
              expect(isValidIdentityId(res.identityIdResult.value), isTrue);
              expect(
                isValidAWSCredentials(res.credentialsResult.value),
                isTrue,
              );
            },
          );
        });
      });
    });

    group('unauthenticated access disabled', () {
      setUpAll(() async {
        await configureAuth(
          config: amplifyEnvironments['authenticated-users-only']!,
        );
      });

      Future<void> retrieveUnauthenticatedCredentials() async {
        final session =
            await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
        expect(session.isSignedIn, isFalse);
        expect(
          () => session.credentialsResult.value,
          throwsA(isA<SessionExpiredException>()),
        );
        expect(
          () => session.identityIdResult.value,
          throwsA(isA<SessionExpiredException>()),
        );
        expect(
          () => session.userPoolTokensResult.value,
          throwsA(isA<SignedOutException>()),
        );
        expect(
          () => session.userSubResult.value,
          throwsA(isA<SignedOutException>()),
        );
      }

      test('prevents retrieving unauthenticated credentials', () async {
        await retrieveUnauthenticatedCredentials();
      });

      test('allows retrieving authenticated credentials', () async {
        await retrieveUnauthenticatedCredentials();

        final username = generateUsername();
        final password = generatePassword();

        await adminCreateUser(
          username,
          password,
          verifyAttributes: true,
          autoConfirm: true,
        );

        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        expect(
          signInRes.isSignedIn,
          isTrue,
          reason: '${signInRes.nextStep.signInStep} should be "DONE"',
        );

        final session =
            await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
        expect(session.isSignedIn, isTrue);
        expect(
          () => session.credentialsResult.value,
          returnsNormally,
        );
        expect(
          () => session.identityIdResult.value,
          returnsNormally,
        );
        expect(
          () => session.userPoolTokensResult.value,
          returnsNormally,
        );
        expect(
          () => session.userSubResult.value,
          returnsNormally,
        );
      });
    });

    group('user pool-only', () {
      setUpAll(() async {
        await configureAuth(
          config: amplifyEnvironments['user-pool-only']!,
        );
      });

      tearDown(signOutUser);

      Future<void> retrieveUnauthenticatedCredentials() async {
        final session =
            await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
        expect(session.isSignedIn, isFalse);
        expect(
          () => session.credentialsResult.value,
          throwsA(isA<InvalidAccountTypeException>()),
        );
        expect(
          () => session.identityIdResult.value,
          throwsA(isA<InvalidAccountTypeException>()),
        );
        expect(
          () => session.userPoolTokensResult.value,
          throwsA(isA<SignedOutException>()),
        );
        expect(
          () => session.userSubResult.value,
          throwsA(isA<SignedOutException>()),
        );
      }

      test('prevents retrieving unauthenticated credentials', () async {
        await retrieveUnauthenticatedCredentials();
      });

      test('prevents retrieving authenticated credentials', () async {
        await retrieveUnauthenticatedCredentials();

        final username = generateUsername();
        final password = generatePassword();

        await adminCreateUser(
          username,
          password,
          verifyAttributes: true,
          autoConfirm: true,
        );

        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        expect(
          signInRes.isSignedIn,
          isTrue,
          reason: '${signInRes.nextStep.signInStep} should be "DONE"',
        );

        final session =
            await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
        expect(session.isSignedIn, isTrue);
        expect(
          () => session.credentialsResult.value,
          throwsA(isA<InvalidAccountTypeException>()),
        );
        expect(
          () => session.identityIdResult.value,
          throwsA(isA<InvalidAccountTypeException>()),
        );
        expect(
          () => session.userPoolTokensResult.value,
          returnsNormally,
        );
        expect(
          () => session.userSubResult.value,
          returnsNormally,
        );
      });
    });

    for (final environmentName in userPoolEnvironments) {
      group(environmentName, () {
        Future<Map<String, Object?>> getCustomAttributes({
          bool forceRefresh = false,
        }) async {
          final session = await Amplify.Auth.fetchAuthSession(
            options: FetchAuthSessionOptions(forceRefresh: forceRefresh),
          ) as CognitoAuthSession;
          final idToken = session.userPoolTokensResult.value.idToken;
          return idToken.claims.customClaims;
        }

        setUpAll(() async {
          await configureAuth(
            config: amplifyEnvironments[environmentName]!,
          );
        });

        asyncTest('Can force refresh', (_) async {
          final username = generateUsername();
          final password = generatePassword();

          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
          );

          final res = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          expect(res.nextStep.signInStep, AuthSignInStep.done);

          expect(
            await getCustomAttributes(),
            isNot(contains('address')),
            reason: 'No custom attrs exist yet',
          );

          await Amplify.Auth.updateUserAttribute(
            userAttributeKey: AuthUserAttributeKey.address,
            value: '1 Main St',
          );

          expect(
            await getCustomAttributes(),
            isNot(contains('address')),
            reason: 'Token is not yet updated',
          );

          expect(
            await getCustomAttributes(forceRefresh: true),
            contains('address'),
            reason: 'Token is updated via force refresh',
          );
        });

        asyncTest('force refresh reflects updated email', (_) async {
          final username = generateUsername();
          final password = generatePassword();
          final originalEmail = generateEmail();

          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
            attributes: [
              AuthUserAttribute(
                userAttributeKey: AuthUserAttributeKey.email,
                value: originalEmail,
              ),
            ],
          );

          final res = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          expect(res.nextStep.signInStep, AuthSignInStep.done);

          expect(
            await getCustomAttributes(),
            containsPair('email', originalEmail),
            reason: 'Original email is present in token',
          );

          final newEmail = generateEmail();
          final verificationCode = await getOtpCode(
            UserAttribute.email(newEmail),
          );

          final attributeRes = await Amplify.Auth.updateUserAttribute(
            userAttributeKey: AuthUserAttributeKey.email,
            value: newEmail,
          );
          expect(
            attributeRes.nextStep.updateAttributeStep,
            AuthUpdateAttributeStep.confirmAttributeWithCode,
          );

          expect(
            await getCustomAttributes(),
            containsPair('email', originalEmail),
            reason: 'Tokens are not yet refreshed',
          );

          expect(
            await getCustomAttributes(forceRefresh: true),
            allOf([
              containsPair('email', newEmail),
              containsPair('email_verified', false),
            ]),
            reason: 'New email is not yet confirmed',
          );

          await Amplify.Auth.confirmUserAttribute(
            userAttributeKey: AuthUserAttributeKey.email,
            confirmationCode: await verificationCode.code,
          );

          expect(
            await getCustomAttributes(forceRefresh: true),
            allOf([
              containsPair('email', newEmail),
              containsPair('email_verified', true),
            ]),
            reason: 'New email is confirmed',
          );
        });
      });
    }
  });
}
