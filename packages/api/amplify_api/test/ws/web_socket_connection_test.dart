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

import 'package:amplify_api/src/api_plugin_impl.dart';
import 'package:amplify_api/src/graphql/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api/src/graphql/ws/web_socket_types.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../util.dart';

import 'package:amplify_api/src/graphql/ws/web_socket_connection.dart';

/// Extension of [WebSocketConnection] that stores messages internally instead
/// of sending them.
class MockWebSocketConnection extends WebSocketConnection {
  /// Instead of actually connecting, just set the URI here so it can be inspected
  /// for testing.
  Uri? connectedUri;

  /// Instead of sending messages, they are pushed to end of list so they can be
  /// inspected for testing.
  final List<WebSocketMessage> sentMessages = [];

  MockWebSocketConnection(super.config, super.authProviderRepo);

  WebSocketMessage? get lastSentMessage => sentMessages.lastOrNull;

  final messageStream = StreamController<dynamic>();

  @override
  Future<void> connect(Uri connectionUri) async {
    connectedUri = connectionUri;

    // mock some message responses (acks) from server
    final broadcast = messageStream.stream.asBroadcastStream();
    broadcast.listen((event) {
      final eventJson = json.decode(event as String);
      final messageFromEvent = WebSocketMessage.fromJson(eventJson as Map);

      // connection_init, respond with connection_ack
      WebSocketMessage? mockAckMsg;
      if (messageFromEvent.messageType == MessageType.connectionInit) {
        mockAckMsg = WebSocketMessage(
          messageType: MessageType.connectionAck,
          payload: const ConnectionAckMessagePayload(10000),
        );
        // start, respond with start_ack
      } else if (messageFromEvent.messageType == MessageType.start) {
        mockAckMsg = WebSocketMessage(
          messageType: MessageType.startAck,
          id: messageFromEvent.id,
        );
      }
      if (mockAckMsg != null) {
        final messageStr = json.encode(mockAckMsg);
        messageStream.add(messageStr);
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

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final authProviderRepo = AmplifyAuthProviderRepository();
  authProviderRepo.registerAuthProvider(
      APIAuthorizationType.apiKey.authProviderToken,
      AppSyncApiKeyAuthProvider());

  const endpointType = EndpointType.graphQL;
  const endpoint = 'https://abc123.appsync-api.us-east-1.amazonaws.com/graphql';
  const region = 'us-east-1';
  const authorizationType = APIAuthorizationType.apiKey;
  const apiKey = 'abc-123';

  const config = AWSApiConfig(
      endpointType: endpointType,
      endpoint: endpoint,
      region: region,
      authorizationType: authorizationType,
      apiKey: apiKey);

  late MockWebSocketConnection connection;

  const graphQLDocument = '''subscription MySubscription {
    onCreateBlog {
      id
      name
      createdAt
    }
  }''';
  final subscriptionRequest = GraphQLRequest<String>(document: graphQLDocument);

  setUp(() {
    connection = MockWebSocketConnection(config, authProviderRepo);
  });

  group('WebSocketConnection', () {
    test(
        'init() should connect with authorized query params in URI and send connection init message',
        () async {
      await connection.init();
      expectLater(connection.ready, completes);
      const expectedConnectionUri =
          'wss://abc123.appsync-realtime-api.us-east-1.amazonaws.com/graphql?header=eyJDb250ZW50LVR5cGUiOiJhcHBsaWNhdGlvbi9qc29uOyBjaGFyc2V0PVVURi04IiwiWC1BcGktS2V5IjoiYWJjLTEyMyIsIkFjY2VwdCI6ImFwcGxpY2F0aW9uL2pzb24sIHRleHQvamF2YXNjcmlwdCIsIkNvbnRlbnQtRW5jb2RpbmciOiJhbXotMS4wIiwiSG9zdCI6ImFiYzEyMy5hcHBzeW5jLWFwaS51cy1lYXN0LTEuYW1hem9uYXdzLmNvbSJ9&payload=e30%3D';
      expect(connection.connectedUri.toString(), expectedConnectionUri);
      expect(
          connection.lastSentMessage?.messageType, MessageType.connectionInit);
    });

    test('subscribe() should initialize the connection and call onEstablished',
        () async {
      Completer<void> establishedCompleter = Completer();
      connection.subscribe(subscriptionRequest, () {
        establishedCompleter.complete();
      }).listen((event) {});

      expectLater(connection.ready, completes);
      expectLater(establishedCompleter.future, completes);
    });

    test(
        'subscribe() should send SubscriptionRegistrationMessage with authorized payload correctly serialized',
        () async {
      connection.init();
      await connection.ready;
      Completer<void> establishedCompleter = Completer();
      connection.subscribe(subscriptionRequest, () {
        establishedCompleter.complete();
      }).listen((event) {});
      await establishedCompleter.future;

      final lastMessage = connection.lastSentMessage;
      expect(lastMessage?.messageType, MessageType.start);
      final payloadJson = lastMessage?.payload?.toJson();
      final apiKeyFromPayload =
          payloadJson?['extensions']['authorization'][xApiKey];
      expect(apiKeyFromPayload, apiKey);
    });

    // test('subscribe() should return a subscription stream', () async {
    //   connection.init();
    //   await connection.ready;
    //   Completer<void> establishedCompleter = Completer();
    //   final subscription = connection.subscribe(subscriptionRequest, () {
    //     establishedCompleter.complete();
    //   }).listen((event) {});
    //   await establishedCompleter.future;
    // });
  });
}
