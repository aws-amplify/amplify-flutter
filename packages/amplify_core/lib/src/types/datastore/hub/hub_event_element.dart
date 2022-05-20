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
