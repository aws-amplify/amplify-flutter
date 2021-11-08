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

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the ModelNestedCustomType type in your schema. */
@immutable
class ModelNestedCustomType extends Model {
  static const classType = const _ModelNestedCustomTypeModelType();
  final String id;
  final AllScalarTypesCustomType? _customTypeValue;
  final List<AllScalarTypesListCustomType>? _listCustomTypeValue;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  AllScalarTypesCustomType get customTypeValue {
    try {
      return _customTypeValue!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  List<AllScalarTypesListCustomType>? get listCustomTypeValue {
    return _listCustomTypeValue;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const ModelNestedCustomType._internal(
      {required this.id,
      required customTypeValue,
      listCustomTypeValue,
      createdAt,
      updatedAt})
      : _customTypeValue = customTypeValue,
        _listCustomTypeValue = listCustomTypeValue,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory ModelNestedCustomType(
      {String? id,
      required AllScalarTypesCustomType customTypeValue,
      List<AllScalarTypesListCustomType>? listCustomTypeValue}) {
    return ModelNestedCustomType._internal(
        id: id == null ? UUID.getUUID() : id,
        customTypeValue: customTypeValue,
        listCustomTypeValue: listCustomTypeValue != null
            ? List<AllScalarTypesListCustomType>.unmodifiable(
                listCustomTypeValue)
            : listCustomTypeValue);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelNestedCustomType &&
        id == other.id &&
        _customTypeValue == other._customTypeValue &&
        DeepCollectionEquality()
            .equals(_listCustomTypeValue, other._listCustomTypeValue);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("ModelNestedCustomType {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("customTypeValue=" +
        (_customTypeValue != null ? _customTypeValue!.toString() : "null") +
        ", ");
    buffer.write("listCustomTypeValue=" +
        (_listCustomTypeValue != null
            ? _listCustomTypeValue!.toString()
            : "null") +
        ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  ModelNestedCustomType copyWith(
      {String? id,
      AllScalarTypesCustomType? customTypeValue,
      List<AllScalarTypesListCustomType>? listCustomTypeValue}) {
    return ModelNestedCustomType._internal(
        id: id ?? this.id,
        customTypeValue: customTypeValue ?? this.customTypeValue,
        listCustomTypeValue: listCustomTypeValue ?? this.listCustomTypeValue);
  }

  ModelNestedCustomType.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _customTypeValue = json['customTypeValue']?['serializedData'] != null
            ? AllScalarTypesCustomType.fromJson(new Map<String, dynamic>.from(
                json['customTypeValue']['serializedData']))
            : null,
        _listCustomTypeValue = json['listCustomTypeValue'] is List
            ? (json['listCustomTypeValue'] as List)
                .where((e) => e != null)
                .map((e) => AllScalarTypesListCustomType.fromJson(
                    new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null,
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'customTypeValue': _customTypeValue?.toJson(),
        'listCustomTypeValue': _listCustomTypeValue
            ?.map((AllScalarTypesListCustomType? e) => e?.toJson())
            .toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID =
      QueryField(fieldName: "modelNestedCustomType.id");
  static final QueryField CUSTOMTYPEVALUE =
      QueryField(fieldName: "customTypeValue");
  static final QueryField LISTCUSTOMTYPEVALUE =
      QueryField(fieldName: "listCustomTypeValue");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ModelNestedCustomType";
    modelSchemaDefinition.pluralName = "ModelNestedCustomTypes";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
        fieldName: 'customTypeValue',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.embedded,
            ofCustomTypeName: 'AllScalarTypesCustomType')));

    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
        fieldName: 'listCustomTypeValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection,
            ofCustomTypeName: 'AllScalarTypesListCustomType')));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'createdAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'updatedAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));
  });
}

class _ModelNestedCustomTypeModelType extends ModelType<ModelNestedCustomType> {
  const _ModelNestedCustomTypeModelType();

  @override
  ModelNestedCustomType fromJson(Map<String, dynamic> jsonData) {
    return ModelNestedCustomType.fromJson(jsonData);
  }
}
