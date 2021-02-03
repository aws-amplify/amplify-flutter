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
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'amplifyconfiguration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isAmplifyConfigured = false;
  bool _showRestApiView = true;

  AmplifyAPI apiRest;

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    apiRest = AmplifyAPI();

    Amplify.addPlugin(apiRest);
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
                  padding: EdgeInsets.all(10.0),
                  child: Row(children: [
                    ElevatedButton(
                        child: const Text("Rest API"),
                        onPressed: _onRestApiViewButtonClick),
                    ElevatedButton(
                        child: const Text("GraphQL API"),
                        onPressed: _onGraphQlApiViewButtonClick)
                  ]))),
          body: Padding(
              padding: EdgeInsets.all(10.0),
              child: _showRestApiView == true
                  ? RestApiView()
                  : GraphQLApiView(isAmplifyConfigured: _isAmplifyConfigured))),
    );
  }
}
