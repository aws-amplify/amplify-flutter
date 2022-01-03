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

/** This is an auto generated class representing the BoolTypeModel type in your schema. */
@immutable
class BoolTypeModel extends Model {
  static const classType = const _BoolTypeModelModelType();
  final String id;
  final bool? _value;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  bool? get value {
    return _value;
  }

  const BoolTypeModel._internal({required this.id, value}) : _value = value;

  factory BoolTypeModel({String? id, bool? value}) {
    return BoolTypeModel._internal(
        id: id == null ? UUID.getUUID() : id, value: value);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BoolTypeModel && id == other.id && _value == other._value;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("BoolTypeModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("value=" + (_value != null ? _value!.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  BoolTypeModel copyWith({String? id, bool? value}) {
    return BoolTypeModel(id: id ?? this.id, value: value ?? this.value);
  }

  BoolTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _value = json['value'];

  Map<String, dynamic> toJson() => {'id': id, 'value': _value};

  static final QueryField<BoolTypeModel, String> ID = QueryField(
    fieldName: "boolTypeModel.id",
    getValue: (model) => model.id,
  );
  static final QueryField<BoolTypeModel, bool?> VALUE = QueryField(
    fieldName: "value",
    getValue: (model) => model.value,
  );
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "BoolTypeModel";
    modelSchemaDefinition.pluralName = "BoolTypeModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: BoolTypeModel.VALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.bool)));
  });
}

class _BoolTypeModelModelType extends ModelType<BoolTypeModel> {
  const _BoolTypeModelModelType();

  @override
  BoolTypeModel fromJson(Map<String, dynamic> jsonData) {
    return BoolTypeModel.fromJson(jsonData);
  }
}
