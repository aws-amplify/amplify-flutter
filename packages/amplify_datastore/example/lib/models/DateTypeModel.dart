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

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the DateTypeModel type in your schema. */
@immutable
class DateTypeModel extends Model {
  static const classType = const _DateTypeModelModelType();
  final String id;
  final TemporalDate? _value;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  TemporalDate? get value {
    return _value;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const DateTypeModel._internal({required this.id, value, createdAt, updatedAt})
      : _value = value,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

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
    buffer
        .write("value=" + (_value != null ? _value!.format() : "null") + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  DateTypeModel copyWith({String? id, TemporalDate? value}) {
    return DateTypeModel._internal(
        id: id ?? this.id, value: value ?? this.value);
  }

  DateTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _value = json['value'] != null
            ? TemporalDate.fromString(json['value'])
            : null,
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'value': _value?.format(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID = QueryField(fieldName: "dateTypeModel.id");
  static final QueryField VALUE = QueryField(fieldName: "value");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "DateTypeModel";
    modelSchemaDefinition.pluralName = "DateTypeModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: DateTypeModel.VALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.date)));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'createdAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'updatedAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));
  });
}

class _DateTypeModelModelType extends ModelType<DateTypeModel> {
  const _DateTypeModelModelType();

  @override
  DateTypeModel fromJson(Map<String, dynamic> jsonData) {
    return DateTypeModel.fromJson(jsonData);
  }
}
