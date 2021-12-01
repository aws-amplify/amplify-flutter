/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';

import 'envs/auth_with_email.dart' as auth_with_email;
import 'envs/auth_with_phone.dart' as auth_with_phone;
import 'envs/auth_with_username.dart' as auth_with_username;

/// All envs modeled on:
/// https://github.com/aws-amplify/amplify-ui/blob/main/examples/angular/src/pages/ui/components/authenticator/
const environmentsByConfiguration = {
  'ui/components/authenticator/sign-up-with-email': 'auth-with-email',
  'ui/components/authenticator/sign-up-with-phone': 'auth-with-phone',
  'ui/components/authenticator/sign-up-with-username': 'auth-with-username',
  'ui/components/authenticator/sign-in-with-username': 'auth-with-username',
  'ui/components/authenticator/sign-in-with-phone': 'auth-with-phone',
  'ui/components/authenticator/sign-in-sms-mfa': 'auth-with-phone',
};

const environments = {
  'auth-with-email': auth_with_email.amplifyconfig,
  'auth-with-phone': auth_with_phone.amplifyconfig,
  'auth-with-username': auth_with_username.amplifyconfig,
};

Future<void> loadConfiguration(String configurationName,
    {List<AmplifyPluginInterface>? additionalConfigs}) async {
  final envName = environmentsByConfiguration[configurationName]!;
  final envConfig = environments[envName]!;
  await Amplify.addPlugin(AmplifyAuthCognito());
  if (additionalConfigs != null && additionalConfigs.isNotEmpty) {
    Amplify.addPlugins(additionalConfigs);
  }
  await Amplify.configure(envConfig);
}
