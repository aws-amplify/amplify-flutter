// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'hub_event_element_with_metadata.dart';

/// The model associated with a DataStore `outboxMutationEnqueued` or
/// `outboxMutationProcessed` Hub event.
class HubEventElement<M extends Model> {
  const HubEventElement(this.model);

  factory HubEventElement.fromMap(
    Map<String, Object?> serializedHubEventElement,
    ModelProviderInterface provider,
  ) {
    final model = _parseModelFromMap(serializedHubEventElement, provider);
    return HubEventElement(model as M);
  }

  /// The instance of the mutated model.
  final M model;
}

/// Retrieves the model instance from [serializedHubEventElement].
Model _parseModelFromMap(
  Map<String, Object?> serializedHubEventElement,
  ModelProviderInterface provider,
) {
  final serializedElement = serializedHubEventElement['element'] as Map;
  final modelName = serializedHubEventElement['modelName'] as String;
  final modelData = Map<String, dynamic>.from(serializedElement['model'] as Map)
      .cast<String, dynamic>();
  return provider.getModelTypeByModelName(modelName).fromJson(modelData);
}
