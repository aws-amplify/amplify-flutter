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
    {List<AmplifyPluginInterface> additionalPlugins = const []}) async {
  if (!Amplify.isConfigured) {
    final authPlugin = AmplifyAuthCognito();
    await Amplify.addPlugins([authPlugin, ...additionalPlugins]);
    await Amplify.configure(amplifyconfig);
  }
}

// ensure no user is currently signed in
Future<void> signOutUser() async {
  try {
    await Amplify.Auth.signOut();
  } on AuthException {
    // Ignore a signOut error because we only care when someone signed in.
  }
}
