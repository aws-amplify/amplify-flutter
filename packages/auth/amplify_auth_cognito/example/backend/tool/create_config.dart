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
  required String? identityPoolId,
  required String? graphQLApiEndpoint,
  required String? graphQLApiKey,
  required String? restApiUrl,
}) {
  final configJson = const JsonEncoder.withIndent('  ').convert(
    AmplifyConfig(
      auth: AuthConfig.cognito(
        userPoolConfig: CognitoUserPoolConfig(
          appClientId: userPoolClientId,
          poolId: userPoolId,
          region: region,
        ),
        identityPoolConfig: identityPoolId == null
            ? null
            : CognitoIdentityCredentialsProvider(
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
            if (graphQLApiEndpoint != null)
              'authIntegrationTest': AWSApiConfig(
                endpointType: EndpointType.graphQL,
                authorizationType: APIAuthorizationType.apiKey,
                endpoint: graphQLApiEndpoint,
                apiKey: graphQLApiKey,
                region: region,
              ),
            if (restApiUrl != null)
              'customAuthorizer': AWSApiConfig(
                endpointType: EndpointType.rest,
                authorizationType: APIAuthorizationType.userPools,
                endpoint: restApiUrl,
                region: region,
              ),
          })
        },
      ),
    ),
  );
  return configJson;
}

void main() {
  final outputs = jsonDecode(File('outputs.json').readAsStringSync())
      as Map<String, dynamic>;
  final config = StringBuffer();
  config.writeln('const amplifyEnvironments = <String, String>{');
  for (final environment in outputs.values.cast<Map<Object?, Object?>>()) {
    final environmentName = environment['EnvironmentName'] as String;
    final environmentConfig = createConfig(
      region: environment['Region'] as String,
      userPoolId: environment['UserPoolId'] as String,
      userPoolClientId: environment['UserPoolClientId'] as String,
      identityPoolId: environment['IdentityPoolId'] as String?,
      graphQLApiEndpoint: environment['GraphQLApiEndpoint'] as String?,
      graphQLApiKey: environment['GraphQLApiKey'] as String?,
      restApiUrl: environment['RestApiUrl'] as String?,
    );
    config.writeln("'$environmentName': '''$environmentConfig''',");
  }
  config.write('''
};

final String amplifyconfig = amplifyEnvironments['main']!;
''');
  File('../lib/amplifyconfiguration.dart').writeAsStringSync(config.toString());
}
