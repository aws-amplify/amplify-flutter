// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final AmplifyLogger _logger = AmplifyLogger('MyStorageApp');

void main() {
  AmplifyLogger().logLevel = LogLevel.debug;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext _, GoRouterState __) => const HomeScreen(),
      ),
    ],
  );

  @override
  void initState() {
    super.initState();
    configureAmplify();
  }

  Future<void> configureAmplify() async {
    final secureStorage = AmplifySecureStorage(
      config: AmplifySecureStorageConfig(
        scope: 'storage',
        // FIXME: In your app, make sure to remove this line and set up
        /// Keychain Sharing in Xcode as described in the docs:
        /// https://docs.amplify.aws/lib/project-setup/platform-setup/q/platform/flutter/#enable-keychain
        // ignore: invalid_use_of_visible_for_testing_member
        macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
      ),
    );
    final auth = AmplifyAuthCognito(credentialStorage: secureStorage);
    final storage = AmplifyStorageS3();

    try {
      await Amplify.addPlugins([auth, storage]);
      await Amplify.configure(amplifyconfig);
      _logger.debug('Successfully configured Amplify');
    } on Exception catch (error) {
      _logger.debug('Something went wrong configuring Amplify: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      preferPrivateSession: true,
      child: MaterialApp.router(
        title: 'Flutter Demo',
        builder: Authenticator.builder(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amplify Storage Example'),
      ),
      // TODO(dnys1): Remove for Dart 3.0
      // ignore: prefer_const_constructors
      body: Center(
        // ignore: prefer_const_constructors
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Examples are coming...'),
          ],
        ),
      ),
    );
  }
}
