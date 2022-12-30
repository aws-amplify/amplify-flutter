// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'hub_event_element.dart';

/// The model and metadata associated with a DataStore `outboxMutationProcessed`
/// Hub event.
class HubEventElementWithMetadata<M extends Model> extends HubEventElement<M> {
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

  factory HubEventElementWithMetadata.fromMap(
    Map serializedHubEventElement,
    ModelProviderInterface provider,
  ) {
    var model = _parseModelFromMap(serializedHubEventElement, provider);
    var serializedElement = serializedHubEventElement['element'] as Map;
    var metadata = serializedElement['syncMetadata'] as Map;
    var version = metadata['_version'] as int;
    var lastChangedAt = metadata['_lastChangedAt'] as int;
    var deleted = metadata['_deleted'] as bool?;
    return HubEventElementWithMetadata(
      model as M,
      version: version,
      lastChangedAt: lastChangedAt,
      deleted: deleted,
    );
  }
}
