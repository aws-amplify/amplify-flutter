import 'dart:async';

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';

import 'amplifyconfiguration.dart';
import 'models/ModelProvider.dart';

Future<void> main() async {
  AWSLogger().logLevel = LogLevel.verbose;
  WidgetsFlutterBinding.ensureInitialized();
  safePrint('Configuring Amplify...');
  await Amplify.addPlugins([
    AmplifyAuthCognito(),
    AmplifyStorageS3(),
    AmplifyAnalyticsPinpoint(),
    AmplifyAPI(
      options: APIPluginOptions(modelProvider: ModelProvider.instance),
    ),
    AmplifyDataStore(
      modelProvider: ModelProvider.instance,
    ),
  ]);
  await Amplify.configure(amplifyconfig);
  safePrint('Successfully configured Amplify.');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        title: 'Amplify Flutter Canary',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        builder: Authenticator.builder(),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amplify Flutter Canary'),
      ),
      body: const Center(
        child: Text('Signed in'),
      ),
    );
  }
}
