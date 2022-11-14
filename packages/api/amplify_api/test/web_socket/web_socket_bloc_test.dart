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
import 'package:flutter_test/flutter_test.dart';

import '../util.dart';

const mockConnectionAck =
    ConnectionAckMessageEvent(ConnectionAckMessagePayload(300000));

void main() {
  late MockWebSocketBloc? bloc;
  late MockWebSocketService? service;

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

  MockWebSocketBloc getWebSocketBloc() {
    service = MockWebSocketService();

    bloc = MockWebSocketBloc(
      config: testApiKeyConfig,
      authProviderRepo: getTestAuthProviderRepo(),
      wsService: service!,
    );

    bloc!.stream.listen((event) {
      if (event is ConnectingState) {
        service!.channel.sink.add(jsonEncode(mockAckMessage));
      } else if (event is ConnectedState) {
        service!.channel.sink.add(jsonEncode(startAck(subscriptionRequest.id)));
      }
    });

    return bloc!;
  }

  group('WebSocketBloc', () {
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
      final subscribeEvent = SubscribeEvent(
        subscriptionRequest,
        () {
          service!.channel.sink.add(mockDataString);
        },
      );

      final subscription = getWebSocketBloc().subscribe(
        subscribeEvent,
      );

      final streamSub = subscription.listen(
        expectAsync1((event) {
          expect(event.data, json.encode(mockSubscriptionData));
        }),
      );

      addTearDown(streamSub.cancel);
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
    });
  });
}
