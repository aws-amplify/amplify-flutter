// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library model;

import 'package:amplify_core/amplify_core.dart';

/// {@template subscription_event}
/// An event containing the details of mutations that have occurred on the backend
/// {@endtemplate}
class SubscriptionEvent<T extends Model> {
  /// The item that was created, updated, or deleted
  final T item;

  /// The model type of the item that was created, updated, or deleted
  final ModelType<T> modelType;

  /// {@macro subscription_event_type}
  final EventType eventType;

  /// {@macro subscription_event}
  const SubscriptionEvent(
      {required this.item, required this.modelType, required this.eventType});

  factory SubscriptionEvent.fromMap(
      Map<dynamic, dynamic> map, ModelType<T> modelType) {
    Map<String, dynamic> serializedItem =
        Map<String, dynamic>.from(map['item'] as Map);

    return SubscriptionEvent(
        item: modelType.fromJson(
          Map<String, dynamic>.from(serializedItem['serializedData'] as Map),
        ),
        eventType: EventType.values
            .firstWhere((e) => e.name == map['eventType'] as String?),
        modelType: modelType);
  }
}

/// The different type of mutations that may be observed
enum EventType { create, update, delete }
