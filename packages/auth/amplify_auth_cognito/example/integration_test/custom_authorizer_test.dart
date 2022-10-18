// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:convert';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/auth_plugin_credentials_provider.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  AWSLogger().logLevel = LogLevel.debug;

  group('Custom Authorizer', () {
    group('User Pools', () {
      final configJson = amplifyEnvironments['custom-authorizer-user-pools']!;
      final config = AmplifyConfig.fromJson(
        jsonDecode(configJson) as Map<String, Object?>,
      );

      setUpAll(() async {
        await configureAuth(
          config: configJson,
        );
      });

      test('can invoke with HTTP client', () async {
        final username = generateUsername();
        final password = generatePassword();

        final signUpRes = await Amplify.Auth.signUp(
          username: username,
          password: password,
        );
        expect(signUpRes.isSignUpComplete, isTrue);

        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        expect(signInRes.isSignedIn, isTrue);

        final session =
            await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
        expect(session.userPoolTokens, isNotNull);

        final apiUrl = config.api!.awsPlugin!.values
            .singleWhere((e) => e.endpointType == EndpointType.rest)
            .endpoint;

        final client = AWSHttpClient()
          ..supportedProtocols = SupportedProtocols.http1;
        addTearDown(client.close);

        // Verifies invocation with the ID token. Invocation with an access
        // token requires integration with a resource server/OAuth and is, thus,
        // not tested.
        //
        // https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-enable-cognito-user-pool.html

        final payload = jsonEncode({'request': 'hello'});
        final request = AWSHttpRequest.post(
          Uri.parse(apiUrl),
          headers: {
            AWSHeaders.accept: 'application/json;charset=utf-8',
            AWSHeaders.authorization: session.userPoolTokens!.idToken.raw,
          },
          body: utf8.encode(payload),
        );
        final resp = await client.send(request).response;
        expect(resp.statusCode, 200);
        expect(
          jsonDecode(await resp.decodeBody()),
          equals({'response': 'hello'}),
        );
      });
    });

    group('IAM', () {
      final configJson = amplifyEnvironments['custom-authorizer-iam']!;
      final config = AmplifyConfig.fromJson(
        jsonDecode(configJson) as Map<String, Object?>,
      );

      setUpAll(() async {
        await configureAuth(
          config: configJson,
        );
      });

      test('can invoke with HTTP client', () async {
        final cognitoPlugin = Amplify.Auth.getPlugin(
          AmplifyAuthCognito.pluginKey,
        );
        final session = await cognitoPlugin.fetchAuthSession(
          options: const CognitoSessionOptions(getAWSCredentials: true),
        );
        expect(session.credentials, isNotNull);

        final restApi = config.api!.awsPlugin!.values
            .singleWhere((e) => e.endpointType == EndpointType.rest);
        final apiUrl = restApi.endpoint;

        final client = AWSHttpClient()
          ..supportedProtocols = SupportedProtocols.http1;
        addTearDown(client.close);

        final payload = jsonEncode({'request': 'hello'});
        final request = AWSHttpRequest.post(
          Uri.parse(apiUrl),
          headers: const {
            AWSHeaders.accept: 'application/json;charset=utf-8',
          },
          body: utf8.encode(payload),
        );
        final signer = AWSSigV4Signer(
          credentialsProvider: AuthPluginCredentialsProviderImpl(
            // ignore: invalid_use_of_protected_member
            cognitoPlugin.plugin.stateMachine,
          ),
        );
        final scope = AWSCredentialScope(
          region: restApi.region,
          service: AWSService.apiGatewayManagementApi,
        );
        final signedRequest = await signer.sign(
          request,
          credentialScope: scope,
        );
        final resp = await client.send(signedRequest).response;
        expect(resp.statusCode, 200);
        expect(
          jsonDecode(await resp.decodeBody()),
          equals({'response': 'hello'}),
        );
      });
    });
  });
}
