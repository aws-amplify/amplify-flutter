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

/** This is an auto generated class representing the DateTimeListTypeModel type in your schema. */
@immutable
class DateTimeListTypeModel extends Model {
  static const classType = const _DateTimeListTypeModelModelType();
  final String id;
  final List<TemporalDateTime>? _value;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  List<TemporalDateTime>? get value {
    return _value;
  }

  const DateTimeListTypeModel._internal({required this.id, value})
      : _value = value;

  factory DateTimeListTypeModel({String? id, List<TemporalDateTime>? value}) {
    return DateTimeListTypeModel._internal(
        id: id == null ? UUID.getUUID() : id,
        value:
            value != null ? List<TemporalDateTime>.unmodifiable(value) : value);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DateTimeListTypeModel &&
        id == other.id &&
        DeepCollectionEquality().equals(_value, other._value);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("DateTimeListTypeModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("value=" + (_value != null ? _value!.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  DateTimeListTypeModel copyWith({String? id, List<TemporalDateTime>? value}) {
    return DateTimeListTypeModel(id: id ?? this.id, value: value ?? this.value);
  }

  DateTimeListTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _value = (json['value'] as List?)
            ?.map((e) => TemporalDateTime.fromString(e))
            .toList();

  Map<String, dynamic> toJson() =>
      {'id': id, 'value': _value?.map((e) => e.format()).toList()};

  static final QueryField ID =
      QueryField(fieldName: "dateTimeListTypeModel.id");
  static final QueryField VALUE = QueryField(fieldName: "value");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "DateTimeListTypeModel";
    modelSchemaDefinition.pluralName = "DateTimeListTypeModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: DateTimeListTypeModel.VALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.dateTime))));
  });
}

class _DateTimeListTypeModelModelType extends ModelType<DateTimeListTypeModel> {
  const _DateTimeListTypeModelModelType();

  @override
  DateTimeListTypeModel fromJson(Map<String, dynamic> jsonData) {
    return DateTimeListTypeModel.fromJson(jsonData);
  }
}
