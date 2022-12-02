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
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:connectivity_plus_platform_interface/connectivity_plus_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';

import '../util.dart';

const mockConnectionAck =
    ConnectionAckMessageEvent(ConnectionAckMessagePayload(300000));

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockWebSocketBloc? bloc;
  late MockWebSocketService? service;

  late Connectivity connectivity;
  late MockConnectivityPlatform fakePlatform;
  late MockPollClient mockPollClient;

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

  const subscriptionOptions =
      GraphQLSubscriptionOptions(pollInterval: Duration(seconds: 1));

  MockWebSocketBloc getWebSocketBloc() {
    fakePlatform = MockConnectivityPlatform();
    ConnectivityPlatform.instance = fakePlatform;
    connectivity = Connectivity();
    fakePlatform.controller.sink.add(ConnectivityResult.wifi);

    mockPollClient = MockPollClient();

    service = MockWebSocketService();

    bloc = MockWebSocketBloc(
      config: testApiKeyConfig,
      authProviderRepo: getTestAuthProviderRepo(),
      wsService: service!,
      subscriptionOptions: subscriptionOptions,
      pollClientOverride: mockPollClient.client,
      connectivityOverride: connectivity,
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
    group('non self closing tests', () {
      tearDown(() async {
        bloc!.add(const ShutdownEvent());
        await bloc!.done.future;
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
      });

      test('should reconnect when data turns on/off', () async {
        var dataCompleter = Completer<String>();
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

        bloc.subscribe(subscribeEvent).listen(
              expectAsync1(
                (event) {
                  expect(event.data, json.encode(mockSubscriptionData));
                  dataCompleter.complete(event.data);
                },
                count: 2,
              ),
            );

        await dataCompleter.future;
        dataCompleter = Completer<String>();

        fakePlatform.controller.sink.add(ConnectivityResult.none);

        fakePlatform.controller.sink.add(ConnectivityResult.mobile);

        await expectLater(bloc.stream, emitsThrough(isA<ConnectedState>()));

        service!.channel.sink.add(mockDataString);
        await dataCompleter.future;
      });

      test('should throttle reconnect after repeated wifi toggling', () async {
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
          reason:
              'Bloc should debounce multiple reconnection triggers while reconnecting.',
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

      test('should reconnect multiple times after reconnecting', () async {
        final blocReady = Completer<void>();
        final subscribeEvent = SubscribeEvent(
          subscriptionRequest,
          blocReady.complete,
        );

        final bloc = getWebSocketBloc()
          ..subscribe(
            subscribeEvent,
          );

        await blocReady.future;

        fakePlatform.controller.sink.add(ConnectivityResult.none);

        await expectLater(bloc.stream, emitsThrough(isA<ReconnectingState>()));

        fakePlatform.controller.sink.add(ConnectivityResult.wifi);

        await expectLater(bloc.stream, emitsThrough(isA<ConnectedState>()));

        fakePlatform.controller.sink.add(ConnectivityResult.none);

        await expectLater(bloc.stream, emitsThrough(isA<ReconnectingState>()));

        fakePlatform.controller.sink.add(ConnectivityResult.wifi);

        await expectLater(bloc.stream, emitsThrough(isA<ConnectedState>()));

        fakePlatform.controller.sink.add(ConnectivityResult.none);

        await expectLater(bloc.stream, emitsThrough(isA<ReconnectingState>()));

        fakePlatform.controller.sink.add(ConnectivityResult.wifi);

        await expectLater(bloc.stream, emitsThrough(isA<ConnectedState>()));
      });

      test('should reconnect after 13 seconds during retry/back off', () async {
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

        mockPollClient.induceTimeout = true;

        await Future<void>.delayed(const Duration(seconds: 13));

        mockPollClient.induceTimeout = false;
      });
    });

    group('should close when', () {
      tearDown(() async {
        bloc = null;
        service = null; // service gets closed in  bloc
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
          pollClientOverride: mockPollClient.client,
          connectivityOverride: Connectivity(),
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

      test('an exception when poll responds unhealthy', () async {
        final blocReady = Completer<void>();
        final testDone = Completer<void>();
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
              isA<FailureState>(),
              isA<PendingDisconnect>(),
              isA<DisconnectedState>(),
            ],
          ),
        );

        bloc.subscribe(subscribeEvent).listen(
          null,
          onError: expectAsync1((event) {
            testDone.complete();
            expect(
              event,
              isA<ApiException>(),
            );
          }),
        );

        await blocReady.future;
        mockPollClient.sendUnhealthyResponse = true;
      });

      test('cancel() sends a stop message', () async {
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
  });
}
