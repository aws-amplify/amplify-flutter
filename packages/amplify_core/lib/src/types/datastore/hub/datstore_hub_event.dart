// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.datastore_hub_event}
/// DataStore periodically publishes state notifications onto Amplify's Hub.
/// You can subscribe to the Hub to gain insight into the internal state of the DataStore.
///
/// The following example shows how to listen to DataStore Hub events:
/// ```dart
/// Amplify.Hub.listen(HubChannel.DataStore, (msg) {
///  if (msg.type == DataStoreHubType.ready) {
///    print('DataStore is ready!');
///  }
///  print(msg);
/// });
/// ```
/// {@endtemplate}
class DataStoreHubEvent extends HubEvent<DataStoreHubEventPayload> {
  /// {@macro amplify_core.datastore_hub_event}
  DataStoreHubEvent(
    super.eventName, {
    required this.type,
    super.payload,
  });

  /// {@macro amplify_core.datastore_hub_event.type}
  final DataStoreHubEventType type;
}

abstract class DataStoreHubEventPayload {
  const DataStoreHubEventPayload();
}

/// {@template amplify_core.datastore_hub_event.type}
/// The type of the DataStore Hub event.
/// {@endtemplate}
enum DataStoreHubEventType {
  /// Dispatched when DataStore as a whole is ready, at this point all data is available
  ready,

  /// Dispatched when DataStore starts and every time network status changes
  networkStatus,

  /// Dispatched when DataStore has finished establishing its subscriptions to all models
  subscriptionsEstablished,

  /// Dispatched when DataStore is about to perform its initial sync queries
  syncQueriesStarted,

  /// Dispatched once for each model after the model instances have been synced from the cloud
  modelSynced,

  /// Dispatched when all models have been synced from the cloud
  syncQueriesReady,

  /// Dispatched when a local change has been newly staged for synchronization with the Cloud
  outboxMutationEnqueued,

  /// Dispatched when a local change has finished synchronization with the Cloud and is updated locally
  outboxMutationProcessed,

  /// ANDROID ONLY -
  /// Dispatched when publishing a mutation fails
  outboxMutationFailed,

  /// Dispatched when:
  /// - the DataStore starts
  /// - each time a local mutation is enqueued into the outbox
  /// - each time a local mutation is finished processing
  outboxStatus,

  /// Dispatched when a subscription has processed a new item from the remote
  subscriptionDataProcessed,
}
