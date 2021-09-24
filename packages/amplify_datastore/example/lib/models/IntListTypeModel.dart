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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the IntListTypeModel type in your schema. */
@immutable
class IntListTypeModel extends Model {
  static const classType = const _IntListTypeModelModelType();
  final String id;
  final List<int>? _value;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  List<int>? get value {
    return _value;
  }

  const IntListTypeModel._internal({required this.id, value}) : _value = value;

  factory IntListTypeModel({String? id, List<int>? value}) {
    return IntListTypeModel._internal(
        id: id == null ? UUID.getUUID() : id,
        value: value != null ? List<int>.unmodifiable(value) : value);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntListTypeModel &&
        id == other.id &&
        DeepCollectionEquality().equals(_value, other._value);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("IntListTypeModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("value=" + (_value != null ? _value!.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  IntListTypeModel copyWith({String? id, List<int>? value}) {
    return IntListTypeModel(id: id ?? this.id, value: value ?? this.value);
  }

  IntListTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _value =
            (json['value'] as List?)?.map((e) => (e as num).toInt()).toList();

  Map<String, dynamic> toJson() => {'id': id, 'value': _value};

  static final QueryField ID = QueryField(fieldName: "intListTypeModel.id");
  static final QueryField VALUE = QueryField(fieldName: "value");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "IntListTypeModel";
    modelSchemaDefinition.pluralName = "IntListTypeModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: IntListTypeModel.VALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.int))));
  });
}

class _IntListTypeModelModelType extends ModelType<IntListTypeModel> {
  const _IntListTypeModelModelType();

  @override
  IntListTypeModel fromJson(Map<String, dynamic> jsonData) {
    return IntListTypeModel.fromJson(jsonData);
  }
}
