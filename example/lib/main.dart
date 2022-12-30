// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/Pages/LoadingPage.dart';

import 'Pages/LandingPage.dart';
/*
IMPORTANT - THIS LINE WILL NOT COMPILE
That is intentional

You need to generate your own amplifyconfiguration.dart
for accessing your own AWS resources.

You will use the Amplify CLI tool for that.  Please read the
README.md contained within the root of this project to learn
about what you'll need to do.
 */
import 'amplifyconfiguration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isAmplifyConfigured = false;

  @override
  initState() {
    super.initState();
    _initAmplifyFlutter();
  }

  void _initAmplifyFlutter() async {
    AmplifyAuthCognito auth = AmplifyAuthCognito();
    AmplifyStorageS3 storage = AmplifyStorageS3();
    AmplifyAnalyticsPinpoint analytics = AmplifyAnalyticsPinpoint();

    Amplify.addPlugins([auth, storage, analytics]);

    // Initialize AmplifyFlutter
    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      print(
          "Amplify was already configured. Looks like app restarted on android.");
    }

    setState(() {
      _isAmplifyConfigured = true;
    });
  }

  Widget _display() {
    if (_isAmplifyConfigured) {
      return LandingPage();
    } else {
      return LoadingPage();
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Amplify App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: _display());
  }
}
