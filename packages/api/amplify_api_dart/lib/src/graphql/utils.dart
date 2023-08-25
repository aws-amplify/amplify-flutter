// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// "items", the key name for nested data in AppSync
const items = 'items';

class _RelatedFields {
  _RelatedFields(this.singleFields, this.hasManyFields);

  final Iterable<ModelField> singleFields;
  final Iterable<ModelField> hasManyFields;
}

_RelatedFields _getRelatedFieldsUncached(ModelSchema modelSchema) {
  final singleFields = modelSchema.fields!.values.where(
    (field) =>
        field.association?.associationType == ModelAssociationEnum.HasOne ||
        field.association?.associationType == ModelAssociationEnum.BelongsTo ||
        field.type.fieldType == ModelFieldTypeEnum.embedded ||
        field.type.fieldType == ModelFieldTypeEnum.embeddedCollection,
  );
  final hasManyFields = modelSchema.fields!.values.where(
    (field) =>
        field.association?.associationType == ModelAssociationEnum.HasMany,
  );

  return _RelatedFields(singleFields, hasManyFields);
}

final _fieldsMemo = <ModelSchema, _RelatedFields>{};
// cached to avoid repeat iterations over fields in schema to get related fields
_RelatedFields _getRelatedFields(ModelSchema modelSchema) {
  if (_fieldsMemo[modelSchema] != null) {
    return _fieldsMemo[modelSchema]!;
  }
  final result = _getRelatedFieldsUncached(modelSchema);
  _fieldsMemo[modelSchema] = result;
  return _fieldsMemo[modelSchema]!;
}

// ignore: public_member_api_docs
Iterable<ModelField> getBelongsToFieldsFromModelSchema(
  ModelSchema modelSchema,
) {
  return _getRelatedFields(modelSchema).singleFields.where(
        (entry) =>
            entry.association?.associationType ==
            ModelAssociationEnum.BelongsTo,
      );
}

/// Gets the modelSchema from provider that matches the name and validates its fields.
ModelSchema getModelSchemaByModelName(
  String modelName,
  GraphQLRequestOperation? operation,
) {
  // ignore: invalid_use_of_protected_member
  final provider = Amplify.API.defaultPlugin.modelProvider;
  if (provider == null) {
    throw const ApiOperationException(
      'No modelProvider found',
      recoverySuggestion:
          'Pass in a modelProvider instance while instantiating APIPlugin',
    );
  }
  // In web, the modelName runtime type conversion will add "$" to returned string.
  // If ends with "$" on web, strip last character.
  // TODO(ragingsquirrel3): fix underlying issue with modelName
  if (zIsWeb && modelName.endsWith(r'$')) {
    modelName = modelName.substring(0, modelName.length - 1);
  }
  final schema =
      (provider.modelSchemas + provider.customTypeSchemas).firstWhere(
    (elem) => elem.name == modelName,
    orElse: () => throw ApiOperationException(
      'No schema found for the ModelType provided: $modelName',
      recoverySuggestion: 'Pass in a valid modelProvider instance while '
          'instantiating APIPlugin or provide a valid ModelType',
    ),
  );

  if (schema.fields == null) {
    throw const ApiOperationException(
      'Schema found does not have a fields property',
      recoverySuggestion: 'Pass in a valid modelProvider instance while '
          'instantiating APIPlugin',
    );
  }

  if (operation == GraphQLRequestOperation.list && schema.pluralName == null) {
    throw const ApiOperationException(
      'No schema name found',
      recoverySuggestion: 'Pass in a valid modelProvider instance while '
          'instantiating APIPlugin or provide a valid ModelType',
    );
  }

  return schema;
}
