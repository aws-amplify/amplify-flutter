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

part of 'hub_event_element.dart';

/// The model and metadata associated with a DataStore `outboxMutationProcessed`
/// Hub event.
class HubEventElementWithMetadata<ModelIdentifier extends Object,
        M extends Model<ModelIdentifier, M>>
    extends HubEventElement<ModelIdentifier, M> {
  /// The version of the model.
  final int version;

  /// The last time the model was updated locally, in seconds since epoch.
  final int lastChangedAt;

  /// Whether or not the model was deleted.
  final bool deleted;

  const HubEventElementWithMetadata(
    M model, {
    required this.version,
    required this.lastChangedAt,
    bool? deleted,
  })  : deleted = deleted ?? false,
        super(model);
}
