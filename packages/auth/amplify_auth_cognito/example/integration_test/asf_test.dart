// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_test/amplify_auth_cognito_test.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart' hide EventType;
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';

void main() {
  testRunner.setupTests();

  final logger = AWSLogger().createChild('ASF');

  group('ASF', () {
    late String username;
    late String password;
    late String email;
    late String phoneNumber;

    setUp(() async {
      await testRunner.configure(
        environmentName: 'asf-audit',
      );
      username = generateUsername();
      password = generatePassword();
      email = generateEmail();
      phoneNumber = generatePhoneNumber();
    });

    // ignore: invalid_use_of_protected_member
    runAsfDeviceInfoTests(() => Amplify.Auth.defaultPlugin.dependencies);

    void validateEvents(Iterable<AuthEventType> events, EventType eventType) {
      expect(events, isNotEmpty);
      for (final event in events) {
        logger.info('Got event: $event');
        expect(event.eventType, eventType);
        expect(event.eventContextData?.deviceName, isNotNull);
        expect(
          event.eventContextData?.deviceName,
          isNot('Other, Other'),
          reason: 'When no `DeviceName` is provided, Cognito defaults to '
              '"Other, Other"',
        );
        expect(event.eventRisk, isNotNull);
        expect(
          event.eventRisk!.riskDecision,
          RiskDecisionType.noRisk,
          reason: 'When the signature algorithm is performed correctly, '
              'Cognito should return a `NoRisk` decision',
        );
      }
    }

    asyncTest('sign up', (_) async {
      final signUpCode = await getOtpCode(UserAttribute.email(email));
      final signUpResult = await Amplify.Auth.signUp(
        username: username,
        password: password,
        options: SignUpOptions(
          userAttributes: {
            CognitoUserAttributeKey.phoneNumber: phoneNumber,
            CognitoUserAttributeKey.email: email,
          },
        ),
      );
      expect(signUpResult.nextStep.signUpStep, AuthSignUpStep.confirmSignUp);

      final confirmSignUpResult = await Amplify.Auth.confirmSignUp(
        username: username,
        confirmationCode: await signUpCode.code,
      );
      expect(confirmSignUpResult.nextStep.signUpStep, AuthSignUpStep.done);

      final authEvents = await adminListAuthEvents(username);
      validateEvents(authEvents, EventType.signUp);
    });

    asyncTest('sign in', (_) async {
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
        attributes: {
          CognitoUserAttributeKey.email: email,
          CognitoUserAttributeKey.phoneNumber: phoneNumber,
        },
      );

      final signInResult = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(signInResult.isSignedIn, isTrue);

      final authEvents = await adminListAuthEvents(username);
      validateEvents(authEvents, EventType.signIn);
    });

    asyncTest('mfa sign in', (_) async {
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
        enableMfa: true,
        attributes: {
          CognitoUserAttributeKey.email: email,
          CognitoUserAttributeKey.phoneNumber: phoneNumber,
        },
      );

      final signInCode = await getOtpCode(
        UserAttribute.phone(phoneNumber),
      );
      final signInResult = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(
        signInResult.nextStep.signInStep,
        AuthSignInStep.confirmSignInWithSmsMfaCode,
      );

      final confirmSignInResult = await Amplify.Auth.confirmSignIn(
        confirmationValue: await signInCode.code,
      );
      expect(
        confirmSignInResult.nextStep.signInStep,
        AuthSignInStep.done,
      );

      final authEvents = await adminListAuthEvents(username);
      validateEvents(authEvents, EventType.signIn);
    });

    asyncTest('forgot password', (_) async {
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
        attributes: {
          CognitoUserAttributeKey.email: email,
          CognitoUserAttributeKey.phoneNumber: phoneNumber,
        },
      );

      final signInResult = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(signInResult.isSignedIn, isTrue);

      final signInEvents = (await adminListAuthEvents(username)).toSet();

      final resetCode = await getOtpCode(UserAttribute.email(email));
      final forgotPasswordResult = await Amplify.Auth.resetPassword(
        username: username,
      );
      expect(
        forgotPasswordResult.nextStep.updateStep,
        AuthResetPasswordStep.confirmResetPasswordWithCode,
      );

      final forgotPasswordEvents = (await adminListAuthEvents(username))
          .toSet()
          .difference(signInEvents);
      validateEvents(forgotPasswordEvents, EventType.forgotPassword);

      password = generatePassword();
      final confirmForgotPasswordResult =
          await Amplify.Auth.confirmResetPassword(
        username: username,
        newPassword: password,
        confirmationCode: await resetCode.code,
      );
      expect(confirmForgotPasswordResult.isPasswordReset, isTrue);

      final confirmForgotPasswordEvents = (await adminListAuthEvents(username))
          .toSet()
          .difference(signInEvents)
          .difference(forgotPasswordEvents);
      validateEvents(confirmForgotPasswordEvents, EventType.forgotPassword);
    });

    asyncTest('resend code', (_) async {
      final signUpCode = await getOtpCode(UserAttribute.email(email));
      final signUpResult = await Amplify.Auth.signUp(
        username: username,
        password: password,
        options: SignUpOptions(
          userAttributes: {
            CognitoUserAttributeKey.phoneNumber: phoneNumber,
            CognitoUserAttributeKey.email: email,
          },
        ),
      );
      expect(signUpResult.nextStep.signUpStep, AuthSignUpStep.confirmSignUp);

      await signUpCode.code; // discard original code
      final signUpEvents = (await adminListAuthEvents(username)).toSet();

      final resendSignUpCode = await getOtpCode(UserAttribute.email(email));
      await Amplify.Auth.resendSignUpCode(username: username);

      final resendEvents = (await adminListAuthEvents(username))
          .toSet()
          .difference(signUpEvents);
      validateEvents(resendEvents, EventType.resendCode);

      final confirmSignUpResult = await Amplify.Auth.confirmSignUp(
        username: username,
        confirmationCode: await resendSignUpCode.code,
      );
      expect(confirmSignUpResult.nextStep.signUpStep, AuthSignUpStep.done);

      final confirmEvents = (await adminListAuthEvents(username))
          .toSet()
          .difference(signUpEvents)
          .difference(resendEvents);
      validateEvents(confirmEvents, EventType.signUp);
    });
  });
}
