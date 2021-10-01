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

/** This is an auto generated class representing the MultiTypeModel type in your schema. */
@immutable
class MultiTypeModel extends Model {
  static const classType = const _MultiTypeModelModelType();
  final String id;
  final String? _stringValue;
  final String? _altStringValue;
  final int? _intValue;
  final int? _altIntValue;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  String? get stringValue {
    return _stringValue;
  }

  String? get altStringValue {
    return _altStringValue;
  }

  int? get intValue {
    return _intValue;
  }

  int? get altIntValue {
    return _altIntValue;
  }

  const MultiTypeModel._internal(
      {required this.id, stringValue, altStringValue, intValue, altIntValue})
      : _stringValue = stringValue,
        _altStringValue = altStringValue,
        _intValue = intValue,
        _altIntValue = altIntValue;

  factory MultiTypeModel(
      {String? id,
      String? stringValue,
      String? altStringValue,
      int? intValue,
      int? altIntValue}) {
    return MultiTypeModel._internal(
        id: id == null ? UUID.getUUID() : id,
        stringValue: stringValue,
        altStringValue: altStringValue,
        intValue: intValue,
        altIntValue: altIntValue);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultiTypeModel &&
        id == other.id &&
        _stringValue == other._stringValue &&
        _altStringValue == other._altStringValue &&
        _intValue == other._intValue &&
        _altIntValue == other._altIntValue;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("MultiTypeModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("stringValue=" + "$_stringValue" + ", ");
    buffer.write("altStringValue=" + "$_altStringValue" + ", ");
    buffer.write("intValue=" +
        (_intValue != null ? _intValue!.toString() : "null") +
        ", ");
    buffer.write("altIntValue=" +
        (_altIntValue != null ? _altIntValue!.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  MultiTypeModel copyWith(
      {String? id,
      String? stringValue,
      String? altStringValue,
      int? intValue,
      int? altIntValue}) {
    return MultiTypeModel(
        id: id ?? this.id,
        stringValue: stringValue ?? this.stringValue,
        altStringValue: altStringValue ?? this.altStringValue,
        intValue: intValue ?? this.intValue,
        altIntValue: altIntValue ?? this.altIntValue);
  }

  MultiTypeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _stringValue = json['stringValue'],
        _altStringValue = json['altStringValue'],
        _intValue = (json['intValue'] as num?)?.toInt(),
        _altIntValue = (json['altIntValue'] as num?)?.toInt();

  Map<String, dynamic> toJson() => {
        'id': id,
        'stringValue': _stringValue,
        'altStringValue': _altStringValue,
        'intValue': _intValue,
        'altIntValue': _altIntValue
      };

  static final QueryField ID = QueryField(fieldName: "multiTypeModel.id");
  static final QueryField STRINGVALUE = QueryField(fieldName: "stringValue");
  static final QueryField ALTSTRINGVALUE =
      QueryField(fieldName: "altStringValue");
  static final QueryField INTVALUE = QueryField(fieldName: "intValue");
  static final QueryField ALTINTVALUE = QueryField(fieldName: "altIntValue");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "MultiTypeModel";
    modelSchemaDefinition.pluralName = "MultiTypeModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: MultiTypeModel.STRINGVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: MultiTypeModel.ALTSTRINGVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: MultiTypeModel.INTVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: MultiTypeModel.ALTINTVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));
  });
}

class _MultiTypeModelModelType extends ModelType<MultiTypeModel> {
  const _MultiTypeModelModelType();

  @override
  MultiTypeModel fromJson(Map<String, dynamic> jsonData) {
    return MultiTypeModel.fromJson(jsonData);
  }
}
