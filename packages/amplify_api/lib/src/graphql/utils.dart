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

class _RelatedFields {
  final Iterable<ModelField> singleFields;
  final Iterable<ModelField> hasManyFields;

  _RelatedFields(this.singleFields, this.hasManyFields);
}

/// Gets the modelFields for the given schema which we can transform/parse.
_RelatedFields getRelatedFields(ModelSchema modelSchema) {
  final singleFields = modelSchema.fields!.values.where((field) =>
      field.association?.associationType == ModelAssociationEnum.HasOne ||
      field.association?.associationType == ModelAssociationEnum.BelongsTo);
  final hasManyFields = modelSchema.fields!.values.where((field) =>
      field.association?.associationType == ModelAssociationEnum.HasMany);

  return _RelatedFields(singleFields, hasManyFields);
}

MapEntry<String, ModelField>? getBelongsToFieldFromModelSchema(
    ModelSchema schema) {
  return schema.fields!.entries.firstWhereOrNull((entry) =>
      entry.value.association?.associationType ==
      ModelAssociationEnum.BelongsTo);
}

/// Gets the modelSchema from provider that matches the name and validates its fields.
ModelSchema getModelSchemaByModelName(
    String modelName, GraphQLRequestOperation? operation) {
  final provider = AmplifyAPI.instance.getModelProvider();
  if (provider == null) {
    throw ApiException('No modelProvider found',
        recoverySuggestion:
            'Pass in a modelProvider instance while instantiating APIPlugin');
  }
  final schema = provider.modelSchemas.firstWhere(
      (elem) => elem.name == modelName,
      orElse: () => throw ApiException(
          'No schema found for the ModelType provided: $modelName',
          recoverySuggestion:
              'Pass in a valid modelProvider instance while instantiating APIPlugin or provide a valid ModelType'));

  if (schema.fields == null) {
    throw ApiException('Schema found does not have a fields property',
        recoverySuggestion:
            'Pass in a valid modelProvider instance while instantiating APIPlugin');
  }

  if (operation == GraphQLRequestOperation.list && schema.pluralName == null) {
    throw ApiException('No schema name found',
        recoverySuggestion:
            'Pass in a valid modelProvider instance while instantiating APIPlugin or provide a valid ModelType');
  }

  return schema;
}

/// Transform the JSON from AppSync so it matches the fromJson in codegen models.
/// 1) Look for a parent in the schema. If that parent exists in the JSON, transform it.
/// 2) Look for list of children under [fieldName]["items"] and hoist up so no more ["items"].
Map<String, dynamic> transformAppSyncJsonToModelJson(
    Map<String, dynamic> input, ModelSchema modelSchema) {
  final relatedFields = getRelatedFields(modelSchema);

  final _input = <String, dynamic>{...input}; // avoid mutating original
  // transform parents/hasOne recursively
  for (var parentField in relatedFields.singleFields) {
    final ofModelName = parentField.type.ofModelName;
    dynamic inputValue = _input[parentField.name];
    if (inputValue is Map && ofModelName != null) {
      final parentSchema = getModelSchemaByModelName(ofModelName, null);
      _input.update(
          parentField.name,
          (dynamic parentMap) => <String, dynamic>{
                _serializedData:
                    transformAppSyncJsonToModelJson(parentMap, parentSchema)
              });
    }
  }

  // transform children recursively
  for (var childField in relatedFields.hasManyFields) {
    final ofModelName = childField.type.ofModelName;
    dynamic inputValue = _input[childField.name];
    List<dynamic>? inputItems = (inputValue is Map) ? inputValue[items] : null;
    if (inputItems is List && ofModelName != null) {
      final childSchema = getModelSchemaByModelName(ofModelName, null);
      final transformedItems = inputItems
          .map((dynamic item) => {
                _serializedData:
                    transformAppSyncJsonToModelJson(item, childSchema)
              })
          .toList();
      _input.update(childField.name, (dynamic value) => transformedItems);
    }
  }

  return _input;
}
