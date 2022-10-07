#!/usr/bin/env dart
// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'dart:convert';
import 'dart:io';

import 'package:amplify_core/amplify_core.dart';

String createConfig({
  required String region,
  required String userPoolId,
  required String userPoolClientId,
  required String identityPoolId,
  required String graphQLApiEndpoint,
  required String graphQLApiKey,
}) {
  final configJson = const JsonEncoder.withIndent('  ').convert(
    AmplifyConfig(
      auth: AuthConfig.cognito(
        userPoolConfig: CognitoUserPoolConfig(
          appClientId: userPoolClientId,
          poolId: userPoolId,
          region: region,
        ),
        identityPoolConfig: CognitoIdentityCredentialsProvider(
          region: region,
          poolId: identityPoolId,
        ),
        authenticationFlowType: AuthenticationFlowType.userSrpAuth,
        passwordProtectionSettings: const PasswordProtectionSettings(
          passwordPolicyMinLength: 8,
          passwordPolicyCharacters: [
            PasswordPolicyCharacters.requiresLowercase,
            PasswordPolicyCharacters.requiresUppercase,
            PasswordPolicyCharacters.requiresNumbers,
            PasswordPolicyCharacters.requiresSymbols,
          ],
        ),
        mfaTypes: const [MfaType.sms],
        mfaConfiguration: MfaConfiguration.optional,
        verificationMechanisms: const [
          CognitoUserAttributeKey.email,
          CognitoUserAttributeKey.phoneNumber,
        ],
      ),
      api: ApiConfig(
        plugins: {
          AWSApiPluginConfig.pluginKey: AWSApiPluginConfig({
            'authIntegrationTest': AWSApiConfig(
              endpointType: EndpointType.graphQL,
              authorizationType: APIAuthorizationType.apiKey,
              endpoint: graphQLApiEndpoint,
              apiKey: graphQLApiKey,
              region: region,
            ),
          })
        },
      ),
    ),
  );
  return '''
const amplifyconfig = \'\'\'
$configJson
\'\'\';
''';
}

void main() {
  final outputs = (jsonDecode(File('outputs.json').readAsStringSync())
      as Map<String, dynamic>)['AuthIntegrationTestStack'] as Map;
  final config = createConfig(
    region: outputs['Region'] as String,
    userPoolId: outputs['UserPoolId'] as String,
    userPoolClientId: outputs['UserPoolClientId'] as String,
    identityPoolId: outputs['IdentityPoolId'] as String,
    graphQLApiEndpoint: outputs['GraphQLApiEndpoint'] as String,
    graphQLApiKey: outputs['GraphQLApiKey'] as String,
  );
  File('../lib/amplifyconfiguration.dart').writeAsStringSync(config);
}
