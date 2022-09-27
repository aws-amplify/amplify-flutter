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

import 'package:amplify_api/src/graphql/ws/web_socket_types.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/testing.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:connectivity_plus_platform_interface/connectivity_plus_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../util.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late Connectivity connectivity;
  late MockConnectivityPlatform fakePlatform;

  late MockWebSocketConnection connection;

  late StreamController<ApiHubEvent> hubEventsController;
  late Stream<ApiHubEvent> hubEvents;

  const graphQLDocument = '''subscription MySubscription {
    onCreateBlog {
      id
      name
      createdAt
    }
  }''';
  final subscriptionRequest = GraphQLRequest<String>(document: graphQLDocument);

  final startAck = WebSocketMessage(
    messageType: MessageType.startAck,
    id: subscriptionRequest.id,
  );

  final mockSubscriptionData = {
    'onCreateBlog': {
      'id': '<blog id>',
      'name': 'Unit Test Blog',
      'createdAt': '2022-09-12T18:03:36.230Z'
    }
  };

  final mockSubscriptionEvent = {
    'id': subscriptionRequest.id,
    'type': 'data',
    'payload': {
      'data': mockSubscriptionData,
    },
  };

  WebSocketChannel getWebSocketChannel(Uri uri) {
    return MockWebSocketChannel();
  }

  MockWebSocketConnection getWebSocketConnection() {
    final mockClient = MockAWSHttpClient((request) async {
      return AWSHttpResponse(
        statusCode: 200,
        body: utf8.encode('healthy'),
      );
    });

    fakePlatform = MockConnectivityPlatform();
    ConnectivityPlatform.instance = fakePlatform;
    connectivity = Connectivity();

    const subscriptionOptions = GraphQLSubscriptionOptions();

    connection = MockWebSocketConnection(
      testApiKeyConfig,
      getTestAuthProviderRepo(),
      subscriptionOptions: subscriptionOptions,
      connectivityOverride: connectivity,
      clientOverride: mockClient,
      webSocketFactoryOverride: getWebSocketChannel,
      logger: AmplifyLogger(),
    );

    return connection;
  }

  Future<void> assertConnected() async {
    await expectLater(connection.connectionPending, completes);

    connection.channel!.sink.add(jsonEncode(mockAckMessage));

    await expectLater(connection.ready, completes);

    connection.channel!.sink.add(jsonEncode(startAck));
  }

  group('WebSocketConnection', () {
    setUp(() {
      // hubEventsController = StreamController();
      // hubEvents = hubEventsController.stream;
      // Amplify.Hub.listen(HubChannel.Api, hubEventsController.add);
    });
    tearDown(() {
      connection.close();
      // Amplify.Hub.close();
      // hubEventsController.close();
    });

    test('should init a connection & call onEstablishCallback', () async {
      getWebSocketConnection().subscribe(
        subscriptionRequest,
        expectAsync0(() {}),
      );

      await assertConnected();

      // expect(
      //   hubEvents,
      //   emitsInOrder(
      //     [
      //       emitsThrough(connectingHubEvent),
      //       emitsThrough(connectedHubEvent),
      //     ],
      //   ),
      // );
    });

    test('subscribe() should return a subscription stream', () async {
      final subscription = getWebSocketConnection().subscribe(
        subscriptionRequest,
        () {},
      );

      await assertConnected();

      final streamSub = subscription.listen(
        expectAsync1((event) {
          expect(event.data, json.encode(mockSubscriptionData));
        }),
      );

      connection.channel!.sink.add(jsonEncode(mockSubscriptionEvent));

      addTearDown(streamSub.cancel);
    });

    test('should reconnect when network turns on/off', () async {
      Completer<String> dataCompleter = Completer();
      final subscription = getWebSocketConnection().subscribe(
        subscriptionRequest,
        () {},
      );

      await assertConnected();

      final streamSub = subscription.listen(
        expectAsync1(
          (event) => dataCompleter.complete(event.data),
        ),
      );

      connection.channel!.sink.add(jsonEncode(mockSubscriptionEvent));

      fakePlatform.controller.sink.add(ConnectivityResult.none);

      // expect(
      //   hubEvents,
      //   emitsInOrder(
      //     [
      //       emitsThrough(connectingHubEvent),
      //       emitsThrough(connectedHubEvent),
      //       emitsThrough(connectingHubEvent),
      //     ],
      //   ),
      // );

      addTearDown(streamSub.cancel);
    });

    test('cancel() should send a stop message', () async {
      Completer<String> dataCompleter = Completer();
      final subscription =
          getWebSocketConnection().subscribe(subscriptionRequest, null);

      await assertConnected();

      final streamSub = subscription.listen(
        (event) => dataCompleter.complete(event.data),
      );

      connection.channel!.sink.add(jsonEncode(mockSubscriptionEvent));
      await dataCompleter.future;

      streamSub.cancel();
      expect(connection.lastSentMessage!.messageType, MessageType.stop);
    });
  });
}
