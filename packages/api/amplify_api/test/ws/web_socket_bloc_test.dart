import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_api/src/graphql/web_socket/state/web_socket_state.dart';
import 'package:amplify_api/src/graphql/web_socket/types/web_socket_types.dart';
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
      testApiKeyConfig,
      getTestAuthProviderRepo(),
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
      await bloc!.close();
      bloc = null;
      service = null; // service gets closed in  bloc
    });

    test('should init a connection & call onEstablishCallback', () async {
      final subscribeEvent =
          SubscribeEvent(subscriptionRequest, expectAsync0(() {}));

      getWebSocketBloc().subscribe(
        subscribeEvent,
      );

      // TODO(equartey): Implement Hub Events
      // expect(
      //   hubEvents,
      //   emitsInOrder(
      //     [
      //       connectingHubEvent,
      //       connectedHubEvent,
      //     ],
      //   ),
      // );
    });
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

  test('cancel() should send a stop message', () async {
    final subscribeEvent = SubscribeEvent(
      subscriptionRequest,
      () {
        service!.channel.sink.add(mockDataString);
      },
    );

    final dataCompleter = Completer<String>();
    final subscription = getWebSocketBloc().subscribe(
      subscribeEvent,
    );

    final streamSub = subscription.listen(
      (event) => dataCompleter.complete(event.data),
    );

    await dataCompleter.future;

    service!.channel.stream.listen(
      expectAsync1((event) {
        expect(json.decode(event as String), containsPair('type', 'stop'));
      }),
    );
    await streamSub.cancel();
  });
}
