/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_example/graphql_api_view.dart';
import 'package:amplify_api_example/rest_api_view.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
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
  bool _isAmplifyConfigured = false;
  bool _showRestApiView = true;

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    Amplify.addPlugins([AmplifyAuthCognito(), AmplifyAPI()]);

    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      print(
          'Amplify was already configured. Looks like app restarted on android.');
    }
    setState(() {
      _isAmplifyConfigured = true;
    });
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                ElevatedButton(
                    onPressed: _onRestApiViewButtonClick,
                    child: const Text('Rest API')),
                ElevatedButton(
                    onPressed: _onGraphQlApiViewButtonClick,
                    child: const Text('GraphQL API'))
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: _showRestApiView == true
              ? const RestApiView()
              : GraphQLApiView(isAmplifyConfigured: _isAmplifyConfigured),
        ),
      ),
    );
  }
}
