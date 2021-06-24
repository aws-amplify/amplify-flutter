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

part of 'HubEventElement.dart';

/// The model and metadata associated with a DataStore `outboxMutationProcessed`
/// Hub event.
class HubEventElementWithMetadata extends HubEventElement {
  /// The version of the model.
  final int version;

  /// The last time the model was updated locally.
  final DateTime lastChangedAt;

  /// Whether or not the model was deleted.
  final bool deleted;

  const HubEventElementWithMetadata(
    Model model, {
    required this.version,
    required this.lastChangedAt,
    required this.deleted,
  }) : super(model);

  factory HubEventElementWithMetadata.fromMap(
    Map serializedHubEventElement,
    ModelProviderInterface provider,
  ) {
    var model = _parseModelFromMap(serializedHubEventElement, provider);
    var serializedElement = serializedHubEventElement['element'] as Map;
    var metadata = serializedElement['syncMetadata'] as Map;
    var version = metadata['_version'] as int;
    var lastChangedAtSeconds = metadata['_lastChangedAt'] as int;
    var lastChangedAt =
        DateTime.fromMillisecondsSinceEpoch(1000 * lastChangedAtSeconds);
    var deleted = metadata['_deleted'] as bool? ?? false;
    return HubEventElementWithMetadata(
      model,
      version: version,
      lastChangedAt: lastChangedAt,
      deleted: deleted,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HubEventElementWithMetadata &&
          model == other.model &&
          version == other.version &&
          lastChangedAt == other.lastChangedAt &&
          deleted == other.deleted;

  @override
  int get hashCode => hashValues(model, version, lastChangedAt, deleted);
}
