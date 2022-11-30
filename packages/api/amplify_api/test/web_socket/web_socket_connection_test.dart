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

import 'package:amplify_api/src/graphql/web_socket/web_socket_connection.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/testing.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:connectivity_plus_platform_interface/connectivity_plus_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';

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

  var pleaseFail = false;
  final pingFailed = Completer<void>();

  final mockClient = MockAWSHttpClient((request, _) async {
    if (pleaseFail) {
      if (!pingFailed.isCompleted) pingFailed.complete();
      return AWSHttpResponse(
        statusCode: 400,
        body: utf8.encode('unhealthy'),
      );
    }
    return AWSHttpResponse(
      statusCode: 200,
      body: utf8.encode('healthy'),
    );
  });

  MockWebSocketConnection getWebSocketConnection() {
    const subscriptionOptions =
        GraphQLSubscriptionOptions(pingInterval: Duration(seconds: 1));

    return connection = MockWebSocketConnection(
      testApiKeyConfig,
      getTestAuthProviderRepo(),
      subscriptionOptions: subscriptionOptions,
      logger: AmplifyLogger(),
    );
  }

  group('WebSocketConnection', () {
    setUp(() {
      fakePlatform = MockConnectivityPlatform();
      ConnectivityPlatform.instance = fakePlatform;
      connectivity = Connectivity();
      fakePlatform.controller.sink.add(ConnectivityResult.wifi);

      WebSocketConnection.httpClientOverride = mockClient;
      WebSocketConnection.connectivityOverride = connectivity;
      WebSocketConnection.webSocketFactoryOverride = getMockWebSocketChannel;

      hubEventsController = StreamController.broadcast();
      hubEvents = hubEventsController.stream;
      Amplify.Hub.listen(HubChannel.Api, hubEventsController.add);
    });
    tearDown(() async {
      connection.close();
      Amplify.Hub.close();
      await hubEventsController.close();
    });
    tearDownAll(() {});

    test('should init a connection & call onEstablishCallback', () async {
      getWebSocketConnection().subscribe(
        subscriptionRequest,
        expectAsync0(() {}),
      );

      expect(
        hubEvents,
        emitsInOrder(
          [
            connectingHubEvent,
            connectedHubEvent,
          ],
        ),
      );

      await assertWebSocketConnected(connection, subscriptionRequest.id);
    });

    test('subscribe() should return a subscription stream', () async {
      final subscription = getWebSocketConnection().subscribe(
        subscriptionRequest,
        () {},
      );

      await assertWebSocketConnected(connection, subscriptionRequest.id);

      final streamSub = subscription.listen(
        expectAsync1((event) {
          expect(event.data, json.encode(mockSubscriptionData));
        }),
      );

      connection.channel!.sink.add(jsonEncode(mockSubscriptionEvent));

      addTearDown(streamSub.cancel);
    });

    test('should reconnect when data turns on/off', () async {
      getWebSocketConnection().subscribe(
        subscriptionRequest,
        expectAsync0(() {}),
      );

      expect(
        hubEvents,
        emitsInOrder(
          [
            connectingHubEvent,
            connectedHubEvent,
            connectingHubEvent,
            connectedHubEvent,
          ],
        ),
      );

      await assertWebSocketConnected(connection, subscriptionRequest.id);

      connection.channel!.sink.add(jsonEncode(mockSubscriptionEvent));

      fakePlatform.controller.sink.add(ConnectivityResult.none);
      fakePlatform.controller.sink.add(ConnectivityResult.mobile);

      await expectLater(connection.reconnectPending, completes);

      await assertWebSocketConnected(connection, subscriptionRequest.id);
    });

    test('should reconnect after repeated wifi toggling', () async {
      getWebSocketConnection().subscribe(
        subscriptionRequest,
        expectAsync0(() {}),
      );

      expect(
        hubEvents,
        emitsInOrder(
          [
            connectingHubEvent,
            connectedHubEvent,
            connectingHubEvent,
            connectedHubEvent,
          ],
        ),
      );

      await assertWebSocketConnected(connection, subscriptionRequest.id);

      connection.channel!.sink.add(jsonEncode(mockSubscriptionEvent));

      fakePlatform.controller.sink.add(ConnectivityResult.none);
      fakePlatform.controller.sink.add(ConnectivityResult.wifi);
      fakePlatform.controller.sink.add(ConnectivityResult.none);
      fakePlatform.controller.sink.add(ConnectivityResult.wifi);
      fakePlatform.controller.sink.add(ConnectivityResult.none);
      fakePlatform.controller.sink.add(ConnectivityResult.wifi);
      fakePlatform.controller.sink.add(ConnectivityResult.none);
      fakePlatform.controller.sink.add(ConnectivityResult.wifi);
      fakePlatform.controller.sink.add(ConnectivityResult.none);
      fakePlatform.controller.sink.add(ConnectivityResult.wifi);

      await expectLater(connection.reconnectPending, completes);

      await assertWebSocketConnected(connection, subscriptionRequest.id);
    });

    test(
        'should reconnect after 15 seconds when appsync ping fails multiple times',
        () async {
      getWebSocketConnection().subscribe(
        subscriptionRequest,
        expectAsync0(() {}),
      );

      expect(
        hubEvents,
        emitsInOrder(
          [
            connectingHubEvent,
            connectedHubEvent,
            connectingHubEvent,
            connectedHubEvent,
          ],
        ),
      );

      await assertWebSocketConnected(connection, subscriptionRequest.id);
      fakePlatform.controller.sink.add(ConnectivityResult.wifi);

      pleaseFail = true;

      await expectLater(pingFailed.future, completes);

      await Future<void>.delayed(const Duration(seconds: 15));

      pleaseFail = false;

      await expectLater(connection.reconnectPending, completes);

      await assertWebSocketConnected(connection, subscriptionRequest.id);
    });

    test('cancel() should send a stop message', () async {
      final dataCompleter = Completer<String>();
      final subscription =
          getWebSocketConnection().subscribe(subscriptionRequest, null);

      await assertWebSocketConnected(connection, subscriptionRequest.id);

      final streamSub = subscription.listen(
        (event) => dataCompleter.complete(event.data),
      );

      connection.channel!.sink.add(jsonEncode(mockSubscriptionEvent));
      await dataCompleter.future;

      connection.channel!.stream.listen(
        expectAsync1((event) {
          expect(json.decode(event as String), containsPair('type', 'stop'));
        }),
      );
      await streamSub.cancel();
    });
  });
}
