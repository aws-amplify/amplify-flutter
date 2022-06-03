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
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

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
    } on Exception catch (e) {
      safePrint('Configuring Amplify failed: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        title: 'Flutter Demo',
        builder: Authenticator.builder(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        title: Text(widget.title),
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
            const SizedBox(height: 30),
            const SignOutButton(),
          ],
        ),
      ),
    );
  }
}
