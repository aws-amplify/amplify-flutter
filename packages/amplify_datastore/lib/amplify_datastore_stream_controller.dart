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
import 'package:amplify_datastore/types/DataStoreHubEvents/DataStoreHubEvent.dart';
import 'package:amplify_datastore/types/DataStoreHubEvents/ModelSyncedEvent.dart';
import 'package:amplify_datastore/types/DataStoreHubEvents/NetworkStatusEvent.dart';
import 'package:amplify_datastore/types/DataStoreHubEvents/OutboxMutationEvent.dart';
import 'package:amplify_datastore/types/DataStoreHubEvents/SyncQueriesStartedEvent.dart';
import 'package:amplify_core/types/hub/HubEventPayload.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

import 'package:flutter/services.dart';

import 'types/DataStoreHubEvents/OutboxStatusEvent.dart';

EventChannel channel = const EventChannel("com.amazonaws.amplify/datastore_hub_events");
ModelProviderInterface modelProvider;
StreamSubscription eventStream;

class DataStoreStreamController {
  
  StreamController get datastoreStreamController {
    return _controller;
  }

  void registerModelsForHub(ModelProviderInterface models) {
    modelProvider = models;
  }
}

StreamController _controller = StreamController<DataStoreHubEvent>.broadcast(
  onListen: _onListen,
  onCancel: _onCancel,
);

_onListen() {
  if (eventStream == null ) {
    eventStream = channel.receiveBroadcastStream(1).listen((event) {
      switch(event["eventName"]) {
        case "ready": {
          _rebroadcast(event["eventName"]);
        }
        break;
        case "networkStatus": {
          _rebroadcast(event["eventName"], payload: NetworkStatusEvent(event));
        }
        break;
        case 'subscriptionsEstablished': {
          _rebroadcast(event["eventName"]);
        }
        break;
        case "syncQueriesStarted": {
          _rebroadcast(event["eventName"], payload: SyncQueriesStartedEvent(event));
        }
        break;
        case "modelSynced": {
          _rebroadcast(event["eventName"], payload: ModelSyncedEvent(event));
        }
        break;
        case "syncQueriesReady": {
          _rebroadcast(event["eventName"]);
        }
        break;
        case "outboxMutationEnqueued": {
          _rebroadcast(event["eventName"], payload: OutboxMutationEvent(event, modelProvider, event["eventName"]));
        }
        break;
        case "outboxMutationProcessed": {
          _rebroadcast(event["eventName"], payload: OutboxMutationEvent(event, modelProvider, event["eventName"]));
        }
        break;
        case "outboxStatus": {
          _rebroadcast(event["eventName"], payload: OutboxStatusEvent(event));
        }
        break;
        default: {
          print('An Unrecognized DataStore Hub event has been detected on the event channel.');
        }
      }
    });
  }
}

_rebroadcast(String eventName, { HubEventPayload payload}) {
  try {
    _controller.add(DataStoreHubEvent(eventName, payload: payload));
  } catch (e) {
    print(e);
  }
  
}

_onCancel() {
  if (!_controller.hasListener) {
    eventStream.cancel();
    eventStream = null;
  }
}
