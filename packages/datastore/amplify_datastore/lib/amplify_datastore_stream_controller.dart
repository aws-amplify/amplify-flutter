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
    eventStream = channel.receiveBroadcastStream(1).listen((event) {
      final eventName = event['eventName'];
      switch (eventName) {
        case 'ready':
          {
            _rebroadcast(eventName);
          }
          break;
        case 'networkStatus':
          {
            _rebroadcast(eventName, payload: NetworkStatusEvent(event));
          }
          break;
        case 'subscriptionsEstablished':
          {
            _rebroadcast(eventName);
          }
          break;
        case 'syncQueriesStarted':
          {
            _rebroadcast(eventName, payload: SyncQueriesStartedEvent(event));
          }
          break;
        case 'modelSynced':
          {
            _rebroadcast(eventName, payload: ModelSyncedEvent(event));
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
                payload: OutboxMutationEvent(event, modelProvider, eventName));
          }
          break;
        case 'outboxMutationProcessed':
          {
            _rebroadcast(eventName,
                payload: OutboxMutationEvent(event, modelProvider, eventName));
          }
          break;
        case 'outboxStatus':
          {
            _rebroadcast(eventName, payload: OutboxStatusEvent(event));
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
                event,
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
