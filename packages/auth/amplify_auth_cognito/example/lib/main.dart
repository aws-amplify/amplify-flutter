// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/screens/confirm_user_attribute.dart';
import 'package:amplify_auth_cognito_example/screens/update_password.dart';
import 'package:amplify_auth_cognito_example/screens/update_user_attribute.dart';
import 'package:amplify_auth_cognito_example/screens/update_user_attributes.dart';
import 'package:amplify_auth_cognito_example/screens/view_session_screen.dart';
import 'package:amplify_auth_cognito_example/screens/view_user_attributes.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'amplifyconfiguration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final _router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext _, GoRouterState __) => const HomeScreen(),
    ),
    GoRoute(
      path: '/view-user-attributes',
      builder: (BuildContext _, GoRouterState __) =>
          const ViewUserAttributesScreen(),
    ),
    GoRoute(
      path: '/update-user-attribute',
      builder: (BuildContext _, GoRouterState state) =>
          const UpdateUserAttributeScreen(),
    ),
    GoRoute(
      path: '/update-user-attributes',
      builder: (BuildContext _, GoRouterState state) =>
          const UpdateUserAttributesScreen(),
    ),
    GoRoute(
      path: '/confirm-user-attribute/:attribute',
      builder: (BuildContext _, GoRouterState state) =>
          ConfirmUserAttributeScreen(
        userAttributeKey: CognitoUserAttributeKey.parse(
          state.params['attribute']!,
        ),
      ),
    ),
    GoRoute(
      path: '/reset-password',
      builder: (BuildContext _, GoRouterState __) =>
          const UpdatePasswordScreen(),
    ),
    GoRoute(
      path: '/view-session',
      builder: (BuildContext _, GoRouterState __) => const ViewSessionScreen(),
    ),
  ]);

  @override
  void initState() {
    super.initState();
    _configure();
  }

  Future<void> _configure() async {
    try {
      if (!zIsWeb && (Platform.isAndroid || Platform.isIOS)) {
        await Amplify.addPlugin(AmplifyAPI());
      }
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.configure(amplifyconfig);
      safePrint('Successfully configured Amplify');

      Amplify.Hub.listen(HubChannel.Auth, (event) {
        safePrint('Auth Event: $event');
      });
    } on Exception catch (e) {
      safePrint('Configuring Amplify failed: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      preferPrivateSession: true,
      child: MaterialApp.router(
        title: 'Flutter Demo',
        builder: Authenticator.builder(),
        theme: ThemeData(primarySwatch: Colors.blue),
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _greeting = '';
  var _loading = false;
  late final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchAuthSession();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _fetchAuthSession() async {
    final authSession = await Amplify.Auth.fetchAuthSession(
      options: const CognitoSessionOptions(getAWSCredentials: true),
    ) as CognitoAuthSession;
    safePrint(authSession);
  }

  Future<void> _requestGreeting() async {
    setState(() {
      _loading = true;
    });
    try {
      final response = await Amplify.API
          .post(
            restOptions: RestOptions(
              path: '/hello',
              body: utf8.encode(_controller.text) as Uint8List,
            ),
          )
          .response;
      setState(() {
        _greeting = response.body;
      });
    } on Exception catch (e) {
      setState(() {
        _greeting = e.toString();
      });
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amplify Auth Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_loading)
              const CircularProgressIndicator()
            else
              Text(_greeting),
            const SizedBox(height: 30),
            TextField(controller: _controller),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _requestGreeting,
              child: const Text('Request Greeting'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.push('/view-user-attributes'),
              child: const Text('View User Attributes'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.push('/update-user-attribute'),
              child: const Text('Update User Attribute'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.push('/update-user-attributes'),
              child: const Text('Update User Attributes'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => context.push('/reset-password'),
              child: const Text('Update Password'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => context.push('/view-session'),
              child: const Text('View Session'),
            ),
            const SizedBox(height: 12),
            const SignOutButton(),
          ],
        ),
      ),
    );
  }
}
