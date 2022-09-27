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

/// This is an auto generated class representing the ModelWithCustomType type in your schema.
@immutable
class ModelWithCustomType extends Model {
  static const classType = _ModelWithCustomTypeModelType();
  final String id;
  final CustomTypeWithAppsyncScalarTypes? _customTypeValue;
  final List<CustomTypeWithAppsyncScalarTypes>? _listOfCustomTypeValue;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  CustomTypeWithAppsyncScalarTypes? get customTypeValue {
    return _customTypeValue;
  }

  List<CustomTypeWithAppsyncScalarTypes>? get listOfCustomTypeValue {
    return _listOfCustomTypeValue;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const ModelWithCustomType._internal(
      {required this.id,
      customTypeValue,
      listOfCustomTypeValue,
      createdAt,
      updatedAt})
      : _customTypeValue = customTypeValue,
        _listOfCustomTypeValue = listOfCustomTypeValue,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory ModelWithCustomType(
      {String? id,
      CustomTypeWithAppsyncScalarTypes? customTypeValue,
      List<CustomTypeWithAppsyncScalarTypes>? listOfCustomTypeValue}) {
    return ModelWithCustomType._internal(
        id: id == null ? UUID.getUUID() : id,
        customTypeValue: customTypeValue,
        listOfCustomTypeValue: listOfCustomTypeValue != null
            ? List<CustomTypeWithAppsyncScalarTypes>.unmodifiable(
                listOfCustomTypeValue)
            : listOfCustomTypeValue);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelWithCustomType &&
        id == other.id &&
        _customTypeValue == other._customTypeValue &&
        DeepCollectionEquality()
            .equals(_listOfCustomTypeValue, other._listOfCustomTypeValue);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("ModelWithCustomType {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("customTypeValue=" +
        (_customTypeValue != null ? _customTypeValue!.toString() : "null") +
        ", ");
    buffer.write("listOfCustomTypeValue=" +
        (_listOfCustomTypeValue != null
            ? _listOfCustomTypeValue!.toString()
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

  ModelWithCustomType copyWith(
      {String? id,
      CustomTypeWithAppsyncScalarTypes? customTypeValue,
      List<CustomTypeWithAppsyncScalarTypes>? listOfCustomTypeValue}) {
    return ModelWithCustomType._internal(
        id: id ?? this.id,
        customTypeValue: customTypeValue ?? this.customTypeValue,
        listOfCustomTypeValue:
            listOfCustomTypeValue ?? this.listOfCustomTypeValue);
  }

  ModelWithCustomType.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _customTypeValue = json['customTypeValue']?['serializedData'] != null
            ? CustomTypeWithAppsyncScalarTypes.fromJson(
                Map<String, dynamic>.from(
                    json['customTypeValue']['serializedData']))
            : null,
        _listOfCustomTypeValue = json['listOfCustomTypeValue'] is List
            ? (json['listOfCustomTypeValue'] as List)
                .where((e) => e != null)
                .map((e) => CustomTypeWithAppsyncScalarTypes.fromJson(
                    Map<String, dynamic>.from(e['serializedData'])))
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
        'listOfCustomTypeValue': _listOfCustomTypeValue
            ?.map((CustomTypeWithAppsyncScalarTypes? e) => e?.toJson())
            .toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID = QueryField(fieldName: "modelWithCustomType.id");
  static final QueryField CUSTOMTYPEVALUE =
      QueryField(fieldName: "customTypeValue");
  static final QueryField LISTOFCUSTOMTYPEVALUE =
      QueryField(fieldName: "listOfCustomTypeValue");
  static var schema = Model.defineSchema(
      define: (ModelTypeDefinitionBuilder modelSchemaDefinition) {
    modelSchemaDefinition.name = "ModelWithCustomType";
    modelSchemaDefinition.pluralName = "ModelWithCustomTypes";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
        fieldName: 'customTypeValue',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.embedded,
            ofCustomTypeName: 'CustomTypeWithAppsyncScalarTypes')));

    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
        fieldName: 'listOfCustomTypeValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection,
            ofCustomTypeName: 'CustomTypeWithAppsyncScalarTypes')));

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

class _ModelWithCustomTypeModelType extends ModelType<ModelWithCustomType> {
  const _ModelWithCustomTypeModelType();

  @override
  ModelWithCustomType fromJson(Map<String, dynamic> jsonData) {
    return ModelWithCustomType.fromJson(jsonData);
  }
}
