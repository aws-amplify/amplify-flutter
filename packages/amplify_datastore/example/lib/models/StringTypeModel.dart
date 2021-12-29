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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the StringTypeModel type in your schema. */
@immutable
class StringTypeModel extends Model {
  static const classType = const _StringTypeModelModelType();
  final String id;
  final String? _value;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  String? get value {
    return _value;
  }

  const StringTypeModel._internal({required this.id, value}) : _value = value;

  factory StringTypeModel({String? id, String? value}) {
    return StringTypeModel._internal(
        id: id == null ? UUID.getUUID() : id, value: value);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StringTypeModel && id == other.id && _value == other._value;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("StringTypeModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("value=" + "$_value");
    buffer.write("}");

    return buffer.toString();
  }

  StringTypeModel copyWith({String? id, String? value}) {
    return StringTypeModel(id: id ?? this.id, value: value ?? this.value);
  }

  StringTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _value = json['value'];

  Map<String, dynamic> toJson() => {'id': id, 'value': _value};

  static final QueryField<String> ID =
      QueryField(fieldName: "stringTypeModel.id");
  static final QueryField<String?> VALUE = QueryField(fieldName: "value");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "StringTypeModel";
    modelSchemaDefinition.pluralName = "StringTypeModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: StringTypeModel.VALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _StringTypeModelModelType extends ModelType<StringTypeModel> {
  const _StringTypeModelModelType();

  @override
  StringTypeModel fromJson(Map<String, dynamic> jsonData) {
    return StringTypeModel.fromJson(jsonData);
  }
}
