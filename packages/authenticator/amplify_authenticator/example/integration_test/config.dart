// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/test_utils.dart';

Future<void> loadConfiguration({
  required String environmentName,
  List<AmplifyPluginInterface> additionalConfigs = const [],
}) async {
  final envConfig = amplifyEnvironments[environmentName]!;
  await Amplify.addPlugin(AmplifyAuthCognito());
  if (additionalConfigs.isNotEmpty) {
    await Amplify.addPlugins(additionalConfigs);
  }
  await Amplify.configure(envConfig);
  addTearDown(Amplify.reset);
  await signOut();
}
