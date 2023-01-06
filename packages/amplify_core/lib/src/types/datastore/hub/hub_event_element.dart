// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'hub_event_element_with_metadata.dart';

/// The model associated with a DataStore `outboxMutationEnqueued` or
/// `outboxMutationProcessed` Hub event.
class HubEventElement<M extends Model> {
  /// The instance of the mutated model.
  final M model;

  const HubEventElement(this.model);

  factory HubEventElement.fromMap(
    Map serializedHubEventElement,
    ModelProviderInterface provider,
  ) {
    var model = _parseModelFromMap(serializedHubEventElement, provider);
    return HubEventElement(model as M);
  }
}

/// Retrieves the model instance from [serializedHubEventElement].
Model _parseModelFromMap(
  Map serializedHubEventElement,
  ModelProviderInterface provider,
) {
  var serializedElement = serializedHubEventElement['element'] as Map;
  var modelName = serializedHubEventElement['modelName'] as String;
  var modelData = serializedElement['model'] as Map;
  var serializedModelData =
      (modelData['serializedData'] as Map).cast<String, dynamic>();
  return provider
      .getModelTypeByModelName(modelName)
      .fromJson(serializedModelData);
}
