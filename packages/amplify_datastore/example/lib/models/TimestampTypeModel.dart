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

/** This is an auto generated class representing the TimestampTypeModel type in your schema. */
@immutable
class TimestampTypeModel extends Model {
  static const classType = const _TimestampTypeModelModelType();
  final String id;
  final TemporalTimestamp? _value;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  TemporalTimestamp? get value {
    return _value;
  }

  const TimestampTypeModel._internal({required this.id, value})
      : _value = value;

  factory TimestampTypeModel({String? id, TemporalTimestamp? value}) {
    return TimestampTypeModel._internal(
        id: id == null ? UUID.getUUID() : id, value: value);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimestampTypeModel &&
        id == other.id &&
        _value == other._value;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("TimestampTypeModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("value=" + (_value != null ? _value!.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  TimestampTypeModel copyWith({String? id, TemporalTimestamp? value}) {
    return TimestampTypeModel(id: id ?? this.id, value: value ?? this.value);
  }

  TimestampTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _value = json['value'] != null
            ? TemporalTimestamp.fromSeconds(json['value'])
            : null;

  Map<String, dynamic> toJson() => {'id': id, 'value': _value?.toSeconds()};

  static final QueryField<String> ID =
      QueryField(fieldName: "timestampTypeModel.id");
  static final QueryField<TemporalTimestamp?> VALUE =
      QueryField(fieldName: "value");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TimestampTypeModel";
    modelSchemaDefinition.pluralName = "TimestampTypeModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TimestampTypeModel.VALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.timestamp)));
  });
}

class _TimestampTypeModelModelType extends ModelType<TimestampTypeModel> {
  const _TimestampTypeModelModelType();

  @override
  TimestampTypeModel fromJson(Map<String, dynamic> jsonData) {
    return TimestampTypeModel.fromJson(jsonData);
  }
}
