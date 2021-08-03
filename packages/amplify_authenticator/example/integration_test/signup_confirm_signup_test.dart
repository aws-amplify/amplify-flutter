/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/models/authenticator_exceptions.dart';

import 'finders/signup_finder.dart';
import 'finders/widgets_finder.dart';
import 'finders/confirm_signup_finder.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'package:amplify_authenticator_example/main.dart' as app;

//This tests asumes a default amplify configuration where
//username is neither a email or phone number but username.
void main() {
  group('Sign Up and Confirm Sign Up', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    setUpAll(() async {});

    testWidgets("Creates an account", (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      late InheritedAuthBloc authBloc;
      try {
        authBloc = await tester.widget(inheritedAuthBlocFinder);
      } catch (e) {
        fail('Error finding auth bloc: $e');
      }
      final subscription = await authBloc.authBloc.stream;

      //Going to sign up screen
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.tap(gotToSignUpButtonFinder);

      final stateAuthFlowSignUp = await subscription.first;

      expect(stateAuthFlowSignUp, isA<AuthFlow>());
      await tester.pumpAndSettle();

      //Creating account

      await tester.enterText(usernameSignUpFormFieldFinder, generateUsername());
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.enterText(passwordSignUpFormFieldFinder, generatePassword());
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.enterText(emailSignUpFormFieldFinder, generateEmail());
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.enterText(phoneNumberSignUpFormFieldFinder, mockPhoneNumber);
      await Future<void>.delayed(const Duration(seconds: 2));

      await tester.tap(signUpButtonFinder);

      final stateAuthFlowConfirm = await subscription.first;

      expect(stateAuthFlowConfirm, isA<AuthFlow>());

      await tester.pumpAndSettle();

      //Confirm sign up

      await tester.enterText(
          usernameConfirmSignUpFormFieldFinder, generateUsername());
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.enterText(codeConfirmSignUpFormFieldFinder, mockCode);
      await Future<void>.delayed(const Duration(seconds: 2));


      //For now, this screen uses a mocked code and doesn't call the
      // confirmSignUp method.

      await tester.tap(backToSignInButtonFinder);

      final stateAuthFlowSignIn = await subscription.first;

      expect(stateAuthFlowSignIn, isA<AuthFlow>());
      await tester.pumpAndSettle();
    });

    testWidgets("Creates an account with an existent username",
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      late InheritedAuthBloc authBloc;
      try {
        authBloc = await tester.widget(inheritedAuthBlocFinder);
      } catch (e) {
        fail('Error finding auth bloc: $e');
      }
      final subscriptionStream = await authBloc.authBloc.stream;

      //Going to sign up screen
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.tap(gotToSignUpButtonFinder);

      final stateAuthFlowSignUp = await subscriptionStream.first;

      expect(stateAuthFlowSignUp, isA<AuthFlow>());

      await tester.pumpAndSettle();

      //Creating account

      await tester.enterText(usernameSignUpFormFieldFinder, 'amplify-user-01');
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.enterText(passwordSignUpFormFieldFinder, generatePassword());
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.enterText(emailSignUpFormFieldFinder, generateEmail());
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.enterText(phoneNumberSignUpFormFieldFinder, mockPhoneNumber);
      await Future<void>.delayed(const Duration(seconds: 2));

      await tester.tap(signUpButtonFinder);

      final subscriptionException = await authBloc.authBloc.exceptions;
      final authenticatorException = await subscriptionException!.first;
      expect(authenticatorException, isA<AuthenticatorException>());

      await tester.pumpAndSettle();
    });
  });
}
