/*
* Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the StringListTypeModel type in your schema. */
@immutable
class StringListTypeModel extends Model {
  static const classType = const _StringListTypeModelModelType();
  final String id;
  final List<String>? _value;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  List<String>? get value {
    return _value;
  }

  const StringListTypeModel._internal({required this.id, value})
      : _value = value;

  factory StringListTypeModel({String? id, List<String>? value}) {
    return StringListTypeModel._internal(
        id: id == null ? UUID.getUUID() : id,
        value: value != null ? List<String>.unmodifiable(value) : value);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StringListTypeModel &&
        id == other.id &&
        DeepCollectionEquality().equals(_value, other._value);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("StringListTypeModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("value=" + (_value != null ? _value!.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  StringListTypeModel copyWith({String? id, List<String>? value}) {
    return StringListTypeModel(id: id ?? this.id, value: value ?? this.value);
  }

  StringListTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _value = json['value']?.cast<String>();

  Map<String, dynamic> toJson() => {'id': id, 'value': _value};

  static final QueryField ID = QueryField(fieldName: "stringListTypeModel.id");
  static final QueryField VALUE = QueryField(fieldName: "value");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "StringListTypeModel";
    modelSchemaDefinition.pluralName = "StringListTypeModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: StringListTypeModel.VALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));
  });
}

class _StringListTypeModelModelType extends ModelType<StringListTypeModel> {
  const _StringListTypeModelModelType();

  @override
  StringListTypeModel fromJson(Map<String, dynamic> jsonData) {
    return StringListTypeModel.fromJson(jsonData);
  }
}
