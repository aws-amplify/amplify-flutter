// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/auth_plugin_credentials_provider.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  AWSLogger().logLevel = LogLevel.debug;

  group('Custom Authorizer', () {
    group(
      'User Pools',
      skip: shouldSkip('custom-authorizer-user-pools'),
      () {
        final configJson = amplifyEnvironments['custom-authorizer-user-pools']!;
        final config = AmplifyConfig.fromJson(
          jsonDecode(configJson) as Map<String, Object?>,
        );

        setUpAll(() async {
          await configureAuth(
            config: configJson,
          );
        });

        asyncTest('can invoke with HTTP client', (_) async {
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
          expect(session.userPoolTokensResult.value, isNotNull);

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
            Uri.parse(apiUrl).replace(
              queryParameters: {
                'key': 'value',
              },
            ),
            headers: {
              AWSHeaders.accept: 'application/json;charset=utf-8',
              AWSHeaders.authorization:
                  session.userPoolTokensResult.value.idToken.raw,
            },
            body: utf8.encode(payload),
          );
          final resp = await client.send(request).response;
          final body = await resp.decodeBody();
          expect(resp.statusCode, 200, reason: body);
          expect(
            jsonDecode(body),
            equals({'response': 'hello'}),
          );
        });
      },
    );

    group('IAM', () {
      for (final backend in [
        'custom-authorizer-iam',
        'custom-authorizer-custom-domain',
      ]) {
        group(
          backend,
          skip: shouldSkip(backend),
          () {
            final configJson = amplifyEnvironments[backend]!;
            final config = AmplifyConfig.fromJson(
              jsonDecode(configJson) as Map<String, Object?>,
            );

            asyncTest('can invoke with HTTP client', (_) async {
              await configureAuth(
                config: configJson,
              );
              final cognitoPlugin = Amplify.Auth.getPlugin(
                AmplifyAuthCognito.pluginKey,
              );
              final session = await cognitoPlugin.fetchAuthSession();
              expect(session.credentialsResult.value, isNotNull);

              final restApi = config.api!.awsPlugin!.values
                  .singleWhere((e) => e.endpointType == EndpointType.rest);
              final apiUrl = restApi.endpoint;

              final client = AWSHttpClient()
                ..supportedProtocols = SupportedProtocols.http1;
              addTearDown(client.close);

              final payload = jsonEncode({'request': 'hello'});
              final request = AWSHttpRequest.post(
                Uri.parse(apiUrl).replace(
                  queryParameters: {
                    'key': 'value',
                  },
                ),
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
              final body = await resp.decodeBody();
              expect(resp.statusCode, 200, reason: body);
              expect(
                jsonDecode(body),
                equals({'response': 'hello'}),
              );
            });

            asyncTest('can invoke with API plugin', (_) async {
              await configureAuth(
                config: configJson,
              );
              final cognitoPlugin = Amplify.Auth.getPlugin(
                AmplifyAuthCognito.pluginKey,
              );
              final session = await cognitoPlugin.fetchAuthSession();
              expect(session.credentialsResult.value, isNotNull);

              final restApi = config.api!.awsPlugin!.values
                  .singleWhere((e) => e.endpointType == EndpointType.rest);
              final apiUrl = restApi.endpoint;

              final client = AWSHttpClient()
                ..supportedProtocols = SupportedProtocols.http1;
              addTearDown(client.close);

              final payload = jsonEncode({'request': 'hello'});
              final request = AWSHttpRequest.post(
                Uri.parse(apiUrl).replace(
                  queryParameters: {
                    'key': 'value',
                  },
                ),
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
              final body = await resp.decodeBody();
              expect(resp.statusCode, 200, reason: body);
              expect(
                jsonDecode(body),
                equals({'response': 'hello'}),
              );
            });

            asyncTest('can invoke with API plugin', (_) async {
              await configureAuth(
                config: configJson,
                additionalPlugins: [AmplifyAPI()],
              );
              final cognitoPlugin = Amplify.Auth.getPlugin(
                AmplifyAuthCognito.pluginKey,
              );
              final session = await cognitoPlugin.fetchAuthSession();
              expect(session.credentialsResult.value, isNotNull);

              final restOperation = Amplify.API.post(
                '/',
                body: HttpPayload.json({'request': 'hello'}),
                queryParameters: {
                  'key': 'value',
                },
              );
              final resp = await restOperation.response;
              final body = resp.decodeBody();
              expect(resp.statusCode, 200, reason: body);
              expect(
                jsonDecode(body),
                equals({'response': 'hello'}),
              );
            });
          },
        );
      }
    });
  });
}
