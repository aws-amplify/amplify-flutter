// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/services.dart';

const channel = EventChannel('com.amazonaws.amplify/datastore_hub_events');
late ModelProviderInterface modelProvider;
StreamSubscription<Map<String, Object?>>? eventStream;

class DataStoreStreamController {
  StreamController<DataStoreHubEvent> get datastoreStreamController {
    return _controller;
  }

  void registerModelsForHub(ModelProviderInterface models) {
    modelProvider = models;
  }
}

StreamController<DataStoreHubEvent> _controller =
    StreamController<DataStoreHubEvent>.broadcast(
  onListen: _onListen,
  onCancel: _onCancel,
);

void _onListen() {
  eventStream ??= channel
      .receiveBroadcastStream(1)
      .cast<Map<String, Object?>>()
      .listen((event) {
    final map = event.cast<String, Object?>();
    final eventName = map['eventName'] as String;
    switch (eventName) {
      case 'ready':
        {
          _rebroadcast(DataStoreHubEventType.ready);
        }
      case 'networkStatus':
        {
          _rebroadcast(
            DataStoreHubEventType.networkStatus,
            payload: NetworkStatusEvent(map),
          );
        }
      case 'subscriptionsEstablished':
        {
          _rebroadcast(DataStoreHubEventType.subscriptionsEstablished);
        }
      case 'syncQueriesStarted':
        {
          _rebroadcast(
            DataStoreHubEventType.syncQueriesStarted,
            payload: SyncQueriesStartedEvent(map),
          );
        }
      case 'modelSynced':
        {
          _rebroadcast(
            DataStoreHubEventType.modelSynced,
            payload: ModelSyncedEvent(map),
          );
        }
      case 'syncQueriesReady':
        {
          _rebroadcast(DataStoreHubEventType.syncQueriesReady);
        }
      case 'outboxMutationEnqueued':
        {
          _rebroadcast(
            DataStoreHubEventType.outboxMutationEnqueued,
            payload: OutboxMutationEvent(map, modelProvider, eventName),
          );
        }
      case 'outboxMutationProcessed':
        {
          _rebroadcast(
            DataStoreHubEventType.outboxMutationProcessed,
            payload: OutboxMutationEvent(map, modelProvider, eventName),
          );
        }
      case 'outboxMutationFailed':
        {
          _rebroadcast(
            DataStoreHubEventType.outboxMutationFailed,
            payload: OutboxMutationEvent(map, modelProvider, eventName),
          );
        }
      case 'outboxStatus':
        {
          _rebroadcast(
            DataStoreHubEventType.outboxStatus,
            payload: OutboxStatusEvent(map),
          );
        }
      // event name in amplify-android
      case 'subscriptionDataProcessed':
      // event name in amplify-ios
      case 'syncReceived':
        {
          _rebroadcast(
            DataStoreHubEventType.subscriptionDataProcessed,
            payload: SubscriptionDataProcessedEvent(
              map,
              modelProvider,
            ),
          );
          break;
        }
      default:
        break;
    }
  });
}

void _rebroadcast(
  DataStoreHubEventType type, {
  DataStoreHubEventPayload? payload,
}) {
  try {
    _controller.add(DataStoreHubEvent(type.name, type: type, payload: payload));
  } on Exception catch (e) {
    safePrint(e);
  }
}

void _onCancel() {
  if (!_controller.hasListener) {
    eventStream?.cancel();
    eventStream = null;
  }
}
