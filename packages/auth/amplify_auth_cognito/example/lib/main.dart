// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/screens/confirm_user_attribute.dart';
import 'package:amplify_auth_cognito_example/screens/update_user_attribute.dart';
import 'package:amplify_auth_cognito_example/screens/update_user_attributes.dart';
import 'package:amplify_auth_cognito_example/screens/view_user_attributes.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'amplifyconfiguration.dart';

final AmplifyLogger _logger = AmplifyLogger('MyApp');

void main() {
  AmplifyLogger().logLevel = LogLevel.verbose;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext _, GoRouterState _) => const HomeScreen(),
      ),
      GoRoute(
        path: '/view-user-attributes',
        builder: (BuildContext _, GoRouterState _) =>
            const ViewUserAttributesScreen(),
      ),
      GoRoute(
        path: '/update-user-attribute',
        builder: (BuildContext _, GoRouterState state) =>
            UpdateUserAttributeScreen(
              userAttributeKey: state.extra as CognitoUserAttributeKey?,
            ),
      ),
      GoRoute(
        path: '/update-user-attributes',
        builder: (BuildContext _, GoRouterState state) =>
            const UpdateUserAttributesScreen(),
      ),
      GoRoute(
        path: '/confirm-user-attribute/email',
        builder: (BuildContext _, GoRouterState state) =>
            const ConfirmUserAttributeScreen(
              userAttributeKey: CognitoUserAttributeKey.email,
            ),
      ),
      GoRoute(
        path: '/confirm-user-attribute/phone_number',
        builder: (BuildContext _, GoRouterState state) =>
            const ConfirmUserAttributeScreen(
              userAttributeKey: CognitoUserAttributeKey.phoneNumber,
            ),
      ),
    ],
  );

  @override
  void initState() {
    super.initState();
    _configure();
  }

  Future<void> _configure() async {
    try {
      await Amplify.addPlugins([
        AmplifyAPI(),
        AmplifyAuthCognito(
          // FIXME: In your app, make sure to remove this line and set up
          /// Keychain Sharing in Xcode as described in the docs:
          /// https://docs.amplify.aws/lib/project-setup/platform-setup/q/platform/flutter/#enable-keychain
          secureStorageFactory: AmplifySecureStorage.factoryFrom(
            macOSOptions:
                // ignore: invalid_use_of_visible_for_testing_member
                MacOSSecureStorageOptions(useDataProtection: false),
          ),
        ),
      ]);

      // Uncomment this block, and comment out the one above to change how
      // credentials are persisted.
      /*
      await Amplify.addPlugin(
          AmplifyAuthCognito(
             secureStorageFactory: (scope) => AmplifySecureStorage.fromConfig(
               config: AmplifySecureStorageConfig(
                 scope: scope.name,
                 webOptions: WebSecureStorageOptions(
                   persistenceOption: WebPersistenceOption.inMemory,
                 ),
               ),
             ),
           ),
         );
       */
      await Amplify.configure(amplifyconfig);
      _logger.debug('Successfully configured Amplify');

      Amplify.Hub.listen(HubChannel.Auth, (event) {
        _logger.info('Auth Event: $event');
      });
    } on Exception catch (e, st) {
      _logger.error('Configuring Amplify failed', e, st);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      preferPrivateSession: true,
      child: MaterialApp.router(
        title: 'Flutter Demo',
        builder: Authenticator.builder(),
        theme: ThemeData.light(useMaterial3: true),
        darkTheme: ThemeData.dark(useMaterial3: true),
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
    final authSession = await Amplify.Auth.fetchAuthSession();
    _logger.info(prettyPrintJson(authSession.toJson()));
  }

  Future<void> _requestGreeting() async {
    setState(() {
      _loading = true;
    });
    try {
      final response = await Amplify.API
          .post('/hello', body: HttpPayload.string(_controller.text))
          .response;
      final decodedBody = response.decodeBody();
      setState(() {
        _greeting = decodedBody;
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
      appBar: AppBar(title: const Text('Amplify Auth Example')),
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
            const SizedBox(height: 30),
            const SignOutButton(),
          ],
        ),
      ),
    );
  }
}
