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

import 'package:amplify_api/src/decorators/web_socket_auth_utils.dart';
import 'package:amplify_api/src/graphql/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api/src/graphql/ws/web_socket_types.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';

import '../util.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final authProviderRepo = AmplifyAuthProviderRepository()
    ..registerAuthProvider(
      APIAuthorizationType.apiKey.authProviderToken,
      AppSyncApiKeyAuthProvider(),
    )
    ..registerAuthProvider(
      APIAuthorizationType.userPools.authProviderToken,
      TestTokenAuthProvider(),
    );

  const graphQLDocument = '''subscription MySubscription {
    onCreateBlog {
      id
      name
      createdAt
    }
  }''';
  final subscriptionRequest = GraphQLRequest<String>(document: graphQLDocument);

  void assertBasicSubscriptionPayloadHeaders(
    SubscriptionRegistrationPayload payload,
  ) {
    expect(
      payload.authorizationHeaders[AWSHeaders.contentType],
      'application/json; charset=utf-8',
    );
    expect(
      payload.authorizationHeaders[AWSHeaders.accept],
      'application/json, text/javascript',
    );
    expect(
      payload.authorizationHeaders[AWSHeaders.host],
      'abc123.appsync-api.us-east-1.amazonaws.com',
    );
  }

  group('generateConnectionUri', () {
    test('should generate authorized connection URI', () async {
      final actualConnectionUri =
          await generateConnectionUri(testApiKeyConfig, authProviderRepo);
      expect(
        actualConnectionUri.toString(),
        expectedApiKeyWebSocketConnectionUrl,
      );
    });
  });

  group('generateSubscriptionRegistrationMessage', () {
    test('should generate an authorized message', () async {
      final authorizedMessage = await generateSubscriptionRegistrationMessage(
        testApiKeyConfig,
        id: 'abc123',
        authRepo: authProviderRepo,
        request: subscriptionRequest,
      );
      final payload =
          authorizedMessage.payload as SubscriptionRegistrationPayload;

      assertBasicSubscriptionPayloadHeaders(payload);
      expect(
        payload.authorizationHeaders[xApiKey],
        testApiKeyConfig.apiKey,
      );
    });

    test('should generate an authorized message with custom authorizationMode',
        () async {
      final subscriptionRequestUserPools = GraphQLRequest<String>(
        document: graphQLDocument,
        authorizationMode: APIAuthorizationType.userPools,
      );

      final authorizedMessage = await generateSubscriptionRegistrationMessage(
        testApiKeyConfig,
        id: 'abc123',
        authRepo: authProviderRepo,
        request: subscriptionRequestUserPools,
      );
      final payload =
          authorizedMessage.payload as SubscriptionRegistrationPayload;

      assertBasicSubscriptionPayloadHeaders(payload);
      expect(
        payload.authorizationHeaders[xApiKey],
        isNull,
      );
      expect(
        payload.authorizationHeaders[AWSHeaders.authorization],
        testAccessToken,
      );
    });

    test('should generate an authorized message with custom headers', () async {
      const testCustomToken = 'xyz567';
      final subscriptionRequestUserCustomHeader = GraphQLRequest<String>(
        document: graphQLDocument,
        headers: {AWSHeaders.authorization: testCustomToken},
      );

      final authorizedMessage = await generateSubscriptionRegistrationMessage(
        testApiKeyConfig,
        id: 'abc123',
        authRepo: authProviderRepo,
        request: subscriptionRequestUserCustomHeader,
      );
      final payload =
          authorizedMessage.payload as SubscriptionRegistrationPayload;

      assertBasicSubscriptionPayloadHeaders(payload);
      expect(
        payload.authorizationHeaders[xApiKey],
        isNull,
      );
      expect(
        payload.authorizationHeaders[AWSHeaders.authorization],
        testCustomToken,
      );
    });
  });
}
