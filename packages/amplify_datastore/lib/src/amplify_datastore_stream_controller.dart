// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/services.dart';

const channel = EventChannel('com.amazonaws.amplify/datastore_hub_events');
late ModelProviderInterface modelProvider;
StreamSubscription? eventStream;

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

_onListen() {
  if (eventStream == null) {
    eventStream = channel
        .receiveBroadcastStream(1)
        .cast<Map<Object?, Object?>>()
        .listen((event) {
      final map = event.cast<String, Object?>();
      final eventName = map['eventName'] as String;
      switch (eventName) {
        case 'ready':
          {
            _rebroadcast(eventName);
          }
          break;
        case 'networkStatus':
          {
            _rebroadcast(eventName, payload: NetworkStatusEvent(map));
          }
          break;
        case 'subscriptionsEstablished':
          {
            _rebroadcast(eventName);
          }
          break;
        case 'syncQueriesStarted':
          {
            _rebroadcast(eventName, payload: SyncQueriesStartedEvent(map));
          }
          break;
        case 'modelSynced':
          {
            _rebroadcast(eventName, payload: ModelSyncedEvent(map));
          }
          break;
        case 'syncQueriesReady':
          {
            _rebroadcast(eventName);
          }
          break;
        case 'outboxMutationEnqueued':
          {
            _rebroadcast(eventName,
                payload: OutboxMutationEvent(map, modelProvider, eventName));
          }
          break;
        case 'outboxMutationProcessed':
          {
            _rebroadcast(eventName,
                payload: OutboxMutationEvent(map, modelProvider, eventName));
          }
          break;
        case 'outboxStatus':
          {
            _rebroadcast(eventName, payload: OutboxStatusEvent(map));
          }
          break;
        // event name in amplify-android
        case 'subscriptionDataProcessed':
        // event name in amplify-ios
        case 'syncReceived':
          {
            _rebroadcast(
              'subscriptionDataProcessed',
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
}

_rebroadcast(String eventName, {DataStoreHubEventPayload? payload}) {
  try {
    _controller.add(DataStoreHubEvent(eventName, payload: payload));
  } catch (e) {
    print(e);
  }
}

_onCancel() {
  if (!_controller.hasListener) {
    eventStream?.cancel();
    eventStream = null;
  }
}
