// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_api_dart/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/services/web_socket_service.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/state/web_socket_state.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/connectivity_platform.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/process_life_cycle.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/subscriptions_event.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/web_socket_types.dart';
import 'package:amplify_core/amplify_core.dart' hide SubscriptionEvent;
import 'package:amplify_core/src/config/amplify_outputs/data/data_outputs.dart';
import 'package:aws_common/testing.dart';
import 'package:test/test.dart';

class _PollClient extends MockAWSHttpClient {
  _PollClient() : super((request, _) async => AWSHttpResponse(statusCode: 200));

  bool closed = false;

  @override
  Future<void> close({bool force = false}) async {
    closed = true;
    await super.close(force: force);
  }
}

class _SocketService implements WebSocketService {
  final events = StreamController<WebSocketEvent>();

  @override
  Stream<WebSocketEvent> init(WebSocketState state) => events.stream;

  @override
  Future<void> register(
    ConnectedState state,
    GraphQLRequest<Object?> request,
  ) async {
    events.add(SubscriptionStartAckEvent(request.id));
  }

  @override
  Future<void> unsubscribe(String subscriptionId) async {}

  @override
  void close() => unawaited(events.close());
}

void main() {
  const payload = SubscriptionDataPayload({'value': 'live'}, null);
  final staleEvents = <String, SubscriptionEvent Function(String)>{
    'data': (id) => SubscriptionDataEvent(id, payload),
    'error': (id) => SubscriptionErrorEvent(
      id,
      const WebSocketError([
        {'message': 'finished subscription'},
      ]),
    ),
    'start acknowledgement': SubscriptionStartAckEvent.new,
    'duplicate completion': SubscriptionComplete.new,
  };
  for (final entry in staleEvents.entries) {
    test('ignores ${entry.key} after completion and keeps live data', () async {
      final service = _SocketService();
      final pollClient = _PollClient();
      final bloc = WebSocketBloc(
        config: const DataOutputs(
          url: 'https://example.com/graphql',
          awsRegion: 'us-east-1',
          defaultAuthorizationType: APIAuthorizationType.apiKey,
          authorizationTypes: [APIAuthorizationType.apiKey],
        ),
        authProviderRepo: AmplifyAuthProviderRepository(),
        wsService: service,
        subscriptionOptions: const GraphQLSubscriptionOptions(),
        pollClientOverride: pollClient,
        connectivity: const ConnectivityPlatform(),
        processLifeCycle: const ProcessLifeCycle(),
      );
      final finished = GraphQLRequest<String>(document: 'subscription Old');
      final live = GraphQLRequest<String>(document: 'subscription Live');
      final firstEstablished = Completer<void>();
      final secondEstablished = Completer<void>();
      final firstDone = Completer<void>();
      bloc
          .subscribe(SubscribeEvent(finished, firstEstablished.complete))
          .listen((_) {}, onDone: firstDone.complete);
      final responses = StreamIterator(
        bloc.subscribe(SubscribeEvent(live, secondEstablished.complete)),
      );
      addTearDown(() async {
        await responses.cancel();
        if (!bloc.done.isCompleted) bloc.add(const ShutdownEvent());
        await bloc.done.future.timeout(const Duration(seconds: 5));
      });
      await bloc.stream.firstWhere((state) => state is ConnectingState);
      service.events.add(
        const ConnectionAckMessageEvent(ConnectionAckMessagePayload(300000)),
      );
      await Future.wait([firstEstablished.future, secondEstablished.future]);

      service.events.add(SubscriptionComplete(finished.id));
      await firstDone.future;
      // Drain the completion handler before queueing another server message.
      await Future<void>.delayed(Duration.zero);
      expect(bloc.currentState.subscriptionBlocs.keys, [live.id]);
      final nextData = responses.moveNext();
      service.events
        ..add(entry.value(finished.id))
        ..add(SubscriptionDataEvent(live.id, payload));
      expect(await nextData, isTrue);
      expect(responses.current.data, jsonEncode(payload.data));
      expect(responses.current.errors, isEmpty);
      expect(bloc.currentState.subscriptionBlocs.keys, [live.id]);

      final nextError = responses.moveNext();
      service.events.add(
        SubscriptionErrorEvent(
          live.id,
          const WebSocketError([
            {'message': 'active subscription failure'},
          ]),
        ),
      );
      expect(await nextError, isTrue);
      expect(
        responses.current.errors.single.message,
        'active subscription failure',
      );

      final completion = responses.moveNext();
      service.events.add(SubscriptionComplete(live.id));
      expect(await completion, isFalse);
      await bloc.done.future.timeout(const Duration(seconds: 5));
      expect(pollClient.closed, isTrue);
    });
  }
}
