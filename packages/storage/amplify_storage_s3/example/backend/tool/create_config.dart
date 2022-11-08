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
  required String bucketName,
  required StorageAccessLevel defaultAccessLevel,
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
        mfaConfiguration: MfaConfiguration.off,
      ),
      storage: StorageConfig(
        plugins: {
          S3PluginConfig.pluginKey: S3PluginConfig(
            region: region,
            bucket: bucketName,
            defaultAccessLevel: defaultAccessLevel,
          ),
        },
      ),
    ),
  );
  return configJson;
}

void main() {
  final outputs = jsonDecode(File('outputs.json').readAsStringSync())
      as Map<String, Object?>;
  final config = StringBuffer();
  config.writeln('const amplifyEnvironments = <String, String>{');
  final environments = outputs.values.single as Map<Object?, Object?>;
  for (final environmentEntry in environments.entries) {
    if (environmentEntry.key == 'BucketName') {
      continue;
    }
    final environment = jsonDecode(
      environmentEntry.value as String,
    ) as Map<String, Object?>;
    final environmentName = environment['EnvironmentName'] as String;
    final environmentConfig = createConfig(
      region: environment['Region'] as String,
      userPoolId: environment['UserPoolId'] as String,
      userPoolClientId: environment['UserPoolClientId'] as String,
      identityPoolId: environment['IdentityPoolId'] as String,
      bucketName: environment['BucketName'] as String,
      defaultAccessLevel:
          StorageAccessLevel.values[environment['DefaultAccessLevel'] as int],
    );
    config.writeln("'$environmentName': '''$environmentConfig''',");
  }
  config.write('''
};

final String amplifyconfig = amplifyEnvironments['main']!;
''');
  File('../lib/amplifyconfiguration.dart').writeAsStringSync(config.toString());
}
