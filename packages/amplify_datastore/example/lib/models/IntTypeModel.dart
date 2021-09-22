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

/** This is an auto generated class representing the IntTypeModel type in your schema. */
@immutable
class IntTypeModel extends Model {
  static const classType = const _IntTypeModelModelType();
  final String id;
  final int? _value;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  int? get value {
    return _value;
  }

  const IntTypeModel._internal({required this.id, value}) : _value = value;

  factory IntTypeModel({String? id, int? value}) {
    return IntTypeModel._internal(
        id: id == null ? UUID.getUUID() : id, value: value);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntTypeModel && id == other.id && _value == other._value;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("IntTypeModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("value=" + (_value != null ? _value!.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  IntTypeModel copyWith({String? id, int? value}) {
    return IntTypeModel(id: id ?? this.id, value: value ?? this.value);
  }

  IntTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _value = (json['value'] as num?)?.toInt();

  Map<String, dynamic> toJson() => {'id': id, 'value': _value};

  static final QueryField ID = QueryField(fieldName: "intTypeModel.id");
  static final QueryField VALUE = QueryField(fieldName: "value");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "IntTypeModel";
    modelSchemaDefinition.pluralName = "IntTypeModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: IntTypeModel.VALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));
  });
}

class _IntTypeModelModelType extends ModelType<IntTypeModel> {
  const _IntTypeModelModelType();

  @override
  IntTypeModel fromJson(Map<String, dynamic> jsonData) {
    return IntTypeModel.fromJson(jsonData);
  }
}
