// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/test_utils.dart';

Future<void> loadConfiguration({
  required String environmentName,
}) async {
  final envConfig = amplifyEnvironments[environmentName]!;
  final authPlugin = AmplifyAuthCognito(
    secureStorageFactory: AmplifySecureStorage.factoryFrom(
      macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
    ),
  );
  final hasApiPlugin = AmplifyConfig.fromJson(
        jsonDecode(envConfig) as Map<String, dynamic>,
      ).api?.awsPlugin !=
      null;
  await Amplify.addPlugins([authPlugin, if (hasApiPlugin) AmplifyAPI()]);
  await Amplify.configure(envConfig);
  addTearDown(Amplify.reset);
  await signOut();
}
