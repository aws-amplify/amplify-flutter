// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('confirmSignIn', () {
    late String username;
    late String password;
    late OtpResult otpResult;

    setUpAll(() async {
      await configureAuth(
        additionalPlugins: [AmplifyAPI()],
      );
    });

    setUp(() async {
      username = generateUsername();
      password = generatePassword();

      otpResult = await getOtpCode(username);

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        enableMfa: true,
        verifyAttributes: true,
      );

      final signInRes = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      expect(signInRes.isSignedIn, isFalse);
      expect(
        signInRes.nextStep.signInStep,
        AuthSignInStep.confirmSignInWithSmsMfaCode,
      );
    });

    asyncTest('confirming signs in user', (_) async {
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
