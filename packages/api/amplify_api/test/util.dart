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

import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/src/graphql/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api/src/graphql/ws/web_socket_connection.dart';
import 'package:amplify_api/src/graphql/ws/web_socket_types.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

const testAccessToken = 'test-access-token-123';

class TestIamAuthProvider extends AWSIamAmplifyAuthProvider {
  @override
  Future<AWSCredentials> retrieve() async {
    return const AWSCredentials(
        'fake-access-key-123', 'fake-secret-access-key-456');
  }

  @override
  Future<AWSSignedRequest> authorizeRequest(
    AWSBaseHttpRequest request, {
    IamAuthProviderOptions? options,
  }) async {
    final signer = AWSSigV4Signer(
      credentialsProvider: AWSCredentialsProvider(await retrieve()),
    );
    final scope = AWSCredentialScope(
      region: options!.region,
      service: AWSService.appSync,
    );
    return signer.sign(
      request,
      credentialScope: scope,
    );
  }
}

class TestTokenAuthProvider extends TokenAmplifyAuthProvider {
  @override
  Future<String> getLatestAuthToken() async {
    return testAccessToken;
  }
}

void validateSignedRequest(http.BaseRequest request) {
  const userAgentHeader =
      zIsWeb ? AWSHeaders.amzUserAgent : AWSHeaders.userAgent;
  expect(
    request.headers[userAgentHeader],
    contains('aws-sigv4'),
  );
}

const testApiKeyConfig = AWSApiConfig(
  endpointType: EndpointType.graphQL,
  endpoint: 'https://abc123.appsync-api.us-east-1.amazonaws.com/graphql',
  region: 'us-east-1',
  authorizationType: APIAuthorizationType.apiKey,
  apiKey: 'abc-123',
);

const expectedApiKeyWebSocketConnectionUrl =
    'wss://abc123.appsync-realtime-api.us-east-1.amazonaws.com/graphql?header=eyJDb250ZW50LVR5cGUiOiJhcHBsaWNhdGlvbi9qc29uOyBjaGFyc2V0PVVURi04IiwiWC1BcGktS2V5IjoiYWJjLTEyMyIsIkFjY2VwdCI6ImFwcGxpY2F0aW9uL2pzb24sIHRleHQvamF2YXNjcmlwdCIsIkNvbnRlbnQtRW5jb2RpbmciOiJhbXotMS4wIiwiSG9zdCI6ImFiYzEyMy5hcHBzeW5jLWFwaS51cy1lYXN0LTEuYW1hem9uYXdzLmNvbSJ9&payload=e30%3D';

AmplifyAuthProviderRepository getTestAuthProviderRepo() {
  final testAuthProviderRepo = AmplifyAuthProviderRepository();
  testAuthProviderRepo.registerAuthProvider(
    APIAuthorizationType.apiKey.authProviderToken,
    AppSyncApiKeyAuthProvider(),
  );

  return testAuthProviderRepo;
}

const mockSubscriptionData = {
  'onCreatePost': {
    'id': '49d54440-cb80-4f20-964b-91c142761e82',
    'title':
        'Integration Test post - subscription create aa779f0d-0c92-4677-af32-e43f71b3eb55',
    'rating': 0,
    'created': null,
    'createdAt': '2022-08-15T18:22:15.410Z',
    'updatedAt': '2022-08-15T18:22:15.410Z',
    'blog': {
      'id': '164bd1f1-544c-40cb-a656-a7563b046e71',
      'name': 'Integration Test Blog with a post - create',
      'createdAt': '2022-08-15T18:22:15.164Z',
      'file': null,
      'files': null,
      'updatedAt': '2022-08-15T18:22:15.164Z'
    }
  }
};

/// Extension of [WebSocketConnection] that stores messages internally instead
/// of sending them.
class MockWebSocketConnection extends WebSocketConnection {
  /// Instead of actually connecting, just set the URI here so it can be inspected
  /// for testing.
  Uri? connectedUri;

  /// Instead of sending messages, they are pushed to end of list so they can be
  /// inspected for testing.
  final List<WebSocketMessage> sentMessages = [];

  MockWebSocketConnection(
      AWSApiConfig config, AmplifyAuthProviderRepository authProviderRepo)
      : super(config, authProviderRepo, logger: AmplifyLogger());

  WebSocketMessage? get lastSentMessage => sentMessages.lastOrNull;

  final messageStream = StreamController<dynamic>();

  @override
  Future<void> connect(Uri connectionUri) async {
    connectedUri = connectionUri;

    // mock some message responses (acks and mock data) from server
    final broadcast = messageStream.stream.asBroadcastStream();
    broadcast.listen((event) {
      final eventJson = json.decode(event as String);
      final messageFromEvent = WebSocketMessage.fromJson(eventJson as Map);

      // connection_init, respond with connection_ack
      final mockResponseMessages = <WebSocketMessage>[];
      if (messageFromEvent.messageType == MessageType.connectionInit) {
        mockResponseMessages.add(WebSocketMessage(
          messageType: MessageType.connectionAck,
          payload: const ConnectionAckMessagePayload(10000),
        ));
        // start, respond with start_ack and mock data
      } else if (messageFromEvent.messageType == MessageType.start) {
        mockResponseMessages.add(WebSocketMessage(
          messageType: MessageType.startAck,
          id: messageFromEvent.id,
        ));
        mockResponseMessages.add(WebSocketMessage(
          messageType: MessageType.data,
          id: messageFromEvent.id,
          payload: const SubscriptionDataPayload(mockSubscriptionData, null),
        ));
      }

      for (var mockMessage in mockResponseMessages) {
        messageStream.add(json.encode(mockMessage));
      }
    });

    // ensures connected to _onDone events in parent class
    getStreamSubscription(broadcast);
  }

  /// Pushes message in sentMessages and adds to stream (to support mocking result).
  @override
  void send(WebSocketMessage message) {
    sentMessages.add(message);
    final messageStr = json.encode(message.toJson());
    messageStream.add(messageStr);
  }
}

// From https://docs.amplify.aws/lib/graphqlapi/authz/q/platform/flutter/#oidc

const testOidcToken = '[OPEN-ID-CONNECT-TOKEN]';
const testFunctionToken = '[FUNCTION-CONNECT-TOKEN]';

class CustomOIDCProvider extends OIDCAuthProvider {
  const CustomOIDCProvider();

  @override
  Future<String?> getLatestAuthToken() async => testOidcToken;
}

class CustomFunctionProvider extends FunctionAuthProvider {
  const CustomFunctionProvider();

  @override
  Future<String?> getLatestAuthToken() async => testFunctionToken;
}
