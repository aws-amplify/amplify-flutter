// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('confirmSignIn', () {
    late String username;
    late String tempPassword;
    late OtpResult otpResult;

    setUpAll(() async {
      await configureAuth(
        additionalPlugins: [AmplifyAPI()],
      );
    });

    setUp(() async {
      username = generateUsername();
      tempPassword = generatePassword();

      otpResult = await getOtpCode(UserAttribute.username(username));

      await adminCreateUser(
        username,
        tempPassword,
        enableMfa: true,
        verifyAttributes: true,
      );

      final signInRes = await Amplify.Auth.signIn(
        username: username,
        password: tempPassword,
      );
      expect(signInRes.isSignedIn, isFalse);
      expect(
        signInRes.nextStep.signInStep,
        AuthSignInStep.confirmSignInWithNewPassword,
      );
    });

    asyncTest('confirming signs in user', (_) async {
      final newPassword = generatePassword();

      final confirmRes = await Amplify.Auth.confirmSignIn(
        confirmationValue: newPassword,
      );
      expect(confirmRes.isSignedIn, isFalse);
      expect(
        confirmRes.nextStep.signInStep,
        AuthSignInStep.confirmSignInWithSmsMfaCode,
      );

      final otpCode = await otpResult.code;

      await expectLater(
        Amplify.Auth.confirmSignIn(
          confirmationValue: otpCode,
        ),
        completion(
          isA<SignInResult>().having(
            (res) => res.isSignedIn,
            'isSignedIn',
            isTrue,
          ),
        ),
      );
    });

    asyncTest('allows retrying on code mismatch', (_) async {
      final newPassword = generatePassword();

      final confirmRes = await Amplify.Auth.confirmSignIn(
        confirmationValue: newPassword,
      );
      expect(confirmRes.isSignedIn, isFalse);
      expect(
        confirmRes.nextStep.signInStep,
        AuthSignInStep.confirmSignInWithSmsMfaCode,
      );

      final otpCode = await otpResult.code;

      await expectLater(
        Amplify.Auth.confirmSignIn(
          confirmationValue: 'incorrect-code',
        ),
        throwsA(isA<CodeMismatchException>()),
      );

      await expectLater(
        Amplify.Auth.confirmSignIn(
          confirmationValue: otpCode,
        ),
        completion(
          isA<SignInResult>().having(
            (res) => res.isSignedIn,
            'isSignedIn',
            isTrue,
          ),
        ),
      );
    });
  });
}
