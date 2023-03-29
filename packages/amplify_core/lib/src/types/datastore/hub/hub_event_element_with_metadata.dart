// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'hub_event_element.dart';

/// The model and metadata associated with a DataStore `outboxMutationProcessed`
/// Hub event.
class HubEventElementWithMetadata<M extends Model> extends HubEventElement<M> {
  const HubEventElementWithMetadata(
    super.model, {
    required this.version,
    required this.lastChangedAt,
    bool? deleted,
  }) : deleted = deleted ?? false;

  factory HubEventElementWithMetadata.fromMap(
    Map<String, Object?> serializedHubEventElement,
    ModelProviderInterface provider,
  ) {
    final model = _parseModelFromMap(serializedHubEventElement, provider);
    final serializedElement = serializedHubEventElement['element'] as Map;
    final metadata = serializedElement['syncMetadata'] as Map;
    final version = metadata['_version'] as int;
    final lastChangedAt = metadata['_lastChangedAt'] as int;
    final deleted = metadata['_deleted'] as bool?;
    return HubEventElementWithMetadata(
      model as M,
      version: version,
      lastChangedAt: lastChangedAt,
      deleted: deleted,
    );
  }

  /// The version of the model.
  final int version;

  /// The last time the model was updated locally, in seconds since epoch.
  final int lastChangedAt;

  /// Whether or not the model was deleted.
  final bool deleted;
}
