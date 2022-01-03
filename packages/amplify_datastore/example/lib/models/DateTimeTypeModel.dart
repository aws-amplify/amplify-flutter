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

/** This is an auto generated class representing the DateTimeTypeModel type in your schema. */
@immutable
class DateTimeTypeModel extends Model {
  static const classType = const _DateTimeTypeModelModelType();
  final String id;
  final TemporalDateTime? _value;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  TemporalDateTime? get value {
    return _value;
  }

  const DateTimeTypeModel._internal({required this.id, value}) : _value = value;

  factory DateTimeTypeModel({String? id, TemporalDateTime? value}) {
    return DateTimeTypeModel._internal(
        id: id == null ? UUID.getUUID() : id, value: value);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DateTimeTypeModel &&
        id == other.id &&
        _value == other._value;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("DateTimeTypeModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("value=" + (_value != null ? _value!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  DateTimeTypeModel copyWith({String? id, TemporalDateTime? value}) {
    return DateTimeTypeModel(id: id ?? this.id, value: value ?? this.value);
  }

  DateTimeTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _value = json['value'] != null
            ? TemporalDateTime.fromString(json['value'])
            : null;

  Map<String, dynamic> toJson() => {'id': id, 'value': _value?.format()};

  static final QueryField<DateTimeTypeModel, String> ID = QueryField(
    fieldName: "dateTimeTypeModel.id",
    getValue: (model) => model.id,
  );
  static final QueryField<DateTimeTypeModel, TemporalDateTime?> VALUE =
      QueryField(
    fieldName: "value",
    getValue: (model) => model.value,
  );
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "DateTimeTypeModel";
    modelSchemaDefinition.pluralName = "DateTimeTypeModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: DateTimeTypeModel.VALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));
  });
}

class _DateTimeTypeModelModelType extends ModelType<DateTimeTypeModel> {
  const _DateTimeTypeModelModelType();

  @override
  DateTimeTypeModel fromJson(Map<String, dynamic> jsonData) {
    return DateTimeTypeModel.fromJson(jsonData);
  }
}
