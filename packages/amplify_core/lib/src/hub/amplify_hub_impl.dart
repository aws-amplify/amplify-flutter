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
import 'package:async/async.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.hub.amplify_hub_impl}
/// An implementation of [AmplifyHub] in Dart.
///
/// {@macro amplify_core.hub.amplify_hub}
/// {@endtemplate}
@internal
class AmplifyHubImpl extends AmplifyHub {
  /// {@macro amplify_core.hub.amplify_hub_impl}
  AmplifyHubImpl() : super.protected();

  static final AmplifyLogger _logger = AmplifyLogger.category(Category.hub);

  final Map<HubChannel, StreamCompleter<HubEvent>> _streamCompleters = {};
  final Map<HubChannel, StreamGroup<HubEvent>> _availableStreams = {};
  final Map<HubChannel, List<StreamSubscription>> _subscriptions = {};

  @override
  Map<HubChannel, Stream<HubEvent>> get availableStreams =>
      UnmodifiableMapView({
        for (final channel in HubChannel.values)
          channel: _initChannel(channel).stream,
      });

  StreamGroup<HubEvent>
      _initChannel<HubEventPayload, E extends HubEvent<HubEventPayload>>(
    HubChannel<HubEventPayload, E> channel,
  ) {
    final streamCompleter = _streamCompleters[channel] ??= StreamCompleter<E>();
    return _availableStreams[channel] ??= () {
      final streamGroup = StreamGroup<E>.broadcast();
      streamCompleter.setSourceStream(streamGroup.stream);
      return streamGroup;
    }();
  }

  @override
  StreamSubscription<E>
      listen<HubEventPayload, E extends HubEvent<HubEventPayload>>(
    HubChannel<HubEventPayload, E> channel,
    HubEventListener<E> listener, {
    Function? onError,
  }) {
    final stream = _initChannel(channel).stream.cast<E>();
    final subscription = stream.listen(
      listener,
      onError: onError ??
          (Object? e, StackTrace st) {
            _logger.error('Error in channel $channel', e, st);
          },
      cancelOnError: true,
    );

    _subscriptions[channel] ??= [];
    _subscriptions[channel]!.add(subscription);

    return subscription;
  }

  @override
  void addChannel<HubEventPayload, E extends HubEvent<HubEventPayload>>(
    HubChannel<HubEventPayload, E> channel,
    Stream<E> stream,
  ) {
    _initChannel(channel).add(stream);
  }

  @override
  void close() {
    Future.wait<void>([
      for (final stream in _availableStreams.values) stream.close(),
    ]).ignore();
    _streamCompleters.clear();
    _availableStreams.clear();
    _subscriptions.clear();
  }
}
