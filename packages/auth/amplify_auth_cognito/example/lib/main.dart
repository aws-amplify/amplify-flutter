// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/screens/confirm_user_attribute.dart';
import 'package:amplify_auth_cognito_example/screens/passkey_management.dart';
import 'package:amplify_auth_cognito_example/screens/update_user_attribute.dart';
import 'package:amplify_auth_cognito_example/screens/update_user_attributes.dart';
import 'package:amplify_auth_cognito_example/screens/view_user_attributes.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'amplify_outputs.dart';

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
      GoRoute(
        path: '/passkeys',
        builder: (BuildContext _, GoRouterState _) =>
            const PasskeyManagementScreen(),
      ),
    ],
  );

  @override
  void initState() {
    super.initState();
    _configure();
  }

  /// Configures the [AWSHttpClient] to accept all certificates on Windows.
  ///
  /// On Windows, Dart's BoringSSL does not use the system certificate store,
  /// which can cause `CERTIFICATE_VERIFY_FAILED: unable to get local issuer
  /// certificate` errors when connecting to AWS endpoints. This workaround
  /// registers a pre-configured [AWSHttpClient] that bypasses certificate
  /// verification.
  void _configureWindowsHttpClient() {
    if (!Platform.isWindows) return;
    final httpClient = AWSHttpClient()
      ..onBadCertificate = (_, _, _) => true;
    // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
    Amplify.dependencies.addInstance<AWSHttpClient>(httpClient);
  }

  Future<void> _configure() async {
    try {
      _configureWindowsHttpClient();
      await Amplify.addPlugin(
        AmplifyAuthCognito(
          secureStorageFactory: AmplifySecureStorage.factoryFrom(
            macOSOptions:
                // ignore: invalid_use_of_visible_for_testing_member
                MacOSSecureStorageOptions(useDataProtection: false),
          ),
        ),
      );
      await Amplify.configure(amplifyConfig);
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
      signInForm: SignInForm(),
      passwordlessSettings: const PasswordlessSettings(
        preferredAuthMethod: AuthFactorType.webAuthn,
        passkeyRegistrationPrompts: PasskeyRegistrationPrompts.enabled(),
      ),
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
  final _loading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Amplify Auth Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_loading) const CircularProgressIndicator(),
            const SizedBox(height: 30),
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
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () => context.push('/passkeys'),
              icon: const Icon(Icons.fingerprint),
              label: const Text('Manage Passkeys'),
            ),
            const SizedBox(height: 30),
            const SignOutButton(),
          ],
        ),
      ),
    );
  }
}
