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

/// {@template subscription_event}
/// An event containing the details of mutations that have occurred on the backend
/// {@endtemplate}
class SubscriptionEvent<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  /// {@macro subscription_event}
  const SubscriptionEvent({
    required this.item,
    required this.eventType,
  });

  /// The item that was created, updated, or deleted
  final M item;

  /// {@macro subscription_event_type}
  final EventType eventType;
}

/// The different type of mutations that may be observed
enum EventType { create, update, delete }
