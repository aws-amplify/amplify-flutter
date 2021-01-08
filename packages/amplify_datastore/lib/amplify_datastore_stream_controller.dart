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
    return controller;
  }

  void registerModelsForHub(ModelProviderInterface models) {
    modelProvider = models;
  }
}

StreamController controller = StreamController<DataStoreHubEvent>.broadcast(
  onListen: onListen,
  onCancel: onCancel,
);

onListen() {
  if (eventStream == null ) {
    eventStream = channel.receiveBroadcastStream(1).listen((event) {
      switch(event["eventName"]) {
        case "ready": {
          rebroadcast(event["eventName"]);
        }
        break;
        case "networkStatus": {
          rebroadcast(event["eventName"], payload: NetworkStatusEvent(event));
        }
        break;
        case 'subscriptionsEstablished': {
          rebroadcast(event["eventName"]);
        }
        break;
        case "syncQueriesStarted": {
          rebroadcast(event["eventName"], payload: SyncQueriesStartedEvent(event));
        }
        break;
        case "modelSynced": {
          rebroadcast(event["eventName"], payload: ModelSyncedEvent(event));
        }
        break;
        case "syncQueriesReady": {
          rebroadcast(event["eventName"]);
        }
        break;
        case "outboxMutationEnqueued": {
          rebroadcast(event["eventName"], payload: OutboxMutationEvent(event, modelProvider, event["eventName"]));
        }
        break;
        case "outboxMutationProcessed": {
          rebroadcast(event["eventName"], payload: OutboxMutationEvent(event, modelProvider, event["eventName"]));
        }
        break;
        case "outboxStatus": {
          rebroadcast(event["eventName"], payload: OutboxStatusEvent(event));
        }
        break;
        default: {
          print('An Unrecognized DataStore Hub event has been detected on the event channel.');
        }
      }
    });
  }
}

rebroadcast(String eventName, { HubEventPayload payload}) {
  try {
    controller.add(DataStoreHubEvent(eventName, payload: payload));
  } catch (e) {
    print(e);
  }
  
}

onCancel() {
  if (!controller.hasListener) {
    eventStream.cancel();
    eventStream = null;
  }
}
