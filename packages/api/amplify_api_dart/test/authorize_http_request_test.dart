// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_api_dart/src/decorators/authorize_http_request.dart';
import 'package:amplify_api_dart/src/graphql/providers/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api_dart/src/graphql/providers/oidc_function_api_auth_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/data/data_outputs.dart';
import 'package:amplify_core/src/config/amplify_outputs/rest_api/rest_api_outputs.dart';
import 'package:test/test.dart';

import 'util.dart';

const _region = 'us-east-1';
const _gqlEndpoint =
    'https://abc123.appsync-api.$_region.amazonaws.com/graphql';
const _restEndpoint = 'https://xyz456.execute-api.$_region.amazonaws.com/test';

AWSHttpRequest _generateTestRequest(String url) {
  return AWSHttpRequest(
    method: AWSHttpMethod.get,
    uri: Uri.parse(url),
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
      const endpointConfig = DataOutputs(
        defaultAuthorizationType: APIAuthorizationType.none,
        authorizationTypes: [],
        url: _restEndpoint,
        awsRegion: _region,
      );
      final inputRequest = _generateTestRequest(endpointConfig.url);

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
      const endpointConfig = RestApiOutputs(
        authorizationType: APIAuthorizationType.userPools,
        url: _restEndpoint,
        awsRegion: _region,
      );
      final inputRequest = _generateTestRequest(endpointConfig.url);
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
      const endpointConfig = DataOutputs(
        defaultAuthorizationType: APIAuthorizationType.iam,
        url: _gqlEndpoint,
        awsRegion: _region,
        authorizationTypes: [
          APIAuthorizationType.iam,
        ],
      );
      final inputRequest = _generateTestRequest(endpointConfig.url);
      final authorizedRequest = await authorizeHttpRequest(
        inputRequest,
        endpointConfig: endpointConfig,
        authProviderRepo: authProviderRepo,
      );
      validateSignedRequest(authorizedRequest);
    });

    test('does not sign body of POST request with IAM REST API', () async {
      const endpointConfig = RestApiOutputs(
        authorizationType: APIAuthorizationType.iam,
        url: _restEndpoint,
        awsRegion: _region,
      );
      final inputRequest = AWSHttpRequest(
        method: AWSHttpMethod.post,
        body: json.encode({
          'foo': 'bar',
        }).codeUnits,
        uri: Uri.parse(endpointConfig.url),
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
      const endpointConfig = RestApiOutputs(
        authorizationType: APIAuthorizationType.apiKey,
        apiKey: testApiKey,
        url: _gqlEndpoint,
        awsRegion: _region,
      );
      final inputRequest = _generateTestRequest(endpointConfig.url);
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

    test('throws when API key not in config', () async {
      const endpointConfig = DataOutputs(
        defaultAuthorizationType: APIAuthorizationType.apiKey,
        // no apiKey value provided
        url: _gqlEndpoint,
        awsRegion: _region,
        authorizationTypes: [
          APIAuthorizationType.apiKey,
        ],
      );
      final inputRequest = _generateTestRequest(endpointConfig.url);
      await expectLater(
        authorizeHttpRequest(
          inputRequest,
          endpointConfig: endpointConfig,
          authProviderRepo: authProviderRepo,
        ),
        throwsA(isA<ConfigurationError>()),
      );
    });

    test('authorizes with Cognito User Pools auth mode', () async {
      const endpointConfig = DataOutputs(
        defaultAuthorizationType: APIAuthorizationType.userPools,
        url: _gqlEndpoint,
        awsRegion: _region,
        authorizationTypes: [
          APIAuthorizationType.userPools,
        ],
      );
      final inputRequest = _generateTestRequest(endpointConfig.url);
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
      const endpointConfig = DataOutputs(
        defaultAuthorizationType: APIAuthorizationType.oidc,
        url: _gqlEndpoint,
        awsRegion: _region,
        authorizationTypes: [
          APIAuthorizationType.oidc,
        ],
      );
      final inputRequest = _generateTestRequest(endpointConfig.url);
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
      const endpointConfig = DataOutputs(
        defaultAuthorizationType: APIAuthorizationType.function,
        url: _gqlEndpoint,
        awsRegion: _region,
        authorizationTypes: [
          APIAuthorizationType.function,
        ],
      );
      final inputRequest = _generateTestRequest(endpointConfig.url);
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

    test('authorizes with authorizationMode parameter that overrides config',
        () async {
      const testApiKey = 'abc-123-fake-key';
      const endpointConfig = DataOutputs(
        defaultAuthorizationType: APIAuthorizationType.userPools,
        apiKey: testApiKey,
        url: _gqlEndpoint,
        awsRegion: _region,
        authorizationTypes: [
          APIAuthorizationType.userPools,
        ],
      );
      final inputRequest = _generateTestRequest(endpointConfig.url);
      final authorizedRequest = await authorizeHttpRequest(
        inputRequest,
        endpointConfig: endpointConfig,
        authProviderRepo: authProviderRepo,
        authorizationMode: APIAuthorizationType.apiKey,
      );
      expect(
        authorizedRequest.headers[xApiKey],
        testApiKey,
      );
      expect(
        authorizedRequest.headers[AWSHeaders.authorization],
        isNull,
      );
    });

    test('throws when no auth provider found', () async {
      final emptyAuthRepo = AmplifyAuthProviderRepository();
      const endpointConfig = DataOutputs(
        defaultAuthorizationType: APIAuthorizationType.apiKey,
        apiKey: 'abc-123-fake-key',
        url: _gqlEndpoint,
        awsRegion: _region,
        authorizationTypes: [
          APIAuthorizationType.apiKey,
        ],
      );
      final inputRequest = _generateTestRequest(endpointConfig.url);
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
