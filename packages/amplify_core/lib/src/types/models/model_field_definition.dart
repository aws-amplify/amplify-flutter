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

import 'package:amplify_core/amplify_core.dart';

class ModelFieldDefinition {
  final String name;
  final ModelFieldType type;
  final bool isRequired;
  final bool isArray;
  final bool isReadOnly;
  final ModelAssociation? association;
  final List<AuthRule>? authRules;

  const ModelFieldDefinition({
    required this.name,
    required this.type,
    required this.isRequired,
    this.isArray = false,
    this.isReadOnly = false,
    this.association,
    this.authRules,
  });

  static ModelFieldDefinition nonQueryField(
      {required String fieldName,
      bool isRequired = true,
      bool isArray = false,
      bool isReadOnly = false,
      ModelFieldType ofType = const ModelFieldType(ModelFieldTypeEnum.string),
      ModelAssociation? association,
      List<AuthRule>? authRules}) {
    return ModelFieldDefinition(
        name: fieldName,
        type: ofType,
        isRequired: isRequired,
        isArray: isArray,
        isReadOnly: isReadOnly,
        association: association,
        authRules: authRules);
  }

  static ModelFieldDefinition field(
      {required QueryField key,
      bool isRequired = true,
      bool isArray = false,
      bool isReadOnly = false,
      ModelFieldType ofType = const ModelFieldType(ModelFieldTypeEnum.string),
      ModelAssociation? association,
      List<AuthRule>? authRules}) {
    return ModelFieldDefinition(
        name: key.fieldName,
        type: ofType,
        isRequired: isRequired,
        isArray: isArray,
        isReadOnly: isReadOnly,
        association: association,
        authRules: authRules);
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

  static ModelFieldDefinition idKey(QueryField key) {
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
    required QueryField key,
    bool isRequired = true,
    required String ofModelName,
    required QueryField associatedKey,
  }) {
    return field(
        key: key,
        isRequired: isRequired,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: ofModelName),
        association: ModelAssociation(
            associationType: ModelAssociationEnum.HasMany,
            associatedName: associatedKey.fieldName,
            associatedType: ofModelName));
  }

  static ModelFieldDefinition hasOne({
    required QueryField key,
    bool isRequired = true,
    required String ofModelName,
    required QueryField associatedKey,
  }) {
    return field(
        key: key,
        isRequired: isRequired,
        ofType:
            ModelFieldType(ModelFieldTypeEnum.model, ofModelName: ofModelName),
        association: ModelAssociation(
            associationType: ModelAssociationEnum.HasOne,
            associatedName: associatedKey.fieldName,
            associatedType: ofModelName));
  }

  static ModelFieldDefinition belongsTo(
      {required QueryField key,
      bool isRequired = true,
      required String ofModelName,
      QueryField? associatedKey,
      String? targetName}) {
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
            targetName: targetName,
            associatedName: associatedName,
            associatedType: associatedType));
  }

  ModelField build() {
    return ModelField(
        name: name,
        type: type,
        isRequired: isRequired,
        isArray: isArray,
        isReadOnly: isReadOnly,
        association: association,
        authRules: authRules);
  }
}
