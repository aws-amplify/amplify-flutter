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

import 'package:amplify_api/src/graphql/web_socket/blocs/ws_subscriptions_bloc.dart';
import 'package:amplify_api/src/graphql/web_socket/services/web_socket_service.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';

/// Base [WebSocketState] containing the discrete state for a websocket
/// connection & subscription management
abstract class WebSocketState {
  /// Provide the base state used in all variations.
  const WebSocketState(
    this.config,
    this.authProviderRepo,
    this.networkState,
    this.intendedState,
    this.service,
    this.subscriptionBlocs,
    this.options,
  );

  /// AWS Config
  final AWSApiConfig config;

  /// Amplify Auth Provider
  final AmplifyAuthProviderRepository authProviderRepo;

  /// Hardware level Network State
  final NetworkState networkState;

  /// Intended State, eg. we have valid subscriptions so we should be connected
  final IntendedState intendedState;

  /// [WebSocketService] contains all the business logic & mutations of this state
  final WebSocketService service;

  /// Web Socket Subscription Blocs represented by
  final Map<String, WsSubscriptionBloc<Object?>> subscriptionBlocs;

  /// GraphQL Subscriptions Options used to customize the subscription experience
  final GraphQLSubscriptionOptions options;

  /// Poll URI
  Uri get pollUri => Uri.parse(config.endpoint).replace(path: 'ping');

  /// Move state to [ConnectingState]
  ConnectingState connecting({
    NetworkState? networkState,
    IntendedState? intendedState,
  }) =>
      ConnectingState(
        config,
        authProviderRepo,
        networkState ?? this.networkState,
        intendedState ?? this.intendedState,
        service,
        subscriptionBlocs,
        options,
      );

  /// Move state to [ReconnectingState]
  ReconnectingState reconnecting({
    NetworkState? networkState,
    IntendedState? intendedState,
  }) {
    return ReconnectingState(
      config,
      authProviderRepo,
      networkState ?? this.networkState,
      intendedState ?? this.intendedState,
      service,
      subscriptionBlocs,
      options,
    );
  }

  /// Move state to [DisconnectedState]
  DisconnectedState disconnect() => DisconnectedState(
        config,
        authProviderRepo,
        networkState,
        intendedState,
        service,
        subscriptionBlocs,
        options,
      );

  /// Move state to [FailureState]
  FailureState failed(Object e, {StackTrace? st}) => FailureState(
        config,
        authProviderRepo,
        networkState,
        intendedState,
        service,
        subscriptionBlocs,
        options,
        e,
        st,
      );

  /// Move state to [PendingDisconnect]
  PendingDisconnect shutdown() => PendingDisconnect(
        config,
        authProviderRepo,
        networkState,
        intendedState,
        service,
        subscriptionBlocs,
        options,
      );
}

/// State for when a new connection is pending
class ConnectingState extends WebSocketState {
  /// Create a connecting state
  const ConnectingState(
    super.config,
    super.authProviderRepo,
    super.networkState,
    super.intendedState,
    super.service,
    super.subscriptionBlocs,
    super.options,
  );

  /// Move state to [ConnectedState]
  ConnectedState connected(RestartableTimer timer, Timer pollTimer) =>
      ConnectedState(
        config,
        authProviderRepo,
        networkState,
        intendedState,
        service,
        subscriptionBlocs,
        options,
        timer,
        pollTimer,
      );
}

/// State for when connection is being reestablished
class ReconnectingState extends WebSocketState {
  /// Create a reconnecting state
  ReconnectingState(
    super.config,
    super.authProviderRepo,
    super.networkState,
    super.intendedState,
    super.service,
    super.subscriptionBlocs,
    super.options,
  );

  /// Move state to [ConnectedState]
  ConnectedState connected(RestartableTimer timer, Timer pollTimer) =>
      ConnectedState(
        config,
        authProviderRepo,
        networkState,
        intendedState,
        service,
        subscriptionBlocs,
        options,
        timer,
        pollTimer,
      );
}

/// State when web socket connection has been established and healthy
class ConnectedState extends WebSocketState {
  /// Create a connected state, takes an additional [RestartableTimer] to track
  /// keep alive messages from AppSync. Duration provided by AppSync.
  const ConnectedState(
    super.config,
    super.authProviderRepo,
    super.networkState,
    super.intendedState,
    super.service,
    super.subscriptionBlocs,
    super.options,
    this.timeoutTimer,
    this.pollTimer,
  );

  /// timer used for missed ka messages
  final RestartableTimer timeoutTimer;

  /// timer used for periodic polling
  final Timer pollTimer;

  /// Move state to [ConnectingState]
  @override
  ConnectingState connecting({
    NetworkState? networkState,
    IntendedState? intendedState,
  }) {
    _cancelTimers();

    return super.connecting(
      networkState: networkState ?? this.networkState,
      intendedState: intendedState ?? this.intendedState,
    );
  }

  /// Move state to [ReconnectingState]
  @override
  ReconnectingState reconnecting({
    NetworkState? networkState,
    IntendedState? intendedState,
  }) {
    _cancelTimers();

    return super.reconnecting(
      networkState: networkState ?? this.networkState,
      intendedState: intendedState ?? this.intendedState,
    );
  }

  /// Move state to [DisconnectedState]
  @override
  DisconnectedState disconnect() {
    _cancelTimers();

    return super.disconnect();
  }

  /// Move state to [FailureState]
  @override
  FailureState failed(
    Object e, {
    StackTrace? st,
  }) {
    _cancelTimers();

    return super.failed(e, st: st);
  }

  /// Move state to [PendingDisconnect]
  @override
  PendingDisconnect shutdown() {
    _cancelTimers();

    return super.shutdown();
  }

  void _cancelTimers() {
    timeoutTimer.cancel();
    pollTimer.cancel();
  }
}

/// State when web socket is not connected to AppSync
class PendingDisconnect extends WebSocketState {
  /// Create a [PendingDisconnect]
  const PendingDisconnect(
    super.config,
    super.authProviderRepo,
    super.networkState,
    super.intendedState,
    super.service,
    super.subscriptionBlocs,
    super.options,
  );
}

/// State when web socket is not connected to AppSync
class DisconnectedState extends WebSocketState {
  /// Create a [DisconnectedState]
  const DisconnectedState(
    super.config,
    super.authProviderRepo,
    super.networkState,
    super.intendedState,
    super.service,
    super.subscriptionBlocs,
    super.options,
  );
}

/// State when web socket connection failed
class FailureState extends WebSocketState {
  /// Create a [FailureState] state
  const FailureState(
    super.config,
    super.authProviderRepo,
    super.networkState,
    super.intendedState,
    super.service,
    super.subscriptionBlocs,
    super.options,
    this.error,
    this.stackTrace,
  );

  /// Underlying exception that caused failure.
  final Object error;

  /// Underlying stack trace
  final StackTrace? stackTrace;
}
