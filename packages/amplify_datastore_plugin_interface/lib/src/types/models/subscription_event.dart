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

import 'package:flutter/foundation.dart';

import 'model.dart';

class SubscriptionEvent<T extends Model> {
  final T item;
  final ModelType<T> modelType;
  final EventType eventType;

  const SubscriptionEvent({this.item, this.modelType, this.eventType});

  factory SubscriptionEvent.fromMap(
      Map<dynamic, dynamic> map, ModelType<T> modelType) {
    if (map == null) return null;

    Map<String, dynamic> serializedItem =
        Map<String, dynamic>.from(map["item"]);

    return SubscriptionEvent(
        item: modelType.fromJson(
            Map<String, dynamic>.from(serializedItem["serializedData"])),
        eventType: EventType.values
            .firstWhere((e) => describeEnum(e) == map["eventType"] as String),
        modelType: modelType);
  }
}

/**
 * Type of subscription event
*/
enum EventType { create, update, delete }
