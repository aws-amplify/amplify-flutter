// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/validation_utils.dart';

void main() {
  testRunner.setupTests();

  group('fetchAuthSession', () {
    group('unauthenticated access enabled', () {
      group('no user pool', () {
        setUp(() async {
          await testRunner.configure(
            environmentName: 'identity-pool-only',
          );
        });

        asyncTest('allows retrieving credentials', (_) async {
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
        setUp(() async {
          await testRunner.configure();

          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
          );

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
      setUp(() async {
        await testRunner.configure(
          environmentName: 'authenticated-users-only',
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

      asyncTest('prevents retrieving unauthenticated credentials', (_) async {
        await retrieveUnauthenticatedCredentials();
      });

      asyncTest('allows retrieving authenticated credentials', (_) async {
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
      setUp(() async {
        await testRunner.configure(
          environmentName: 'user-pool-only',
        );
      });

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

      asyncTest('prevents retrieving unauthenticated credentials', (_) async {
        await retrieveUnauthenticatedCredentials();
      });

      asyncTest('prevents retrieving authenticated credentials', (_) async {
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

    for (final environment in userPoolEnvironments) {
      group(environment.name, () {
        Future<Map<String, Object?>> getCustomAttributes({
          bool forceRefresh = false,
        }) async {
          final session = await Amplify.Auth.fetchAuthSession(
            options: FetchAuthSessionOptions(forceRefresh: forceRefresh),
          ) as CognitoAuthSession;
          final idToken = session.userPoolTokensResult.value.idToken;
          return idToken.claims.customClaims;
        }

        setUp(() async {
          await testRunner.configure(
            environmentName: environment.name,
            useAmplifyOutputs: environment.useAmplifyOutputs,
          );
        });

        asyncTest('Can force refresh', (_) async {
          final username = environment.generateUsername();
          final password = generatePassword();

          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
            autoFillAttributes: environment.loginMethod.isUsername,
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

        asyncTest('force refresh reflects updated email/phone', (_) async {
          final username = environment.generateUsername();
          final password = generatePassword();
          final attributeKey = switch (environment.loginMethod) {
            LoginMethod.phone => AuthUserAttributeKey.phoneNumber,
            _ => AuthUserAttributeKey.email
          };
          final originalAttributeValue = switch (environment.loginMethod) {
            LoginMethod.username => generateEmail(),
            _ => username
          };

          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
            autoFillAttributes: environment.loginMethod.isUsername,
            attributes: {
              attributeKey: originalAttributeValue,
            },
          );

          final res = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          expect(res.nextStep.signInStep, AuthSignInStep.done);

          expect(
            await getCustomAttributes(),
            containsPair(attributeKey.key, originalAttributeValue),
            reason: 'Original email is present in token',
          );

          final newAttributeValue = switch (environment.loginMethod) {
            LoginMethod.phone => generatePhoneNumber(),
            _ => generateEmail(),
          };

          final verificationCode = await getOtpCode(
            environment.getLoginAttribute(
              environment.loginMethod.isUsername ? username : newAttributeValue,
            ),
          );

          final attributeRes = await Amplify.Auth.updateUserAttribute(
            userAttributeKey: attributeKey,
            value: newAttributeValue,
          );
          expect(
            attributeRes.nextStep.updateAttributeStep,
            AuthUpdateAttributeStep.confirmAttributeWithCode,
          );

          expect(
            await getCustomAttributes(),
            containsPair(attributeKey.key, originalAttributeValue),
            reason: 'Tokens are not yet refreshed',
          );

          expect(
            await getCustomAttributes(forceRefresh: true),
            allOf([
              containsPair(attributeKey.key, originalAttributeValue),
              containsPair('${attributeKey.key}_verified', true),
            ]),
            reason: 'New attribute is not yet confirmed',
            // attribute is updated immediately if it is not an alias.
            skip: environment.loginMethod.isUsername,
          );

          expect(
            await getCustomAttributes(forceRefresh: true),
            allOf([
              containsPair(attributeKey.key, newAttributeValue),
              containsPair('${attributeKey.key}_verified', false),
            ]),
            reason: 'New attribute is not yet confirmed',
            // attribute is not updated until after confirmation it is an alias.
            skip: !environment.loginMethod.isUsername,
          );

          await Amplify.Auth.confirmUserAttribute(
            userAttributeKey: attributeKey,
            confirmationCode: await verificationCode.code,
          );

          expect(
            await getCustomAttributes(forceRefresh: true),
            allOf([
              containsPair(attributeKey.key, newAttributeValue),
              containsPair('${attributeKey.key}_verified', true),
            ]),
            reason: 'New attribute is confirmed',
          );
        });
      });
    }
  });
}
