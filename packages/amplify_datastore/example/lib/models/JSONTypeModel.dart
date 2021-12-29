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

/** This is an auto generated class representing the JSONTypeModel type in your schema. */
@immutable
class JSONTypeModel extends Model {
  static const classType = const _JSONTypeModelModelType();
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

  const JSONTypeModel._internal({required this.id, value}) : _value = value;

  factory JSONTypeModel({String? id, String? value}) {
    return JSONTypeModel._internal(
        id: id == null ? UUID.getUUID() : id, value: value);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JSONTypeModel && id == other.id && _value == other._value;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("JSONTypeModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("value=" + "$_value");
    buffer.write("}");

    return buffer.toString();
  }

  JSONTypeModel copyWith({String? id, String? value}) {
    return JSONTypeModel(id: id ?? this.id, value: value ?? this.value);
  }

  JSONTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _value = json['value'];

  Map<String, dynamic> toJson() => {'id': id, 'value': _value};

  static final QueryField<String> ID =
      QueryField(fieldName: "jSONTypeModel.id");
  static final QueryField<String?> VALUE = QueryField(fieldName: "value");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "JSONTypeModel";
    modelSchemaDefinition.pluralName = "JSONTypeModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: JSONTypeModel.VALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _JSONTypeModelModelType extends ModelType<JSONTypeModel> {
  const _JSONTypeModelModelType();

  @override
  JSONTypeModel fromJson(Map<String, dynamic> jsonData) {
    return JSONTypeModel.fromJson(jsonData);
  }
}
