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

/** This is an auto generated class representing the DoubleTypeModel type in your schema. */
@immutable
class DoubleTypeModel extends Model {
  static const classType = const _DoubleTypeModelModelType();
  final String id;
  final double? _value;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  double? get value {
    return _value;
  }

  const DoubleTypeModel._internal({required this.id, value}) : _value = value;

  factory DoubleTypeModel({String? id, double? value}) {
    return DoubleTypeModel._internal(
        id: id == null ? UUID.getUUID() : id, value: value);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoubleTypeModel && id == other.id && _value == other._value;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("DoubleTypeModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("value=" + (_value != null ? _value!.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  DoubleTypeModel copyWith({String? id, double? value}) {
    return DoubleTypeModel(id: id ?? this.id, value: value ?? this.value);
  }

  DoubleTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _value = (json['value'] as num?)?.toDouble();

  Map<String, dynamic> toJson() => {'id': id, 'value': _value};

  static final QueryField ID = QueryField(fieldName: "doubleTypeModel.id");
  static final QueryField VALUE = QueryField(fieldName: "value");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "DoubleTypeModel";
    modelSchemaDefinition.pluralName = "DoubleTypeModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: DoubleTypeModel.VALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.double)));
  });
}

class _DoubleTypeModelModelType extends ModelType<DoubleTypeModel> {
  const _DoubleTypeModelModelType();

  @override
  DoubleTypeModel fromJson(Map<String, dynamic> jsonData) {
    return DoubleTypeModel.fromJson(jsonData);
  }
}
