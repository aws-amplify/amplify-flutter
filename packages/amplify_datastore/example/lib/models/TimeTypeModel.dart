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

/** This is an auto generated class representing the TimeTypeModel type in your schema. */
@immutable
class TimeTypeModel extends Model {
  static const classType = const _TimeTypeModelModelType();
  final String id;
  final TemporalTime? _value;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  TemporalTime? get value {
    return _value;
  }

  const TimeTypeModel._internal({required this.id, value}) : _value = value;

  factory TimeTypeModel({String? id, TemporalTime? value}) {
    return TimeTypeModel._internal(
        id: id == null ? UUID.getUUID() : id, value: value);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeTypeModel && id == other.id && _value == other._value;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("TimeTypeModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("value=" + (_value != null ? _value!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  TimeTypeModel copyWith({String? id, TemporalTime? value}) {
    return TimeTypeModel(id: id ?? this.id, value: value ?? this.value);
  }

  TimeTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _value = json['value'] != null
            ? TemporalTime.fromString(json['value'])
            : null;

  Map<String, dynamic> toJson() => {'id': id, 'value': _value?.format()};

  static final QueryField<TimeTypeModel, String> ID = QueryField(
    fieldName: "timeTypeModel.id",
    getValue: (model) => model.id,
  );
  static final QueryField<TimeTypeModel, TemporalTime?> VALUE = QueryField(
    fieldName: "value",
    getValue: (model) => model.value,
  );
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TimeTypeModel";
    modelSchemaDefinition.pluralName = "TimeTypeModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TimeTypeModel.VALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.time)));
  });
}

class _TimeTypeModelModelType extends ModelType<TimeTypeModel> {
  const _TimeTypeModelModelType();

  @override
  TimeTypeModel fromJson(Map<String, dynamic> jsonData) {
    return TimeTypeModel.fromJson(jsonData);
  }
}
