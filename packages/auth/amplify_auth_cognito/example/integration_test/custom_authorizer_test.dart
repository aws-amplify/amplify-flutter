// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';

class CognitoUserPoolsAuthorizer extends OIDCAuthProvider {
  const CognitoUserPoolsAuthorizer();

  @override
  Future<String?> getLatestAuthToken() async {
    final session = await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
    return session.userPoolTokensResult.valueOrNull?.idToken.raw;
  }
}

void main() {
  testRunner.setupTests();

  group('Custom Authorizer', () {
    const customHeaders = {
      'x-lower-case': 'value',
      'X-UPPER-CASE': 'VALUE',
    };
    const queryParameters = {
      'test-key': 'test-value',
      'special-key': r'!@#$%^&*() _-+={}[]\/;',
    };

    const userPoolEnv = 'custom-authorizer-user-pools';
    group(
      'User Pools',
      skip: testRunner.shouldSkip(userPoolEnv),
      () {
        final configJson = amplifyEnvironments[userPoolEnv]!;
        final config = AmplifyConfig.fromJson(
          jsonDecode(configJson) as Map<String, Object?>,
        );

        for (final supportedProtocols in SupportedProtocols.values) {
          group(supportedProtocols.name, () {
            late AWSHttpClient client;

            setUp(() async {
              client = AWSHttpClient()..supportedProtocols = supportedProtocols;
              addTearDown(client.close);
              await testRunner.configure(
                environmentName: userPoolEnv,
                apiAuthProviders: const [
                  CognitoUserPoolsAuthorizer(),
                ],
                baseClient: client,
              );
              addTearDown(Amplify.Auth.deleteUser);
            });

            asyncTest('can invoke with HTTP client', (_) async {
              List<String> checkpoints = [];
              try {
                checkpoints.add('TestTestTest - 1');
                final username = generateUsername();
                final password = generatePassword();

                checkpoints.add('TestTestTest - 2');
                final signUpRes = await Amplify.Auth.signUp(
                  username: username,
                  password: password,
                );
                expect(signUpRes.isSignUpComplete, isTrue);

                checkpoints.add('TestTestTest - 3');
                final signInRes = await Amplify.Auth.signIn(
                  username: username,
                  password: password,
                );
                expect(signInRes.isSignedIn, isTrue);

                checkpoints.add('TestTestTest - 4');
                final session =
                    await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
                expect(session.userPoolTokensResult.valueOrNull, isNotNull);

                checkpoints.add('TestTestTest - 5');
                final apiUrl = config.api!.awsPlugin!.values
                    .singleWhere((e) => e.endpointType == EndpointType.rest)
                    .endpoint;

                checkpoints.add('TestTestTest - 6');
                // Verifies invocation with the ID token. Invocation with an access
                // token requires integration with a resource server/OAuth and is, thus,
                // not tested.
                //
                // https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-enable-cognito-user-pool.html

                final request = AWSStreamedHttpRequest.post(
                  Uri.parse(apiUrl).replace(
                    queryParameters: queryParameters,
                  ),
                  headers: {
                    AWSHeaders.accept: 'application/json;charset=utf-8',
                    AWSHeaders.authorization:
                        session.userPoolTokensResult.value.idToken.raw,
                    ...customHeaders,
                  },
                  body: HttpPayload.json({'request': 'hello'}),
                );
                checkpoints.add('TestTestTest - 7');
                final resp = await client.send(request).response;
                checkpoints.add('TestTestTest - 8');
                final body = await resp.decodeBody();
                checkpoints.add('TestTestTest - 9');
                expect(resp.statusCode, 200, reason: body);
                expect(
                  jsonDecode(body),
                  equals({'response': 'hello'}),
                );
                checkpoints.add('TestTestTest - 10');
                customHeaders.forEach((key, value) {
                  expect(
                    resp.headers,
                    containsPair(key, value),
                  );
                });
                checkpoints.add('TestTestTest - 11');
                queryParameters.forEach((key, value) {
                  expect(
                    resp.headers,
                    containsPair('x-query-$key', value),
                  );
                });
                checkpoints.add('TestTestTest - 12');
              } catch (e) {
                checkpoints.add('TestTestTest - Error: $e');
                throw Exception('$e - CheckPoints1 = $checkpoints');
              }
            });

            asyncTest('can invoke with API plugin', (_) async {
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

              final restOperation = Amplify.API.post(
                '/',
                queryParameters: queryParameters,
                headers: customHeaders,
                body: HttpPayload.json({'request': 'hello'}),
              );
              try {
                final resp = await restOperation.response;
                final body = resp.decodeBody();
                expect(resp.statusCode, 200, reason: body);
                expect(
                  jsonDecode(body),
                  equals({'response': 'hello'}),
                );
                customHeaders.forEach((key, value) {
                  expect(
                    resp.headers,
                    containsPair(key, value),
                  );
                });
                queryParameters.forEach((key, value) {
                  expect(
                    resp.headers,
                    containsPair('x-query-$key', value),
                  );
                });
              } on HttpStatusException catch (e) {
                fail('${e.response.statusCode}: ${e.response.decodeBody()}');
              }
            });
          });
        }
      },
    );

    group('IAM', () {
      for (final backend in [
        'custom-authorizer-iam',
        'custom-authorizer-custom-domain',
      ]) {
        group(
          backend,
          skip: testRunner.shouldSkip(backend),
          () {
            final configJson = amplifyEnvironments[backend];
            if (configJson == null) return;

            final config = AmplifyConfig.fromJson(
              jsonDecode(configJson) as Map<String, Object?>,
            );
            for (final supportedProtocols in SupportedProtocols.values) {
              group(supportedProtocols.name, () {
                late AWSHttpClient client;

                setUp(() async {
                  client = AWSHttpClient()
                    ..supportedProtocols = supportedProtocols;
                  addTearDown(client.close);
                  await testRunner.configure(
                    environmentName: backend,
                    baseClient: client,
                  );
                });

                asyncTest('can invoke with HTTP client', (_) async {
                  List<String> checkpoints = [];
                  try {
                    checkpoints.add('TestTestTest - 1');
                    final cognitoPlugin = Amplify.Auth.getPlugin(
                      AmplifyAuthCognito.pluginKey,
                    );
                    checkpoints.add('TestTestTest - 2');
                    final session = await cognitoPlugin.fetchAuthSession();
                    checkpoints.add('TestTestTest - 3');
                    expect(session.credentialsResult.valueOrNull, isNotNull);
                    checkpoints.add('TestTestTest - 4');

                    final restApi = config.api!.awsPlugin!.values.singleWhere(
                        (e) => e.endpointType == EndpointType.rest);
                    checkpoints.add('TestTestTest - 5');
                    final apiUrl = Uri.parse(restApi.endpoint);
                    checkpoints.add('TestTestTest - 6');

                    final payload = jsonEncode({'request': 'hello'});
                    final request = AWSHttpRequest.post(
                      apiUrl.replace(
                        queryParameters: queryParameters,
                      ),
                      headers: const {
                        AWSHeaders.accept: 'application/json;charset=utf-8',
                        ...customHeaders,
                      },
                      body: utf8.encode(payload),
                    );
                    checkpoints.add('TestTestTest - 7');
                    final signer = AWSSigV4Signer(
                      credentialsProvider: AWSCredentialsProvider(
                        session.credentialsResult.value,
                      ),
                    );
                    checkpoints.add('TestTestTest - 8');
                    final scope = AWSCredentialScope(
                      region: restApi.region,
                      service: AWSService.apiGatewayManagementApi,
                    );
                    checkpoints.add('TestTestTest - 9');
                    final signedRequest = await signer.sign(
                      request,
                      credentialScope: scope,
                    );
                    checkpoints.add('TestTestTest - 10');
                    final resp = await client.send(signedRequest).response;
                    checkpoints.add('TestTestTest - 11');
                    final body = await resp.decodeBody();
                    checkpoints.add('TestTestTest - 12');
                    expect(resp.statusCode, 200, reason: body);
                    checkpoints.add('TestTestTest - 13');
                    expect(
                      jsonDecode(body),
                      equals({'response': 'hello'}),
                    );
                    checkpoints.add('TestTestTest - 14');
                    customHeaders.forEach((key, value) {
                      expect(
                        resp.headers,
                        containsPair(key, value),
                      );
                    });
                    checkpoints.add('TestTestTest - 15');
                    queryParameters.forEach((key, value) {
                      expect(
                        resp.headers,
                        containsPair('x-query-$key', value),
                      );
                    });
                    checkpoints.add('TestTestTest - 16');
                  } catch (e) {
                    checkpoints.add('TestTestTest - Error: $e');
                    throw Exception('$e - CheckPoints2 = $checkpoints');
                  }
                });

                asyncTest('can invoke with API plugin', (_) async {
                  final cognitoPlugin = Amplify.Auth.getPlugin(
                    AmplifyAuthCognito.pluginKey,
                  );
                  final session = await cognitoPlugin.fetchAuthSession();
                  expect(session.credentialsResult.valueOrNull, isNotNull);

                  final restOperation = Amplify.API.post(
                    '/',
                    queryParameters: queryParameters,
                    headers: customHeaders,
                    body: HttpPayload.json({'request': 'hello'}),
                  );
                  try {
                    final resp = await restOperation.response;
                    final body = resp.decodeBody();
                    expect(resp.statusCode, 200, reason: body);
                    expect(
                      jsonDecode(body),
                      equals({'response': 'hello'}),
                    );
                    customHeaders.forEach((key, value) {
                      expect(
                        resp.headers,
                        containsPair(key, value),
                      );
                    });
                    queryParameters.forEach((key, value) {
                      expect(
                        resp.headers,
                        containsPair('x-query-$key', value),
                      );
                    });
                  } on HttpStatusException catch (e) {
                    fail(
                      '${e.response.statusCode}: ${e.response.decodeBody()}',
                    );
                  }
                });
              });
            }
          },
        );
      }
    });
  });
}
