// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_api_dart/src/decorators/authorize_http_request.dart';
import 'package:amplify_api_dart/src/graphql/providers/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api_dart/src/graphql/providers/oidc_function_api_auth_provider.dart';
import 'package:amplify_core/amplify_config.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

import 'util.dart';

const _region = 'us-east-1';
final _gqlEndpoint =
    Uri.parse('https://abc123.appsync-api.$_region.amazonaws.com/graphql');
final _restEndpoint =
    Uri.parse('https://xyz456.execute-api.$_region.amazonaws.com/test');

AWSHttpRequest _generateTestRequest(Uri uri) {
  return AWSHttpRequest(
    method: AWSHttpMethod.get,
    uri: uri,
  );
}

void main() {
  final authProviderRepo = AmplifyAuthProviderRepository();

  setUpAll(() {
    authProviderRepo
      ..registerAuthProvider(
        APIAuthorizationType.apiKey.authProviderToken,
        AppSyncApiKeyAuthProvider(),
      )
      ..registerAuthProvider(
        APIAuthorizationType.iam.authProviderToken,
        TestIamAuthProvider(),
      )
      ..registerAuthProvider(
        APIAuthorizationType.userPools.authProviderToken,
        TestTokenAuthProvider(),
      )
      ..registerAuthProvider(
        APIAuthorizationType.oidc.authProviderToken,
        OidcFunctionAuthProvider(const CustomOIDCProvider()),
      )
      ..registerAuthProvider(
        APIAuthorizationType.function.authProviderToken,
        OidcFunctionAuthProvider(const CustomFunctionProvider()),
      );
  });

  group('authorizeHttpRequest', () {
    test('no-op for auth mode NONE', () async {
      final endpointConfig = ApiEndpointConfig.apiGateway(
        name: '',
        endpoint: _restEndpoint,
        region: _region,
        authMode: const ApiAuthorizationMode.none(),
      );
      final inputRequest = _generateTestRequest(endpointConfig.endpoint);

      final authorizedRequest = await authorizeHttpRequest(
        inputRequest,
        endpointConfig: endpointConfig,
        authProviderRepo: authProviderRepo,
      );
      expect(
        authorizedRequest.headers.containsKey(AWSHeaders.authorization),
        isFalse,
      );
      expect(authorizedRequest, inputRequest);
    });

    test('no-op for request with Authorization header already set', () async {
      final endpointConfig = ApiEndpointConfig.apiGateway(
        name: '',
        authMode: const ApiAuthorizationMode.userPools(),
        endpoint: _restEndpoint,
        region: _region,
      );
      final inputRequest = _generateTestRequest(endpointConfig.endpoint);
      const testAuthValue = 'foo';
      inputRequest.headers
          .putIfAbsent(AWSHeaders.authorization, () => testAuthValue);

      final authorizedRequest = await authorizeHttpRequest(
        inputRequest,
        endpointConfig: endpointConfig,
        authProviderRepo: authProviderRepo,
      );
      expect(
        authorizedRequest.headers[AWSHeaders.authorization],
        testAuthValue,
      );
      expect(authorizedRequest, inputRequest);
    });

    test('authorizes request with IAM auth provider', () async {
      final endpointConfig = ApiEndpointConfig.appSync(
        name: '',
        authMode: const ApiAuthorizationMode.iam(),
        endpoint: _gqlEndpoint,
        region: _region,
      );
      final inputRequest = _generateTestRequest(endpointConfig.endpoint);
      final authorizedRequest = await authorizeHttpRequest(
        inputRequest,
        endpointConfig: endpointConfig,
        authProviderRepo: authProviderRepo,
      );
      validateSignedRequest(authorizedRequest);
    });

    test('does not sign body of POST request with IAM REST API', () async {
      final endpointConfig = ApiEndpointConfig.apiGateway(
        name: '',
        authMode: const ApiAuthorizationMode.iam(),
        endpoint: _restEndpoint,
        region: _region,
      );
      final inputRequest = AWSHttpRequest(
        method: AWSHttpMethod.post,
        body: json.encode({
          'foo': 'bar',
        }).codeUnits,
        uri: endpointConfig.endpoint,
      );
      final authorizedRequest = await authorizeHttpRequest(
        inputRequest,
        endpointConfig: endpointConfig,
        authProviderRepo: authProviderRepo,
      );
      expect(
        authorizedRequest.headers.containsKey(AWSHeaders.contentSHA256),
        isFalse,
      );
    });

    test('authorizes request with API key', () async {
      const testApiKey = 'abc-123-fake-key';
      final endpointConfig = ApiEndpointConfig.appSync(
        name: '',
        authMode: const ApiAuthorizationMode.apiKey(testApiKey),
        endpoint: _gqlEndpoint,
        region: _region,
      );
      final inputRequest = _generateTestRequest(endpointConfig.endpoint);
      final authorizedRequest = await authorizeHttpRequest(
        inputRequest,
        endpointConfig: endpointConfig,
        authProviderRepo: authProviderRepo,
      );
      expect(
        authorizedRequest.headers[xApiKey],
        testApiKey,
      );
    });

    test('authorizes with Cognito User Pools auth mode', () async {
      final endpointConfig = ApiEndpointConfig.appSync(
        name: '',
        authMode: const ApiAuthorizationMode.userPools(),
        endpoint: _gqlEndpoint,
        region: _region,
      );
      final inputRequest = _generateTestRequest(endpointConfig.endpoint);
      final authorizedRequest = await authorizeHttpRequest(
        inputRequest,
        endpointConfig: endpointConfig,
        authProviderRepo: authProviderRepo,
      );
      expect(
        authorizedRequest.headers[AWSHeaders.authorization],
        testAccessToken,
      );
    });

    test('authorizes with OIDC auth mode', () async {
      final endpointConfig = ApiEndpointConfig.appSync(
        name: '',
        authMode: const ApiAuthorizationMode.oidc(),
        endpoint: _gqlEndpoint,
        region: _region,
      );
      final inputRequest = _generateTestRequest(endpointConfig.endpoint);
      final authorizedRequest = await authorizeHttpRequest(
        inputRequest,
        endpointConfig: endpointConfig,
        authProviderRepo: authProviderRepo,
      );
      expect(
        authorizedRequest.headers[AWSHeaders.authorization],
        testOidcToken,
      );
    });

    test('authorizes with lambda (function) auth mode', () async {
      final endpointConfig = ApiEndpointConfig.appSync(
        name: '',
        authMode: const ApiAuthorizationMode.function(),
        endpoint: _gqlEndpoint,
        region: _region,
      );
      final inputRequest = _generateTestRequest(endpointConfig.endpoint);
      final authorizedRequest = await authorizeHttpRequest(
        inputRequest,
        endpointConfig: endpointConfig,
        authProviderRepo: authProviderRepo,
      );
      expect(
        authorizedRequest.headers[AWSHeaders.authorization],
        testFunctionToken,
      );
    });

    test('throws when no auth provider found', () async {
      final emptyAuthRepo = AmplifyAuthProviderRepository();
      final endpointConfig = ApiEndpointConfig.appSync(
        name: '',
        authMode: const ApiAuthorizationMode.apiKey('abc-123-fake-key'),
        endpoint: _gqlEndpoint,
        region: _region,
      );
      final inputRequest = _generateTestRequest(endpointConfig.endpoint);
      await expectLater(
        authorizeHttpRequest(
          inputRequest,
          endpointConfig: endpointConfig,
          authProviderRepo: emptyAuthRepo,
        ),
        throwsA(isA<ConfigurationError>()),
      );
    });
  });
}
