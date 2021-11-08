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

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';

const _serializedData = 'serializedData';

/// "items", the key name for nested data in AppSync
const items = 'items';

/// e.g., given Post, returns "blog".
String? getParentModelName(ModelType? modelType) {
  final provider = AmplifyAPI.instance.getModelProvider();
  if (provider == null || modelType == null) return null;
  final modelSchema =
      getModelSchemaByModelName(modelType.modelName(), provider);
  final belongsToEntry = getBelongsToFieldFromModelSchema(modelSchema);
  if (belongsToEntry != null) {
    return belongsToEntry.value.name;
  }
  return null;
}

MapEntry<String, ModelField>? getBelongsToFieldFromModelSchema(
    ModelSchema schema) {
  return schema.fields!.entries.firstWhereOrNull((entry) =>
      entry.value.association?.associationType ==
      ModelAssociationEnum.BelongsTo);
}

ModelSchema getModelSchemaByModelName(
    String modelName, ModelProviderInterface provider) {
  return provider.modelSchemas.firstWhere((elem) => elem.name == modelName,
      orElse: () => throw ApiException(
          'No schema found for the ModelType provided: $modelName',
          recoverySuggestion:
              'Pass in a valid modelProvider instance while instantiating APIPlugin or provide a valid ModelType'));
}

/// Transform the JSON from AppSync so it matches the fromJson in codegen models.
/// 1) Look for a parent in the schema. If that parent exists in the JSON, transform it.
/// 2) Look for list of children under [fieldName]["items"] and hoist up so no more ["items"].
Map<String, dynamic> transformAppSyncJsonToModelJson(
    Map<String, dynamic> input, ModelType? modelType) {
  final parentName = getParentModelName(modelType);
  final _input = <String, dynamic>{...input}; // avoid mutating original
  // transform parent
  if (parentName != null && _input.containsKey(parentName)) {
    _input.update(parentName,
        (dynamic parentMap) => <String, dynamic>{_serializedData: parentMap});
  }

  // transform children recursively
  for (var element in _input.entries.where(
      (element) => element.value is Map && element.value[items] is List)) {
    List<dynamic> _items = element.value[items];
    final transformedItems = _items
        .map((dynamic item) =>
            {_serializedData: transformAppSyncJsonToModelJson(item, null)})
        .toList();
    _input.update(element.key, (dynamic value) => transformedItems);
  }
  return _input;
}
