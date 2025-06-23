// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library;

import 'dart:async';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore_example/amplifyconfiguration.dart';
import 'package:amplify_datastore_example/widgets/navigator_scaffold.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'models/ModelProviderExampleApp.dart';

part 'widgets/event_display_widgets.dart';
part 'widgets/queries_display_widgets.dart';
part 'widgets/save_model_widgets.dart';

void main() {
  runApp(MyApp());
}

final divider = VerticalDivider(color: Colors.white, width: 10);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AmplifyDataStore datastorePlugin;
  bool _isAmplifyConfigured = false;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    try {
      datastorePlugin = AmplifyDataStore(
        modelProvider: ModelProvider.instance,
        options: DataStorePluginOptions(
          errorHandler: ((error) => {
            print("Custom ErrorHandler received: " + error.toString()),
          }),
          authModeStrategy: AuthModeStrategy.multiAuth,
        ),
      );
      await Amplify.addPlugin(datastorePlugin);

      // Configure

      // Comment the below lines to disable remote sync.
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.addPlugin(AmplifyAPI());
      await Amplify.configure(amplifyconfig);
      // replace the above two lines with this to force local sync only
      // await Amplify.configure("{}");
    } on AmplifyAlreadyConfiguredException {
      print(
        'Amplify was already configured. Looks like app restarted on android.',
      );
    }

    setState(() {
      _isAmplifyConfigured = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        title: 'Best DataStore App Ever',
        home: NavigatorScaffold(isAmplifyConfigured: _isAmplifyConfigured),
      ),
    );
  }
}
