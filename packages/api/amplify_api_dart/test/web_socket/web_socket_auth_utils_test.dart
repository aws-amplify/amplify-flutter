// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api_dart/src/decorators/web_socket_auth_utils.dart';
import 'package:amplify_api_dart/src/graphql/providers/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/web_socket_types.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

import '../util.dart';

void main() {
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
    test('should generate connection URI', () async {
      final actualConnectionUri = await generateConnectionUri(testApiKeyConfig);
      expect(
        actualConnectionUri.toString(),
        expectedApiKeyWebSocketConnectionUrl,
      );
    });

    test('should generate connection URI with a custom domain', () async {
      final actualConnectionUri = await generateConnectionUri(
        testApiKeyConfigCustomDomain,
      );
      expect(
        actualConnectionUri.toString(),
        expectedApiKeyWebSocketConnectionUrlCustomDomain,
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
      expect(payload.authorizationHeaders[xApiKey], testApiKeyConfig.apiKey);
    });

    test(
      'should generate an authorized message with custom authorizationMode',
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
        expect(payload.authorizationHeaders[xApiKey], isNull);
        expect(
          payload.authorizationHeaders[AWSHeaders.authorization],
          testAccessToken,
        );
      },
    );

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
      expect(payload.authorizationHeaders[xApiKey], isNull);
      expect(
        payload.authorizationHeaders[AWSHeaders.authorization],
        testCustomToken,
      );
    });
  });

  group('generateAuthorizationHeaders', () {
    const apiKey = 'fake-key';

    test('should generate headers for API key Authorization', () async {
      final (outputs, repo) = createOutputsAndRepo(
        AppSyncApiKeyAuthProvider(),
        APIAuthorizationType.apiKey,
        apiKey,
      );
      final headers = await generateAuthorizationHeaders(
        outputs,
        isConnectionInit: true,
        authRepo: repo,
        body: {},
      );
      expect(headers[xApiKey], apiKey);
      expect(headers.containsKey(AWSHeaders.accept), true);
      expect(headers.containsKey(AWSHeaders.contentEncoding), true);
      expect(headers.containsKey(AWSHeaders.contentType), true);
      expect(headers.containsKey(AWSHeaders.host), true);
    });

    test('should generate headers for IAM Authorization', () async {
      final (outputs, repo) = createOutputsAndRepo(
        TestIamAuthProvider(),
        APIAuthorizationType.iam,
      );
      final headers = await generateAuthorizationHeaders(
        outputs,
        isConnectionInit: true,
        authRepo: repo,
        body: {},
      );
      expect(
        headers['Authorization']!.contains('Credential=fake-access-key-123'),
        true,
      );
      expect(headers.containsKey(AWSHeaders.date), true);
      expect(headers.containsKey(AWSHeaders.contentSHA256), true);
      expect(headers.containsKey(AWSHeaders.accept), true);
      expect(headers.containsKey(AWSHeaders.contentEncoding), true);
      expect(headers.containsKey(AWSHeaders.contentType), true);
      expect(headers.containsKey(AWSHeaders.host), true);
    });

    test('should generate headers for user pool Authorization', () async {
      final (outputs, repo) = createOutputsAndRepo(
        TestTokenAuthProvider(),
        APIAuthorizationType.userPools,
      );
      final headers = await generateAuthorizationHeaders(
        outputs,
        isConnectionInit: true,
        authRepo: repo,
        body: {},
      );
      expect(headers[AWSHeaders.authorization], 'test-access-token-123');
      expect(headers.containsKey(AWSHeaders.accept), true);
      expect(headers.containsKey(AWSHeaders.contentEncoding), true);
      expect(headers.containsKey(AWSHeaders.contentType), true);
      expect(headers.containsKey(AWSHeaders.host), true);
    });
  });
}
