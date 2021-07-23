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
import 'finders/widgets_finder.dart';

import 'package:amplify_authenticator_example/main.dart' as app;

import 'utils/mock_data.dart';

void main() {
  group('Sign In and Sign Out', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    setUpAll(() async {});

    testWidgets("Signing in and out a confirmed user",
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

      await tester.enterText(
          usernameSignInFormFieldFinder, 'isralejo25@hotmail.es');
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.enterText(passwordSignInFormFieldFinder, 'Welcome1234!');
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      //Signing In

      await tester.tap(signInButtonFinder);

      final stateAuthenticated = await subscription.first;

      expect(stateAuthenticated, isA<Authenticated>());

      await tester.pumpAndSettle();

      //Signing Out

      await tester.tap(signOutButtonFinder);
      final stateAuthFlow = await subscription.first;

      expect(stateAuthFlow, isA<AuthFlow>());
      await tester.pumpAndSettle();
    });

    testWidgets("Signing in an unregistered  user",
        (WidgetTester tester) async {
      final username = generateUsername();
      final password = generatePassword();
      app.main();
      await tester.pumpAndSettle();

      late InheritedAuthBloc authBloc;
      try {
        authBloc = await tester.widget(inheritedAuthBlocFinder);
      } catch (e) {
        fail('Error finding auth bloc: $e');
      }

      await tester.enterText(usernameSignInFormFieldFinder, username);
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.enterText(passwordSignInFormFieldFinder, password);
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      await tester.tap(signInButtonFinder);

      final subscription = await authBloc.authBloc.exceptions;
      final stateAuthenticated = await subscription.first;

      expect(stateAuthenticated, isA<AuthenticatorException>());
    });
  });
}
