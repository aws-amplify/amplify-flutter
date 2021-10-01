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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the AllScalarTypesListCustomType type in your schema. */
@immutable
class AllScalarTypesListCustomType {
  final List<String>? _stringValues;
  final List<int>? _intValues;
  final List<double>? _floatValues;
  final List<bool>? _boolValues;
  final List<TemporalDate>? _dateValues;
  final List<TemporalDateTime>? _dateTimeValues;
  final List<TemporalTime>? _timeValues;
  final List<TemporalTimestamp>? _timestampValues;
  final List<String>? _jsonValues;
  final List<EnumModel>? _enumValues;
  final List<SimpleCustomType>? _customTypeValues;

  List<String>? get stringValues {
    return _stringValues;
  }

  List<int>? get intValues {
    return _intValues;
  }

  List<double>? get floatValues {
    return _floatValues;
  }

  List<bool>? get boolValues {
    return _boolValues;
  }

  List<TemporalDate>? get dateValues {
    return _dateValues;
  }

  List<TemporalDateTime>? get dateTimeValues {
    return _dateTimeValues;
  }

  List<TemporalTime>? get timeValues {
    return _timeValues;
  }

  List<TemporalTimestamp>? get timestampValues {
    return _timestampValues;
  }

  List<String>? get jsonValues {
    return _jsonValues;
  }

  List<EnumModel>? get enumValues {
    return _enumValues;
  }

  List<SimpleCustomType>? get customTypeValues {
    return _customTypeValues;
  }

  const AllScalarTypesListCustomType._internal(
      {stringValues,
      intValues,
      floatValues,
      boolValues,
      dateValues,
      dateTimeValues,
      timeValues,
      timestampValues,
      jsonValues,
      enumValues,
      customTypeValues})
      : _stringValues = stringValues,
        _intValues = intValues,
        _floatValues = floatValues,
        _boolValues = boolValues,
        _dateValues = dateValues,
        _dateTimeValues = dateTimeValues,
        _timeValues = timeValues,
        _timestampValues = timestampValues,
        _jsonValues = jsonValues,
        _enumValues = enumValues,
        _customTypeValues = customTypeValues;

