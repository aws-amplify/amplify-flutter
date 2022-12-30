// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

import 'amplify_hub_impl.dart';

/// A [HubEvent] listener, passed to [AmplifyHub.listen].
typedef HubEventListener<E extends HubEvent> = void Function(E event);

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

  /// The available streams for listening.
  Map<HubChannel, Stream<HubEvent>> get availableStreams;

  /// Listens to the Hub [channel] for events produced from all plugins in the
  /// channel's categories.
  ///
  /// Optionally, [onError] may be specified which will be passed to
  /// [Stream.listen]. It must be of type `void Function(Object error)` or
  /// `void Function(Object error, StackTrace)`.
  StreamSubscription<E>
      listen<HubEventPayload, E extends HubEvent<HubEventPayload>>(
    HubChannel<HubEventPayload, E> channel,
    HubEventListener<E> listener, {
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
