// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

class ModelFieldDefinition {
  const ModelFieldDefinition({
    required this.name,
    required this.type,
    required this.isRequired,
    this.isArray = false,
    this.isReadOnly = false,
    this.association,
    this.authRules,
  });
  final String name;
  final ModelFieldType type;
  final bool isRequired;
  final bool isArray;
  final bool isReadOnly;
  final ModelAssociation? association;
  final List<AuthRule>? authRules;

  static ModelFieldDefinition nonQueryField({
    required String fieldName,
    bool isRequired = true,
    bool isArray = false,
    bool isReadOnly = false,
    ModelFieldType ofType = const ModelFieldType(ModelFieldTypeEnum.string),
    ModelAssociation? association,
    List<AuthRule>? authRules,
  }) {
    return ModelFieldDefinition(
      name: fieldName,
      type: ofType,
      isRequired: isRequired,
      isArray: isArray,
      isReadOnly: isReadOnly,
      association: association,
      authRules: authRules,
    );
  }

  static ModelFieldDefinition field({
    required QueryField<Object?> key,
    bool isRequired = true,
    bool isArray = false,
    bool isReadOnly = false,
    ModelFieldType ofType = const ModelFieldType(ModelFieldTypeEnum.string),
    ModelAssociation? association,
    List<AuthRule>? authRules,
  }) {
    return ModelFieldDefinition(
      name: key.fieldName,
      type: ofType,
      isRequired: isRequired,
      isArray: isArray,
      isReadOnly: isReadOnly,
      association: association,
      authRules: authRules,
    );
  }

  static ModelFieldDefinition embedded({
    required String fieldName,
    bool isRequired = true,
    bool isArray = false,
    ModelFieldType ofType = const ModelFieldType(ModelFieldTypeEnum.string),
  }) {
    return ModelFieldDefinition(
      name: fieldName,
      type: ofType,
      isRequired: isRequired,
      isArray: isArray,
    );
  }

  static ModelFieldDefinition customTypeField({
    required String fieldName,
    bool isRequired = true,
    bool isArray = false,
    ModelFieldType ofType = const ModelFieldType(ModelFieldTypeEnum.string),
  }) {
    return ModelFieldDefinition(
      name: fieldName,
      type: ofType,
      isRequired: isRequired,
      isArray: isArray,
    );
  }

  static ModelFieldDefinition idKey(QueryField<Object?> key) {
    return id(name: key.fieldName);
  }

  static ModelFieldDefinition id({String name = 'id'}) {
    return ModelFieldDefinition(
      name: name,
      type: const ModelFieldType(ModelFieldTypeEnum.string),
      isRequired: true,
    );
  }

  static ModelFieldDefinition hasMany({
    required QueryField<Object?> key,
    bool isRequired = true,
    required String ofModelName,
    required QueryField<Object?> associatedKey,
  }) {
    return field(
      key: key,
      isRequired: isRequired,
      isArray: true,
      ofType: ModelFieldType(
        ModelFieldTypeEnum.collection,
        ofModelName: ofModelName,
      ),
      association: ModelAssociation(
        associationType: ModelAssociationEnum.HasMany,
        associatedName: associatedKey.fieldName,
        associatedType: ofModelName,
      ),
    );
  }

  static ModelFieldDefinition hasOne({
    required QueryField<Object?> key,
    bool isRequired = true,
    required String ofModelName,
    required QueryField<Object?> associatedKey,
  }) {
    return field(
      key: key,
      isRequired: isRequired,
      ofType:
          ModelFieldType(ModelFieldTypeEnum.model, ofModelName: ofModelName),
      association: ModelAssociation(
        associationType: ModelAssociationEnum.HasOne,
        associatedName: associatedKey.fieldName,
        associatedType: ofModelName,
      ),
    );
  }

  static ModelFieldDefinition belongsTo({
    required QueryField<Object?> key,
    bool isRequired = true,
    required String ofModelName,
    QueryField<Object?>? associatedKey,
    List<String>? targetNames,
  }) {
    // Extra code needed due to lack of nullability support
    String? associatedName;
    String? associatedType;

    associatedName = associatedKey?.fieldName;
    associatedType = associatedKey?.fieldType?.ofModelName ?? ofModelName;

    return field(
      key: key,
      isRequired: isRequired,
      ofType:
          ModelFieldType(ModelFieldTypeEnum.model, ofModelName: ofModelName),
      association: ModelAssociation(
        associationType: ModelAssociationEnum.BelongsTo,
        targetNames: targetNames,
        associatedName: associatedName,
        associatedType: associatedType,
      ),
    );
  }

  ModelField build() {
    return ModelField(
      name: name,
      type: type,
      isRequired: isRequired,
      isArray: isArray,
      isReadOnly: isReadOnly,
      association: association,
      authRules: authRules,
    );
  }
}
