// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'utils/test_utils.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
  binding.deferFirstFrame();

  final authenticator = Authenticator(
    child: MaterialApp(
      initialRoute: '/routeA',
      routes: {
        '/routeA': (BuildContext context) => const RouteA(),
        '/routeB': (BuildContext context) => const AuthenticatedView(
              child: RouteB(),
            ),
      },
    ),
  );

  group('unprotected routes', () {
    setUpAll(() async {
      await loadConfiguration(
        environmentName: 'sign-in-with-username',
      );
    });

    tearDown(signOut);

    // Scenario: Sign in then sign out
    testWidgets('Sign in then sign out', (tester) async {
      final username = generateUsername();
      final password = generatePassword();
      final cognitoUsername = await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );
      addTearDown(() => deleteUser(cognitoUsername));

      SignInPage signInPage = SignInPage(tester: tester);
      RouteAPage routeAPage = RouteAPage(tester: tester);
      RouteBPage routeBPage = RouteBPage(tester: tester);

      // when I launch the authenticator
      await loadAuthenticator(tester: tester, authenticator: authenticator);

      // then I should see route A
      routeAPage.expectIsPresent();

      // when I navigate to route B
      await routeAPage.navigateToRouteB();

      // then I should see the sign in page
      signInPage.expectUsername();

      // When I type my "username" with status "CONFIRMED"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      /// Then I see route B
      routeBPage.expectIsPresent();

      // And I click the "Sign out" button
      await signInPage.submitSignOut();

      // then I should see the sign in page
      signInPage.expectUsername();
    });
  });
}

const routeAKey = Key('route-a');
const navToRouteBButtonKey = Key('nav-to-route-b-button');
const routeBKey = Key('route-b');

class RouteA extends StatelessWidget {
  const RouteA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: routeAKey,
      appBar: AppBar(
        title: const Text('Route A'),
      ),
      body: Center(
        child: ElevatedButton(
          key: navToRouteBButtonKey,
          onPressed: () =>
              Navigator.of(context).pushReplacementNamed('/routeB'),
          child: const Text('Goto Route B'),
        ),
      ),
    );
  }
}

class RouteB extends StatelessWidget {
  const RouteB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: routeBKey,
      appBar: AppBar(
        title: const Text('Route B'),
      ),
      body: const Center(
        child: SignOutButton(),
      ),
    );
  }
}

class RouteAPage {
  RouteAPage({required this.tester});

  final WidgetTester tester;

  Finder get routeA => find.byKey(routeAKey);
  Finder get navToRouteBButton => find.byKey(navToRouteBButtonKey);

  void expectIsPresent() {
    expect(routeA, findsOneWidget);
  }

  Future<void> navigateToRouteB() async {
    await tester.ensureVisible(navToRouteBButton);
    await tester.tap(navToRouteBButton);
    await tester.pumpAndSettle();
  }
}

class RouteBPage {
  RouteBPage({required this.tester});

  final WidgetTester tester;
  Finder get routeB => find.byKey(routeBKey);

  void expectIsPresent() {
    expect(routeB, findsOneWidget);
  }
}
