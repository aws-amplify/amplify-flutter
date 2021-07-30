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

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'finders/signIn_finder.dart';
import 'finders/confirm_signin_finder.dart';
import 'finders/widgets_finder.dart';

import 'package:amplify_authenticator_example/main.dart' as app;

import 'utils/mock_data.dart';

void main() {
  //For now, this test uses a mocked code.
  group('Sign in and confirm sign in', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    setUpAll(() async {});

    testWidgets("sign and in and back to sign in", (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      late InheritedAuthBloc authBloc;
      try {
        authBloc = await tester.widget(inheritedAuthBlocFinder);
      } catch (e) {
        fail('Error finding auth bloc: $e');
      }

      //Signing In

      await tester.enterText(usernameSignInFormFieldFinder, 'amplify-user-00');
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.enterText(passwordSignInFormFieldFinder, 'Welcome1234!');
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      await tester.tap(signInButtonFinder);
      final subscription = await authBloc.authBloc.stream;
      final stateAuthFlowConfirmSignIn = await subscription.first;

      expect(stateAuthFlowConfirmSignIn, isA<AuthFlow>());

      await tester.pumpAndSettle();

      //Confirm Sign In

      await tester.enterText(codeConfirmSignInFormFieldFinder, mockCode);
      await Future<void>.delayed(const Duration(seconds: 2));

      await tester.tap(backToSignInButtonFinder);

      final stateAuthFlowSignIn = await subscription.first;

      expect(stateAuthFlowSignIn, isA<AuthFlow>());
      await tester.pumpAndSettle();
    });

    testWidgets("sign and confirm sign in with a wrong code",
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      late InheritedAuthBloc authBloc;
      try {
        authBloc = await tester.widget(inheritedAuthBlocFinder);
      } catch (e) {
        fail('Error finding auth bloc: $e');
      }
      final subscription = await authBloc.authBloc.stream;
      //Signing In

      await tester.enterText(usernameSignInFormFieldFinder, 'amplify-user-00');
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.enterText(passwordSignInFormFieldFinder, 'Welcome1234!');
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      await tester.tap(signInButtonFinder);

      final stateAuthFlowConfirmSignIn = await subscription.first;

      expect(stateAuthFlowConfirmSignIn, isA<AuthFlow>());

      await tester.pumpAndSettle();

      //Confirm Sign In

      await tester.enterText(codeConfirmSignInFormFieldFinder, mockCode);
      await Future<void>.delayed(const Duration(seconds: 2));

      await tester.tap(confirmSignInButtonFinder);

      final subscriptionException = await authBloc.authBloc.exceptions;
      final authenticatorException = await subscriptionException.first;

      expect(authenticatorException, isA<AuthenticatorException>());

      await tester.pumpAndSettle();
    });
  });
}
