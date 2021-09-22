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

// ignore_for_file: public_member_api_docs

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the EnumListTypeModel type in your schema. */
@immutable
class EnumListTypeModel extends Model {
  static const classType = const _EnumListTypeModelModelType();
  final String id;
  final List<EnumModel>? _value;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  List<EnumModel>? get value {
    return _value;
  }

  const EnumListTypeModel._internal({required this.id, value}) : _value = value;

  factory EnumListTypeModel({String? id, List<EnumModel>? value}) {
    return EnumListTypeModel._internal(
        id: id == null ? UUID.getUUID() : id,
        value: value != null ? List<EnumModel>.unmodifiable(value) : value);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnumListTypeModel &&
        id == other.id &&
        DeepCollectionEquality().equals(_value, other._value);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("EnumListTypeModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("value=" +
        (_value != null
            ? _value!.map((e) => enumToString(e)).toString()
            : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  EnumListTypeModel copyWith({String? id, List<EnumModel>? value}) {
    return EnumListTypeModel(id: id ?? this.id, value: value ?? this.value);
  }

  EnumListTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _value = json['value'] is List
            ? (json['value'] as List)
                .map((e) => enumFromString<EnumModel>(e, EnumModel.values)!)
                .toList()
            : null;

  Map<String, dynamic> toJson() =>
      {'id': id, 'value': _value?.map((e) => enumToString(e)).toList()};

  static final QueryField ID = QueryField(fieldName: "enumListTypeModel.id");
  static final QueryField VALUE = QueryField(fieldName: "value");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "EnumListTypeModel";
    modelSchemaDefinition.pluralName = "EnumListTypeModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: EnumListTypeModel.VALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.enumeration))));
  });
}

class _EnumListTypeModelModelType extends ModelType<EnumListTypeModel> {
  const _EnumListTypeModelModelType();

  @override
  EnumListTypeModel fromJson(Map<String, dynamic> jsonData) {
    return EnumListTypeModel.fromJson(jsonData);
  }
}
