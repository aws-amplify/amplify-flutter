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

/** This is an auto generated class representing the DateTypeModel type in your schema. */
@immutable
class DateTypeModel extends Model {
  static const classType = const _DateTypeModelModelType();
  final String id;
  final TemporalDate? _value;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  TemporalDate? get value {
    return _value;
  }

  const DateTypeModel._internal({required this.id, value}) : _value = value;

  factory DateTypeModel({String? id, TemporalDate? value}) {
    return DateTypeModel._internal(
        id: id == null ? UUID.getUUID() : id, value: value);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DateTypeModel && id == other.id && _value == other._value;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("DateTypeModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("value=" + (_value != null ? _value!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  DateTypeModel copyWith({String? id, TemporalDate? value}) {
    return DateTypeModel(id: id ?? this.id, value: value ?? this.value);
  }

  DateTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _value = json['value'] != null
            ? TemporalDate.fromString(json['value'])
            : null;

  Map<String, dynamic> toJson() => {'id': id, 'value': _value?.format()};

  static final QueryField<DateTypeModel, String> ID = QueryField(
    fieldName: "dateTypeModel.id",
    getValue: (model) => model.id,
  );
  static final QueryField<DateTypeModel, TemporalDate?> VALUE = QueryField(
    fieldName: "value",
    getValue: (model) => model.value,
  );
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "DateTypeModel";
    modelSchemaDefinition.pluralName = "DateTypeModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: DateTypeModel.VALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.date)));
  });
}

class _DateTypeModelModelType extends ModelType<DateTypeModel> {
  const _DateTypeModelModelType();

  @override
  DateTypeModel fromJson(Map<String, dynamic> jsonData) {
    return DateTypeModel.fromJson(jsonData);
  }
}
