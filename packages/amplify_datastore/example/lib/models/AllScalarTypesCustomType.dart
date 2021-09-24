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

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the AllScalarTypesCustomType type in your schema. */
@immutable
class AllScalarTypesCustomType {
  final String? _stringValue;
  final int? _intValue;
  final double? _floatValue;
  final bool? _boolValue;
  final TemporalDate? _dateValue;
  final TemporalDateTime? _dateTimeValue;
  final TemporalTime? _timeValue;
  final TemporalTimestamp? _timestampValue;
  final String? _jsonValue;
  final EnumModel? _enumValue;
  final SimpleCustomType? _customTypeValue;

  String get stringValue {
    try {
      return _stringValue!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  int get intValue {
    try {
      return _intValue!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  double get floatValue {
    try {
      return _floatValue!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  bool get boolValue {
    try {
      return _boolValue!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  TemporalDate get dateValue {
    try {
      return _dateValue!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  TemporalDateTime get dateTimeValue {
    try {
      return _dateTimeValue!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  TemporalTime get timeValue {
    try {
      return _timeValue!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  TemporalTimestamp get timestampValue {
    try {
      return _timestampValue!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get jsonValue {
    try {
      return _jsonValue!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  EnumModel get enumValue {
    try {
      return _enumValue!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  SimpleCustomType get customTypeValue {
    try {
      return _customTypeValue!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  const AllScalarTypesCustomType._internal(
      {required stringValue,
      required intValue,
      required floatValue,
      required boolValue,
      required dateValue,
      required dateTimeValue,
      required timeValue,
      required timestampValue,
      required jsonValue,
      required enumValue,
      required customTypeValue})
      : _stringValue = stringValue,
        _intValue = intValue,
        _floatValue = floatValue,
        _boolValue = boolValue,
        _dateValue = dateValue,
        _dateTimeValue = dateTimeValue,
        _timeValue = timeValue,
        _timestampValue = timestampValue,
        _jsonValue = jsonValue,
        _enumValue = enumValue,
        _customTypeValue = customTypeValue;

  factory AllScalarTypesCustomType(
      {required String stringValue,
      required int intValue,
      required double floatValue,
      required bool boolValue,
      required TemporalDate dateValue,
      required TemporalDateTime dateTimeValue,
      required TemporalTime timeValue,
      required TemporalTimestamp timestampValue,
      required String jsonValue,
      required EnumModel enumValue,
      required SimpleCustomType customTypeValue}) {
    return AllScalarTypesCustomType._internal(
        stringValue: stringValue,
        intValue: intValue,
        floatValue: floatValue,
        boolValue: boolValue,
        dateValue: dateValue,
        dateTimeValue: dateTimeValue,
        timeValue: timeValue,
        timestampValue: timestampValue,
        jsonValue: jsonValue,
        enumValue: enumValue,
        customTypeValue: customTypeValue);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllScalarTypesCustomType &&
        _stringValue == other._stringValue &&
        _intValue == other._intValue &&
        _floatValue == other._floatValue &&
        _boolValue == other._boolValue &&
        _dateValue == other._dateValue &&
        _dateTimeValue == other._dateTimeValue &&
        _timeValue == other._timeValue &&
        _timestampValue == other._timestampValue &&
        _jsonValue == other._jsonValue &&
        _enumValue == other._enumValue &&
        _customTypeValue == other._customTypeValue;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("AllScalarTypesCustomType {");
    buffer.write("stringValue=" + "$_stringValue" + ", ");
    buffer.write("intValue=" +
        (_intValue != null ? _intValue!.toString() : "null") +
        ", ");
    buffer.write("floatValue=" +
        (_floatValue != null ? _floatValue!.toString() : "null") +
        ", ");
    buffer.write("boolValue=" +
        (_boolValue != null ? _boolValue!.toString() : "null") +
        ", ");
    buffer.write("dateValue=" +
        (_dateValue != null ? _dateValue!.format() : "null") +
        ", ");
    buffer.write("dateTimeValue=" +
        (_dateTimeValue != null ? _dateTimeValue!.format() : "null") +
        ", ");
    buffer.write("timeValue=" +
        (_timeValue != null ? _timeValue!.format() : "null") +
        ", ");
    buffer.write("timestampValue=" +
        (_timestampValue != null ? _timestampValue!.toString() : "null") +
        ", ");
    buffer.write("jsonValue=" + "$_jsonValue" + ", ");
    buffer.write("enumValue=" +
        (_enumValue != null ? enumToString(_enumValue)! : "null") +
        ", ");
    buffer.write("customTypeValue=" +
        (_customTypeValue != null ? _customTypeValue!.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  AllScalarTypesCustomType copyWith(
      {String? stringValue,
      int? intValue,
      double? floatValue,
      bool? boolValue,
      TemporalDate? dateValue,
      TemporalDateTime? dateTimeValue,
      TemporalTime? timeValue,
      TemporalTimestamp? timestampValue,
      String? jsonValue,
      EnumModel? enumValue,
      SimpleCustomType? customTypeValue}) {
    return AllScalarTypesCustomType(
        stringValue: stringValue ?? this.stringValue,
        intValue: intValue ?? this.intValue,
        floatValue: floatValue ?? this.floatValue,
        boolValue: boolValue ?? this.boolValue,
        dateValue: dateValue ?? this.dateValue,
        dateTimeValue: dateTimeValue ?? this.dateTimeValue,
        timeValue: timeValue ?? this.timeValue,
        timestampValue: timestampValue ?? this.timestampValue,
        jsonValue: jsonValue ?? this.jsonValue,
        enumValue: enumValue ?? this.enumValue,
        customTypeValue: customTypeValue ?? this.customTypeValue);
  }

  AllScalarTypesCustomType.fromJson(Map<String, dynamic> json)
      : _stringValue = json['stringValue'],
        _intValue = (json['intValue'] as num?)?.toInt(),
        _floatValue = (json['floatValue'] as num?)?.toDouble(),
        _boolValue = json['boolValue'],
        _dateValue = json['dateValue'] != null
            ? TemporalDate.fromString(json['dateValue'])
            : null,
        _dateTimeValue = json['dateTimeValue'] != null
            ? TemporalDateTime.fromString(json['dateTimeValue'])
            : null,
        _timeValue = json['timeValue'] != null
            ? TemporalTime.fromString(json['timeValue'])
            : null,
        _timestampValue = json['timestampValue'] != null
            ? TemporalTimestamp.fromSeconds(json['timestampValue'])
            : null,
        _jsonValue = json['jsonValue'],
        _enumValue =
            enumFromString<EnumModel>(json['enumValue'], EnumModel.values),
        _customTypeValue = json['customTypeValue']?['serializedData'] != null
            ? SimpleCustomType.fromJson(new Map<String, dynamic>.from(
                json['customTypeValue']['serializedData']))
            : null;

  Map<String, dynamic> toJson() => {
        'stringValue': _stringValue,
        'intValue': _intValue,
        'floatValue': _floatValue,
        'boolValue': _boolValue,
        'dateValue': _dateValue?.format(),
        'dateTimeValue': _dateTimeValue?.format(),
        'timeValue': _timeValue?.format(),
        'timestampValue': _timestampValue?.toSeconds(),
        'jsonValue': _jsonValue,
        'enumValue': enumToString(_enumValue),
        'customTypeValue': _customTypeValue?.toJson()
      };

  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "AllScalarTypesCustomType";
    modelSchemaDefinition.pluralName = "AllScalarTypesCustomTypes";

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'stringValue',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'intValue',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'floatValue',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.double)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'boolValue',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.bool)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'dateValue',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.date)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'dateTimeValue',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'timeValue',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.time)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'timestampValue',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.timestamp)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'jsonValue',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'enumValue',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
        fieldName: 'customTypeValue',
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.embedded,
            ofCustomTypeName: 'SimpleCustomType')));
  });
}
