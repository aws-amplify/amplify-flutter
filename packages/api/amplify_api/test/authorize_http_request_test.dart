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

import 'package:amplify_api/src/decorators/authorize_http_request.dart';
import 'package:amplify_api/src/graphql/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api/src/oidc_function_api_auth_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';
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
  TestWidgetsFlutterBinding.ensureInitialized();

  final authProviderRepo = AmplifyAuthProviderRepository();

  setUpAll(() {
    authProviderRepo
      ..registerAuthProvider(
        APIAuthorizationMode.apiKey.authProviderToken,
        AppSyncApiKeyAuthProvider(),
      )
      ..registerAuthProvider(
        APIAuthorizationMode.iam.authProviderToken,
        TestIamAuthProvider(),
      )
      ..registerAuthProvider(
        APIAuthorizationMode.userPools.authProviderToken,
        TestTokenAuthProvider(),
      )
      ..registerAuthProvider(
        APIAuthorizationMode.oidc.authProviderToken,
        OidcFunctionAuthProvider(const CustomOIDCProvider()),
      )
      ..registerAuthProvider(
        APIAuthorizationMode.function.authProviderToken,
        OidcFunctionAuthProvider(const CustomFunctionProvider()),
      );
  });

  group('authorizeHttpRequest', () {
    test('no-op for auth mode NONE', () async {
      const endpointConfig = AWSApiConfig(
        authorizationType: APIAuthorizationMode.none,
        endpoint: _restEndpoint,
        endpointType: EndpointType.rest,
        region: _region,
      );
      final inputRequest = _generateTestRequest(endpointConfig.endpoint);

      final authorizedRequest = await authorizeHttpRequest(
        inputRequest,
        endpointConfig: endpointConfig,
        authProviderRepo: authProviderRepo,
      );
      expect(authorizedRequest.headers.containsKey(AWSHeaders.authorization),
          isFalse);
      expect(authorizedRequest, inputRequest);
    });

    test('no-op for request with Authorization header already set', () async {
      const endpointConfig = AWSApiConfig(
        authorizationType: APIAuthorizationMode.userPools,
        endpoint: _restEndpoint,
        endpointType: EndpointType.rest,
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
          authorizedRequest.headers[AWSHeaders.authorization], testAuthValue);
      expect(authorizedRequest, inputRequest);
    });

    test('authorizes request with IAM auth provider', () async {
      const endpointConfig = AWSApiConfig(
        authorizationType: APIAuthorizationMode.iam,
        endpoint: _gqlEndpoint,
        endpointType: EndpointType.graphQL,
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

    test('authorizes request with API key', () async {
      const testApiKey = 'abc-123-fake-key';
      const endpointConfig = AWSApiConfig(
        authorizationType: APIAuthorizationMode.apiKey,
        apiKey: testApiKey,
        endpoint: _gqlEndpoint,
        endpointType: EndpointType.graphQL,
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

    test('throws when API key not in config', () async {
      const endpointConfig = AWSApiConfig(
        authorizationType: APIAuthorizationMode.apiKey,
        // no apiKey value provided
        endpoint: _gqlEndpoint,
        endpointType: EndpointType.graphQL,
        region: _region,
      );
      final inputRequest = _generateTestRequest(endpointConfig.endpoint);
      expectLater(
          authorizeHttpRequest(
            inputRequest,
            endpointConfig: endpointConfig,
            authProviderRepo: authProviderRepo,
          ),
          throwsA(isA<ApiException>()));
    });

    test('authorizes with Cognito User Pools auth mode', () async {
      const endpointConfig = AWSApiConfig(
        authorizationType: APIAuthorizationMode.userPools,
        endpoint: _gqlEndpoint,
        endpointType: EndpointType.graphQL,
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
      const endpointConfig = AWSApiConfig(
        authorizationType: APIAuthorizationMode.oidc,
        endpoint: _gqlEndpoint,
        endpointType: EndpointType.graphQL,
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
      const endpointConfig = AWSApiConfig(
        authorizationType: APIAuthorizationMode.function,
        endpoint: _gqlEndpoint,
        endpointType: EndpointType.graphQL,
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

    test('authorizes with authorizationMode parameter that overrides config',
        () async {
      const testApiKey = 'abc-123-fake-key';
      const endpointConfig = AWSApiConfig(
        authorizationType: APIAuthorizationMode.userPools,
        apiKey: testApiKey,
        endpoint: _gqlEndpoint,
        endpointType: EndpointType.graphQL,
        region: _region,
      );
      final inputRequest = _generateTestRequest(endpointConfig.endpoint);
      final authorizedRequest = await authorizeHttpRequest(
        inputRequest,
        endpointConfig: endpointConfig,
        authProviderRepo: authProviderRepo,
        authorizationMode: APIAuthorizationMode.apiKey,
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
      const endpointConfig = AWSApiConfig(
        authorizationType: APIAuthorizationMode.apiKey,
        apiKey: 'abc-123-fake-key',
        endpoint: _gqlEndpoint,
        endpointType: EndpointType.graphQL,
        region: _region,
      );
      final inputRequest = _generateTestRequest(endpointConfig.endpoint);
      expectLater(
        authorizeHttpRequest(
          inputRequest,
          endpointConfig: endpointConfig,
          authProviderRepo: emptyAuthRepo,
        ),
        throwsA(isA<ApiException>()),
      );
    });
  });
}