  factory AllScalarTypesListCustomType(
      {List<String>? stringValues,
      List<int>? intValues,
      List<double>? floatValues,
      List<bool>? boolValues,
      List<TemporalDate>? dateValues,
      List<TemporalDateTime>? dateTimeValues,
      List<TemporalTime>? timeValues,
      List<TemporalTimestamp>? timestampValues,
      List<String>? jsonValues,
      List<EnumModel>? enumValues,
      List<SimpleCustomType>? customTypeValues}) {
    return AllScalarTypesListCustomType._internal(
        stringValues: stringValues != null
            ? List<String>.unmodifiable(stringValues)
            : stringValues,
        intValues:
            intValues != null ? List<int>.unmodifiable(intValues) : intValues,
        floatValues: floatValues != null
            ? List<double>.unmodifiable(floatValues)
            : floatValues,
        boolValues: boolValues != null
            ? List<bool>.unmodifiable(boolValues)
            : boolValues,
        dateValues: dateValues != null
            ? List<TemporalDate>.unmodifiable(dateValues)
            : dateValues,
        dateTimeValues: dateTimeValues != null
            ? List<TemporalDateTime>.unmodifiable(dateTimeValues)
            : dateTimeValues,
        timeValues: timeValues != null
            ? List<TemporalTime>.unmodifiable(timeValues)
            : timeValues,
        timestampValues: timestampValues != null
            ? List<TemporalTimestamp>.unmodifiable(timestampValues)
            : timestampValues,
        jsonValues: jsonValues != null
            ? List<String>.unmodifiable(jsonValues)
            : jsonValues,
        enumValues: enumValues != null
            ? List<EnumModel>.unmodifiable(enumValues)
            : enumValues,
        customTypeValues: customTypeValues != null
            ? List<SimpleCustomType>.unmodifiable(customTypeValues)
            : customTypeValues);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllScalarTypesListCustomType &&
        DeepCollectionEquality().equals(_stringValues, other._stringValues) &&
        DeepCollectionEquality().equals(_intValues, other._intValues) &&
        DeepCollectionEquality().equals(_floatValues, other._floatValues) &&
        DeepCollectionEquality().equals(_boolValues, other._boolValues) &&
        DeepCollectionEquality().equals(_dateValues, other._dateValues) &&
        DeepCollectionEquality()
            .equals(_dateTimeValues, other._dateTimeValues) &&
        DeepCollectionEquality().equals(_timeValues, other._timeValues) &&
        DeepCollectionEquality()
            .equals(_timestampValues, other._timestampValues) &&
        DeepCollectionEquality().equals(_jsonValues, other._jsonValues) &&
        DeepCollectionEquality().equals(_enumValues, other._enumValues) &&
        DeepCollectionEquality()
            .equals(_customTypeValues, other._customTypeValues);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("AllScalarTypesListCustomType {");
    buffer.write("stringValues=" +
        (_stringValues != null ? _stringValues!.toString() : "null") +
        ", ");
    buffer.write("intValues=" +
        (_intValues != null ? _intValues!.toString() : "null") +
        ", ");
    buffer.write("floatValues=" +
        (_floatValues != null ? _floatValues!.toString() : "null") +
        ", ");
    buffer.write("boolValues=" +
        (_boolValues != null ? _boolValues!.toString() : "null") +
        ", ");
    buffer.write("dateValues=" +
        (_dateValues != null ? _dateValues!.toString() : "null") +
        ", ");
    buffer.write("dateTimeValues=" +
        (_dateTimeValues != null ? _dateTimeValues!.toString() : "null") +
        ", ");
    buffer.write("timeValues=" +
        (_timeValues != null ? _timeValues!.toString() : "null") +
        ", ");
    buffer.write("timestampValues=" +
        (_timestampValues != null ? _timestampValues!.toString() : "null") +
        ", ");
    buffer.write("jsonValues=" +
        (_jsonValues != null ? _jsonValues!.toString() : "null") +
        ", ");
    buffer.write("enumValues=" +
        (_enumValues != null
            ? _enumValues!.map((e) => enumToString(e)).toString()
            : "null") +
        ", ");
    buffer.write("customTypeValues=" +
        (_customTypeValues != null ? _customTypeValues!.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  AllScalarTypesListCustomType copyWith(
      {List<String>? stringValues,
      List<int>? intValues,
      List<double>? floatValues,
      List<bool>? boolValues,
      List<TemporalDate>? dateValues,
      List<TemporalDateTime>? dateTimeValues,
      List<TemporalTime>? timeValues,
      List<TemporalTimestamp>? timestampValues,
      List<String>? jsonValues,
      List<EnumModel>? enumValues,
      List<SimpleCustomType>? customTypeValues}) {
    return AllScalarTypesListCustomType(
        stringValues: stringValues ?? this.stringValues,
        intValues: intValues ?? this.intValues,
        floatValues: floatValues ?? this.floatValues,
        boolValues: boolValues ?? this.boolValues,
        dateValues: dateValues ?? this.dateValues,
        dateTimeValues: dateTimeValues ?? this.dateTimeValues,
        timeValues: timeValues ?? this.timeValues,
        timestampValues: timestampValues ?? this.timestampValues,
        jsonValues: jsonValues ?? this.jsonValues,
        enumValues: enumValues ?? this.enumValues,
        customTypeValues: customTypeValues ?? this.customTypeValues);
  }

  AllScalarTypesListCustomType.fromJson(Map<String, dynamic> json)
      : _stringValues = json['stringValues']?.cast<String>(),
        _intValues = (json['intValues'] as List?)
            ?.map((e) => (e as num).toInt())
            .toList(),
        _floatValues = (json['floatValues'] as List?)
            ?.map((e) => (e as num).toDouble())
            .toList(),
        _boolValues = json['boolValues']?.cast<bool>(),
        _dateValues = (json['dateValues'] as List?)
            ?.map((e) => TemporalDate.fromString(e))
            .toList(),
        _dateTimeValues = (json['dateTimeValues'] as List?)
            ?.map((e) => TemporalDateTime.fromString(e))
            .toList(),
        _timeValues = (json['timeValues'] as List?)
            ?.map((e) => TemporalTime.fromString(e))
            .toList(),
        _timestampValues = (json['timestampValues'] as List?)
            ?.map((e) => TemporalTimestamp.fromSeconds(e))
            .toList(),
        _jsonValues = json['jsonValues']?.cast<String>(),
        _enumValues = json['enumValues'] is List
            ? (json['enumValues'] as List)
                .map((e) => enumFromString<EnumModel>(e, EnumModel.values)!)
                .toList()
            : null,
        _customTypeValues = json['customTypeValues'] is List
            ? (json['customTypeValues'] as List)
                .where((e) => e != null)
                .map((e) => SimpleCustomType.fromJson(
                    new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'stringValues': _stringValues,
        'intValues': _intValues,
        'floatValues': _floatValues,
        'boolValues': _boolValues,
        'dateValues': _dateValues?.map((e) => e.format()).toList(),
        'dateTimeValues': _dateTimeValues?.map((e) => e.format()).toList(),
        'timeValues': _timeValues?.map((e) => e.format()).toList(),
        'timestampValues': _timestampValues?.map((e) => e.toSeconds()).toList(),
        'jsonValues': _jsonValues,
        'enumValues': _enumValues?.map((e) => enumToString(e)).toList(),
        'customTypeValues': _customTypeValues
            ?.map((SimpleCustomType? e) => e?.toJson())
            .toList()
      };

  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "AllScalarTypesListCustomType";
    modelSchemaDefinition.pluralName = "AllScalarTypesListCustomTypes";

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'stringValues',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'intValues',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.int))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'floatValues',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.double))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'boolValues',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.bool))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'dateValues',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.date))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'dateTimeValues',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.dateTime))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'timeValues',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.time))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'timestampValues',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.timestamp))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'jsonValues',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'enumValues',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.enumeration))));

    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
        fieldName: 'customTypeValues',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection,
            ofCustomTypeName: 'SimpleCustomType')));
  });
}
