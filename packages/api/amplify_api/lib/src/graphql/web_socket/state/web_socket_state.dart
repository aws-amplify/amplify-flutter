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

// ignore_for_file: public_member_api_docs

import 'package:amplify_api/src/graphql/web_socket/blocs/ws_subscriptions_bloc.dart';
import 'package:amplify_api/src/graphql/web_socket/services/web_socket_service.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';

abstract class WebSocketState {
  const WebSocketState(
    this.config,
    this.authProviderRepo,
    this.networkState,
    this.intendedState,
    this.service,
    this.subscriptionBlocs,
    this.subscriptionRequests,
  );

  final AWSApiConfig config;
  final AmplifyAuthProviderRepository authProviderRepo;

  final NetworkState networkState;
  final IntendedState intendedState;

  final WebSocketService service;

  final Map<String, WsSubscriptionBloc<Object?>> subscriptionBlocs;

  final Set<GraphQLRequest<Object?>> subscriptionRequests;
}

class ConnectingState extends WebSocketState {
  ConnectingState(
    super.config,
    super.authProviderRepo,
    super.networkState,
    super.intendedState,
    super.service,
    super.subscriptionBlocs,
    super.subscriptionRequests,
  );

  ConnectedState connected(RestartableTimer timer) {
    return ConnectedState(
      config,
      authProviderRepo,
      networkState,
      intendedState,
      service,
      subscriptionBlocs,
      subscriptionRequests,
      timer,
    );
  }
}

class ConnectedState extends WebSocketState {
  ConnectedState(
    super.config,
    super.authProviderRepo,
    super.networkState,
    super.intendedState,
    super.service,
    super.subscriptionBlocs,
    super.subscriptionRequests,
    this.timeoutTimer,
  );

  final RestartableTimer timeoutTimer;
}

class PendingDisconnectedState extends WebSocketState {
  PendingDisconnectedState(
    super.config,
    super.authProviderRepo,
    super.networkState,
    super.intendedState,
    super.service,
    super.subscriptionBlocs,
    super.subscriptionRequests,
  );
}

class DisconnectedState extends WebSocketState {
  DisconnectedState(
    super.config,
    super.authProviderRepo,
    super.networkState,
    super.intendedState,
    super.service,
    super.subscriptionBlocs,
    super.subscriptionRequests,
  );

  ConnectingState connecting() {
    return ConnectingState(
      config,
      authProviderRepo,
      networkState,
      intendedState,
      service,
      subscriptionBlocs,
      subscriptionRequests,
    );
  }
}

class FailureState extends WebSocketState {
  FailureState(
    super.config,
    super.authProviderRepo,
    super.networkState,
    super.intendedState,
    super.service,
    super.subscriptionBlocs,
    super.subscriptionRequests,
  );
}
