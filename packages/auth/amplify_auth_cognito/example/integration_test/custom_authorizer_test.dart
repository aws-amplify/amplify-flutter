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
              expect(session.userPoolTokensResult.valueOrNull, isNotNull);

              final apiUrl = config.api!.awsPlugin!.values
                  .singleWhere((e) => e.endpointType == EndpointType.rest)
                  .endpoint;

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
              final resp = await client.send(request).response;
              final body = await resp.decodeBody();
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
                  final cognitoPlugin = Amplify.Auth.getPlugin(
                    AmplifyAuthCognito.pluginKey,
                  );
                  final session = await cognitoPlugin.fetchAuthSession();
                  expect(session.credentialsResult.valueOrNull, isNotNull);

                  final restApi = config.api!.awsPlugin!.values
                      .singleWhere((e) => e.endpointType == EndpointType.rest);
                  final apiUrl = Uri.parse(restApi.endpoint);

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
                  final signer = AWSSigV4Signer(
                    credentialsProvider: AWSCredentialsProvider(
                      session.credentialsResult.value,
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
