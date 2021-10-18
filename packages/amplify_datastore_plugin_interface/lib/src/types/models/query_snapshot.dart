/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

library model;

import 'model.dart';

import 'subscription_event.dart';

/// {@template query_snapshot}
/// A snapshot of the [items] from DataStore, the [events] since the last snapshot,
/// and whether this model has finished syncing and subscriptions are active.
/// {@endtemplate}
class QuerySnapshot<T extends Model> {
  /// All model instances from the local store at the time that the snapshot was recieved
  final List<T> items;

  /// The latest changes since last snapshot
  final List<SubscriptionEvent> events;

  /// Indicates whether all sync queries for this model are complete, and subscriptions are active
  final bool isSynced;

  /// {@macro query_snapshot}
  const QuerySnapshot({
    required this.items,
    required this.events,
    required this.isSynced,
  });

  factory QuerySnapshot.fromMap(
    Map<dynamic, dynamic> map,
    ModelType<T> modelType,
  ) {
    List<T> items = map["items"] == null
        ? []
        : (map["items"] as List)
            .map((serializedModel) =>
                modelType.fromJson(Map<String, Object>.from(serializedModel)))
            .toList();
    List<SubscriptionEvent> events = map["events"] == null
        ? []
        : (map["events"] as List)
            .map((event) => SubscriptionEvent.fromMap(event, modelType))
            .toList();
    bool isSynced = map["isSynced"] as bool? ?? false;

    return QuerySnapshot(
      items: items,
      events: events,
      isSynced: isSynced,
    );
  }
}
