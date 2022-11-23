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

import 'package:amplify_api/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_api/src/graphql/web_socket/state/web_socket_state.dart';
import 'package:amplify_api/src/graphql/web_socket/types/web_socket_types.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:aws_common/testing.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:connectivity_plus_platform_interface/connectivity_plus_platform_interface.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../util.dart';

const mockConnectionAck =
    ConnectionAckMessageEvent(ConnectionAckMessagePayload(300000));

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockWebSocketBloc? bloc;
  late MockWebSocketService? service;

  late Connectivity connectivity;
  late MockConnectivityPlatform fakePlatform;

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

  final mockDataString = jsonEncode({
    'id': subscriptionRequest.id,
    'type': 'data',
    'payload': {
      'data': mockSubscriptionData,
    },
  });

  var failClient = false;
  var failCount = 0;
  const maxFailAttempts = 6;
  const subscriptionOptions =
      GraphQLSubscriptionOptions(pollInterval: Duration(seconds: 1));

  final mockClient = MockAWSHttpClient((request) async {
    if (failClient) {
      failCount++;
    }

    return failClient && failCount <= maxFailAttempts
        ? throw TimeoutException('Mock timeout exception')
        : AWSHttpResponse(
            statusCode: 200,
            body: utf8.encode('healthy'),
          );
  });

  MockWebSocketBloc getWebSocketBloc() {
    service = MockWebSocketService();

    bloc = MockWebSocketBloc(
      config: testApiKeyConfig,
      authProviderRepo: getTestAuthProviderRepo(),
      wsService: service!,
      subscriptionOptions: subscriptionOptions,
    );

    bloc!.stream.listen((event) async {
      final state = event;
      if (state is ConnectingState &&
          state.networkState == NetworkState.connected) {
        service!.channel.sink.add(jsonEncode(mockAckMessage));
      } else if (state is ConnectedState) {
        service!.channel.sink.add(jsonEncode(startAck(subscriptionRequest.id)));
      }
    });

    return bloc!;
  }

  group('WebSocketBloc', () {
    setUp(() {
      failCount = 0;
      fakePlatform = MockConnectivityPlatform();
      ConnectivityPlatform.instance = fakePlatform;
      connectivity = Connectivity();
      fakePlatform.controller.sink.add(ConnectivityResult.wifi);

      WebSocketBloc.pollClientOverride = mockClient;
      WebSocketBloc.connectivityOverride = connectivity;
    });
    tearDown(() async {
      bloc = null;
      service = null; // service gets closed in  bloc
    });

    test('should init a connection & call onEstablishCallback', () async {
      final subscribeEvent =
          SubscribeEvent(subscriptionRequest, expectAsync0(() {}));

      getWebSocketBloc().subscribe(
        subscribeEvent,
      );
    });

    test('subscribe() should return a subscription stream', () async {
      final dataCompleter = Completer<String>();
      final subscribeEvent = SubscribeEvent(
        subscriptionRequest,
        () {
          service!.channel.sink.add(mockDataString);
        },
      );

      final bloc = getWebSocketBloc();

      final subscription = bloc.subscribe(
        subscribeEvent,
      );

      final streamSub = subscription.listen(
        expectAsync1((event) {
          expect(event.data, json.encode(mockSubscriptionData));
          dataCompleter.complete(event.data);
        }),
      );

      await dataCompleter.future;
      await streamSub.cancel();
      await bloc.done.future;
    });

    test('should reconnect when data turns on/off', () async {
      final dataCompleter = Completer<String>();
      final subscribeEvent = SubscribeEvent(
        subscriptionRequest,
        () {
          service!.channel.sink.add(mockDataString);
        },
      );

      final bloc = getWebSocketBloc();

      expect(
        bloc.stream,
        emitsInOrder(
          [
            isA<DisconnectedState>(),
            isA<ConnectingState>(),
            isA<ConnectedState>(),
            isA<ReconnectingState>(),
            isA<ConnectingState>(),
            isA<ConnectedState>(),
          ],
        ),
      );

      bloc
          .subscribe(
        subscribeEvent,
      )
          .listen(
        expectAsync1((event) {
          expect(event.data, json.encode(mockSubscriptionData));
          dataCompleter.complete(event.data);
        }),
      );

      await dataCompleter.future;

      fakePlatform.controller.sink.add(ConnectivityResult.none);

      fakePlatform.controller.sink.add(ConnectivityResult.mobile);
    });

    test('should reconnect after repeated wifi toggling', () async {
      final blocReady = Completer<void>();
      final subscribeEvent = SubscribeEvent(
        subscriptionRequest,
        blocReady.complete,
      );

      final bloc = getWebSocketBloc();

      expect(
        bloc.stream,
        emitsInOrder(
          [
            isA<DisconnectedState>(),
            isA<ConnectingState>(),
            isA<ConnectedState>(),
            isA<ReconnectingState>(),
            isA<ConnectingState>(),
            isA<ConnectedState>(),
          ],
        ),
      );

      bloc.subscribe(
        subscribeEvent,
      );

      await blocReady.future;

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
    });

    test(
        'should reconnect after 15 seconds when appsync ping fails multiple times',
        () {
      FakeAsync()
        ..run((async) async {
          final subscribeEvent = SubscribeEvent(
            subscriptionRequest,
            () {
              service!.channel.sink.add(mockDataString);
            },
          );

          final bloc = getWebSocketBloc()..subscribe(subscribeEvent);

          expect(
            bloc.stream,
            emitsInOrder(
              [
                isA<DisconnectedState>(),
                isA<ConnectingState>(),
                isA<ConnectedState>(),
                isA<ReconnectingState>(),
                isA<ConnectingState>(),
                isA<ConnectedState>(),
              ],
            ),
          );

          fakePlatform.controller.sink.add(ConnectivityResult.wifi);

          failClient = true;

          async.elapse(const Duration(seconds: 15));

          failClient = false;
        })
        ..flushMicrotasks();
    });

    test('should trigger FailureState on Exception during init', () async {
      final subscribeEvent = SubscribeEvent(
        subscriptionRequest,
        () {
          service!.channel.sink.add(mockDataString);
        },
      );

      final badService = MockWebSocketService(badInit: true);

      final bloc = MockWebSocketBloc(
        config: testApiKeyConfig,
        authProviderRepo: getTestAuthProviderRepo(),
        wsService: badService,
        subscriptionOptions: subscriptionOptions,
      );

      expect(
        bloc.stream,
        emitsInOrder(
          [
            isA<DisconnectedState>(),
            isA<ConnectingState>(),
            isA<FailureState>(),
          ],
        ),
      );

      bloc.subscribe(
        subscribeEvent,
      );
    });

    test('cancel() should send a stop message & close connection', () async {
      final subscribeEvent = SubscribeEvent(
        subscriptionRequest,
        () {
          service!.channel.sink.add(mockDataString);
        },
      );

      final dataCompleter = Completer<String>();
      final bloc = getWebSocketBloc();
      final subscription = bloc.subscribe(
        subscribeEvent,
      );

      final streamSub = subscription.listen(
        (event) => dataCompleter.complete(event.data),
      );

      await dataCompleter.future;

      expect(
        service!.channel.stream,
        emitsInOrder(
          [
            isA<String>().having(
              (event) => json.decode(event),
              'web socket stop message',
              containsPair('type', 'stop'),
            ),
            isA<String>().having(
              (event) => json.decode(event),
              'web socket complete message',
              containsPair('type', 'complete'),
            ),
          ],
        ),
      );
      // bloc should disconnect due to no active subscriptions
      expect(bloc.stream, emitsThrough(isA<DisconnectedState>()));

      await streamSub.cancel();

      await bloc.done.future;
    });
  });
}
