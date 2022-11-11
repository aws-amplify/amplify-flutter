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

import 'package:amplify_api/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_core/amplify_core.dart';

/// Base Subscription State for web socket subscriptions
abstract class WsSubscriptionState<T> {
  /// Every State needs a [GraphQLRequest] request, [Function()?] onEstablish
  /// callback, and a corresponding [WebSocketBloc]
  const WsSubscriptionState(this.request, this.onEstablished, this.parentBloc);

  /// the request to manage
  final GraphQLRequest<T> request;

  /// executes when start_ack message received
  final void Function()? onEstablished;

  /// Parent Web Socket Bloc
  final WebSocketBloc parentBloc;

  /// Move state to [SubscriptionErrorState]
  SubscriptionErrorState<T> error(Object e, StackTrace? st) {
    return SubscriptionErrorState(
      request,
      onEstablished,
      parentBloc,
      e,
      st,
    );
  }
}

/// State for when we are expecting a Start Ack message from AppSync
class SubscriptionPendingState<T> extends WsSubscriptionState<T> {
  /// Create a Pending state
  const SubscriptionPendingState(
    super.request,
    super.onEstablished,
    super.parentBloc,
  );

  /// Move state to [SubscriptionListeningState]
  SubscriptionListeningState<T> ready() {
    return SubscriptionListeningState(
      request,
      onEstablished,
      parentBloc,
    );
  }
}

/// State for when subscription has been established and listening for new events
class SubscriptionListeningState<T> extends WsSubscriptionState<T> {
  /// Create a Listening State
  const SubscriptionListeningState(
    super.request,
    super.onEstablished,
    super.parentBloc,
  );

  /// Move state to [SubscriptionCompletedState]
  SubscriptionCompletedState<T> complete() {
    return SubscriptionCompletedState(
      request,
      onEstablished,
      parentBloc,
    );
  }
}

/// State for when a subscription
class SubscriptionCompletedState<T> extends WsSubscriptionState<T> {
  /// Create a complete
  const SubscriptionCompletedState(
    super.request,
    super.onEstablished,
    super.parentBloc,
  );
}

/// State for when an error has occurred
class SubscriptionErrorState<T> extends WsSubscriptionState<T> {
  /// Create an Error state
  const SubscriptionErrorState(
    super.request,
    super.onEstablished,
    super.parentBloc,
    this.exception,
    this.stackTrace,
  );

  /// Error that caused the error state
  final Object exception;

  /// Stack trace for the error
  final StackTrace? stackTrace;
}
