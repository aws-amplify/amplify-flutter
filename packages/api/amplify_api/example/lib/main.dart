// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_example/graphql_api_view.dart';
import 'package:amplify_api_example/rest_api_view.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

import 'amplifyconfiguration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isAmplifyConfigured = false;
  bool _showRestApiView = true;

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    final secureStorage = AmplifySecureStorage(
      config: AmplifySecureStorageConfig(
        scope: 'api',
        // FIXME: In your app, make sure to remove this line and set up
        /// Keychain Sharing in Xcode as described in the docs:
        /// https://docs.amplify.aws/lib/project-setup/platform-setup/q/platform/flutter/#enable-keychain
        // ignore: invalid_use_of_visible_for_testing_member
        macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
      ),
    );
    final authPlugin = AmplifyAuthCognito(credentialStorage: secureStorage);
    await Amplify.addPlugins([
      authPlugin,
      AmplifyAPI(),
    ]);

    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      print(
        'Amplify was already configured. Looks like app restarted on android.',
      );
    }
    setState(() {
      _isAmplifyConfigured = true;
    });

    Amplify.Hub.listen(
      HubChannel.Api,
      (ApiHubEvent event) {
        if (event is SubscriptionHubEvent) {
          safePrint(event);
        }
      },
    );
  }

  void _onRestApiViewButtonClick() {
    setState(() {
      _showRestApiView = true;
    });
  }

  void _onGraphQlApiViewButtonClick() {
    setState(() {
      _showRestApiView = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: _onRestApiViewButtonClick,
                    child: const Text('Rest API'),
                  ),
                  ElevatedButton(
                    onPressed: _onGraphQlApiViewButtonClick,
                    child: const Text('GraphQL API'),
                  )
                ],
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: _showRestApiView == true
                ? const RestApiView()
                : GraphQLApiView(isAmplifyConfigured: _isAmplifyConfigured),
          ),
        ),
      ),
    );
  }
}
