import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

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
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> _configureAmplify() async {
    try {
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      print(
          'Amplify was already configured. Looks like app restarted on android.');
    }
  }

  // Platform messages are asynchronous, so we initializ in an async method.
  Future<void> initPlatformState() async {
    await _configureAmplify();
  }

  Future<void> _dummySignup() async {
    await Amplify.Auth.signUp(
      username: '',
      password: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: _dummySignup, child: const Text('Sign up'))),
      ),
    );
  }
}
