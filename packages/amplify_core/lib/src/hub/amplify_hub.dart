/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

import 'amplify_hub_impl.dart';

/// A [HubEvent] listener, passed to [AmplifyHub.listen].
typedef Listener<HubEventPayload, E extends HubEvent<HubEventPayload>> = void
    Function(E event);

/// {@template amplify_core.hub.amplify_hub}
/// Amplify Hub provides realtime notifications to events in the different
/// categories.
///
/// Use [listen] to subscribe to a [HubChannel].
/// {@endtemplate}
abstract class AmplifyHub implements Closeable {
  /// {@macro amplify_core.hub.amplify_hub}
  factory AmplifyHub() = AmplifyHubImpl;

  /// {@macro amplify_core.hub.amplify_hub}
  @protected
  AmplifyHub.protected();

  /// Listens to the Hub [channel] for events produced from all plugins in the
  /// channel's category.
  ///
  /// Optionally, [onError] may be specified which will be passed to
  /// [Stream.listen]. It must be of type `void Function(Object error)` or
  /// `void Function(Object error, StackTrace)`.
  StreamSubscription<E>
      listen<HubEventPayload, E extends HubEvent<HubEventPayload>>(
    HubChannel<HubEventPayload, E> channel,
    Listener<HubEventPayload, E> listener, {
    Function? onError,
  });

  /// Adds a Hub channel with the given [stream].
  ///
  /// This may be called multiple times with the same [channel]. The provided
  /// streams will be merged into a single stream.
  void addChannel<HubEventPayload, E extends HubEvent<HubEventPayload>>(
    HubChannel<HubEventPayload, E> channel,
    Stream<E> stream,
  );

  /// Resets the Hub by cancelling subscriptions and clearing registered
  /// streams.
  @override
  void close();
}
