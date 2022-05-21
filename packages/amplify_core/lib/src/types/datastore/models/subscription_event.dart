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

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';

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
            .firstWhere((e) => describeEnum(e) == map['eventType'] as String?),
        modelType: modelType);
  }
}

/// The different type of mutations that may be observed
enum EventType { create, update, delete }
