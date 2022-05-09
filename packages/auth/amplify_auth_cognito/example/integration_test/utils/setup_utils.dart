//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'dart:convert';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

Future<void> configureAuth(
    {List<AmplifyPluginInterface> additionalPlugins = const [],
    bool customAuth = false}) async {
  if (!Amplify.isConfigured) {
    final authPlugin = AmplifyAuthCognito();
    String config = _createConfig(amplifyconfig, customAuth: customAuth);
    await Amplify.addPlugins([authPlugin, ...additionalPlugins]);
    await Amplify.configure(config);
  }
}

// ensure no user is currently signed in
Future<void> signOutUser() async {
  try {
    await Amplify.Auth.signOut();
    // ignore: unused_catch_clause
  } on AuthException catch (e) {
    // Ignore a signOut error because we only care when someone signed in.
  }
}

// parse json, and switch auth mode if required by test
String _createConfig(String amplifyconfig, {bool customAuth = false}) {
  String config = amplifyconfig;
  if (customAuth) {
    var configString = jsonDecode(amplifyconfig);
    configString['auth']['plugins']['awsCognitoAuthPlugin']['Auth']['Default']
        ['authenticationFlowType'] = 'CUSTOM_AUTH';
    config = jsonEncode(configString);
  }
  return config;
}
