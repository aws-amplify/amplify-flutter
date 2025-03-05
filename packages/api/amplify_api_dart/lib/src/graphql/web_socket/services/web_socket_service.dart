// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_api_dart/src/decorators/web_socket_auth_utils.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/blocs/subscriptions_bloc.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/state/web_socket_state.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/subscriptions_event.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/web_socket_message_stream_transformer.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/web_socket_types.dart';
import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/api_outputs.dart';
import 'package:async/async.dart';
import 'package:meta/meta.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

/// {@template amplify_api.web_socket_service}
/// Internal stateless [WebSocketService] abstract.
/// {@endtemplate}
abstract class WebSocketService implements Closeable {
  /// Used to initialize a [WebSocketChannel] connection and return transformed
  /// messages as [WebSocketEvent]
  Stream<WebSocketEvent> init(WebSocketState state);

  /// Subscribe a [GraphQLRequest] inside the provided [SubscriptionBloc] to a open [WebSocketChannel]
  Future<void> register(ConnectedState state, GraphQLRequest<Object?> request);

  /// Unsubscribe a [GraphQLRequest] inside the provided [SubscriptionBloc]
  Future<void> unsubscribe(String subscriptionId);
}

/// {@template amplify_api.web_socket_service}
/// Internal stateless [WebSocketService] implementation.
/// {@endtemplate}
class AmplifyWebSocketService
    with AWSDebuggable, AmplifyLoggerMixin
    implements WebSocketService, Closeable {
  /// Service that contains the business logic for subscription management
  AmplifyWebSocketService();

  /// Sink used for sending messages to AppSync
  @visibleForTesting
  WebSocketSink? sink;

  @override
  Stream<WebSocketEvent> init(WebSocketState state) {
    final sc = StreamCompleter<WebSocketEvent>();
    _init(state, sc).catchError(sc.setError);

    return sc.stream;
  }

  Future<void> _init(
    WebSocketState state,
    StreamCompleter<WebSocketEvent> sc,
  ) async {
    assert(
      sink == null,
      'Connection already exists, recreate service or clear sink',
    );

    try {
      final protocols = await generateProtocols(
        state.config,
        state.authProviderRepo,
      );
      final connectionUri = await generateConnectionUri(state.config);
      final channel = WebSocketChannel.connect(
        connectionUri,
        protocols: protocols,
      );
      sink = channel.sink;

      final subscriptionStream = transformStream(channel.stream);

      _send(WebSocketConnectionInitMessage());

      return sc.setSourceStream(subscriptionStream);
    } on Object catch (e, st) {
      logger.error('Web socket error while initializing', e, st);
      rethrow;
    }
  }

  /// Generates a list of protocols from a [WebSocketState].
  @visibleForTesting
  Future<List<String>> generateProtocols(
    ApiOutputs outputs,
    AmplifyAuthProviderRepository authRepo,
  ) async {
    final authorizationHeaders = await generateAuthorizationHeaders(
      outputs,
      isConnectionInit: true,
      authRepo: authRepo,
      body: appSyncDefaultPayload,
    );
    final encodedAuthHeaders = base64Url
        .encode(json.encode(authorizationHeaders).codeUnits)
        // remove padding char ("=") as it is optional in base64Url encoding and
        // is not permitted in protocol names.
        // Base64Url Spec: https://datatracker.ietf.org/doc/html/rfc4648#section-5
        // Protocol name separators: https://www.rfc-editor.org/rfc/rfc2616 (see "separators")
        .replaceAll('=', '');
    return ['graphql-ws', 'header-$encodedAuthHeaders'];
  }

  @override
  Future<void> register(
    ConnectedState state,
    GraphQLRequest<Object?> request,
  ) async {
    // send registration msg
    await _sendSubscriptionRegistrationMessage(state, request);
  }

  @override
  Future<void> unsubscribe(String subscriptionId) async {
    logger.debug('Attempting to cancel Operation $subscriptionId');
    _send(WebSocketStopMessage(id: subscriptionId));
  }

  void _send(WebSocketMessage message) {
    assert(sink != null, 'Sink must exist');
    final msgJson = json.encode(message.toJson());
    sink!.add(msgJson);
  }

  Future<void> _sendSubscriptionRegistrationMessage<T>(
    ConnectedState state,
    GraphQLRequest<T> request,
  ) async {
    final subscriptionRegistrationMessage =
        await generateSubscriptionRegistrationMessage(
          state.config,
          id: request.id,
          authRepo: state.authProviderRepo,
          request: request,
        );
    _send(subscriptionRegistrationMessage);
  }

  /// Transforms an event of String from AppSync and converts it into a
  ///  [WebSocketEvent] which gets consumed in [WebSocketBloc]
  @visibleForTesting
  Stream<WebSocketEvent> transformStream(Stream<dynamic> stream) {
    return stream
        .transform(const WebSocketMessageStreamTransformer())
        .map(_onData)
        .whereType<WebSocketEvent>()
        .asBroadcastStream();
  }

  WebSocketEvent? _onData(WebSocketMessage message) {
    logger.verbose(prettyPrintJson(message));
    switch (message.messageType) {
      case MessageType.connectionAck:
        final messageAck = message.payload as ConnectionAckMessagePayload;
        return ConnectionAckMessageEvent(messageAck);
      case MessageType.connectionError:
        return const ConnectionErrorEvent();
      case MessageType.keepAlive:
        return const KeepAliveEvent();
      case MessageType.error:
        final wsError = message.payload as WebSocketError;

        // Only handle general messages, not subscription-specific ones
        if (message.id != null) {
          return SubscriptionErrorEvent(message.id!, wsError);
        }

        final exception = ApiOperationException(
          'Error in GraphQL subscription.',
          underlyingException: wsError,
        );
        return WsErrorEvent(exception);
      case MessageType.startAck:
        return SubscriptionStartAckEvent(message.id!);
      case MessageType.data:
        final payload = message.payload as SubscriptionDataPayload;
        return SubscriptionDataEvent(message.id!, payload);
      case MessageType.complete:
        return SubscriptionComplete(message.id!);
      // We only send these messages, so we should not be receiving them.
      case MessageType.connectionInit:
      case MessageType.start:
      case MessageType.stop:
        return null;
    }
  }

  @override
  void close() {
    sink?.close();
    sink = null;
  }

  @override
  String get runtimeTypeName => 'WebSocketService';
}
