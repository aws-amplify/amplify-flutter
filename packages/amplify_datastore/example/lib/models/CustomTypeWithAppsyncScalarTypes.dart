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

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the CustomTypeWithAppsyncScalarTypes type in your schema.
@immutable
class CustomTypeWithAppsyncScalarTypes {
  final String? _stringValue;
  final List<String>? _listOfStringValue;
  final int? _intValue;
  final List<int>? _listOfIntValue;
  final double? _floatValue;
  final List<double>? _listOfFloatValue;
  final bool? _booleanValue;
  final List<bool>? _listOfBooleanValue;
  final TemporalDate? _awsDateValue;
  final List<TemporalDate>? _listOfAWSDateValue;
  final TemporalDateTime? _awsDateTimeValue;
  final List<TemporalDateTime>? _listOfAWSDateTimeValue;
  final TemporalTime? _awsTimeValue;
  final List<TemporalTime>? _listOfAWSTimeValue;
  final TemporalTimestamp? _awsTimestampValue;
  final List<TemporalTimestamp>? _listOfAWSTimestampValue;
  final String? _awsEmailValue;
  final List<String>? _listOfAWSEmailValue;
  final String? _awsJsonValue;
  final List<String>? _listOfAWSJsonValue;
  final String? _awsPhoneValue;
  final List<String>? _listOfAWSPhoneValue;
  final String? _awsURLValue;
  final List<String>? _listOfAWSURLValue;
  final String? _awsIPAddressValue;
  final List<String>? _listOfAWSIPAddressValue;
  final EnumField? _enumValue;
  final List<EnumField>? _listOfEnumValue;
  final SimpleCustomType? _customTypeValue;
  final List<SimpleCustomType>? _listOfCustomTypeValue;

  String? get stringValue {
    return _stringValue;
  }

  List<String>? get listOfStringValue {
    return _listOfStringValue;
  }

  int? get intValue {
    return _intValue;
  }

  List<int>? get listOfIntValue {
    return _listOfIntValue;
  }

  double? get floatValue {
    return _floatValue;
  }

  List<double>? get listOfFloatValue {
    return _listOfFloatValue;
  }

  bool? get booleanValue {
    return _booleanValue;
  }

  List<bool>? get listOfBooleanValue {
    return _listOfBooleanValue;
  }

  TemporalDate? get awsDateValue {
    return _awsDateValue;
  }

  List<TemporalDate>? get listOfAWSDateValue {
    return _listOfAWSDateValue;
  }

  TemporalDateTime? get awsDateTimeValue {
    return _awsDateTimeValue;
  }

  List<TemporalDateTime>? get listOfAWSDateTimeValue {
    return _listOfAWSDateTimeValue;
  }

  TemporalTime? get awsTimeValue {
    return _awsTimeValue;
  }

  List<TemporalTime>? get listOfAWSTimeValue {
    return _listOfAWSTimeValue;
  }

  TemporalTimestamp? get awsTimestampValue {
    return _awsTimestampValue;
  }

  List<TemporalTimestamp>? get listOfAWSTimestampValue {
    return _listOfAWSTimestampValue;
  }

  String? get awsEmailValue {
    return _awsEmailValue;
  }

  List<String>? get listOfAWSEmailValue {
    return _listOfAWSEmailValue;
  }

  String? get awsJsonValue {
    return _awsJsonValue;
  }

  List<String>? get listOfAWSJsonValue {
    return _listOfAWSJsonValue;
  }

  String? get awsPhoneValue {
    return _awsPhoneValue;
  }

  List<String>? get listOfAWSPhoneValue {
    return _listOfAWSPhoneValue;
  }

  String? get awsURLValue {
    return _awsURLValue;
  }

  List<String>? get listOfAWSURLValue {
    return _listOfAWSURLValue;
  }

  String? get awsIPAddressValue {
    return _awsIPAddressValue;
  }

  List<String>? get listOfAWSIPAddressValue {
    return _listOfAWSIPAddressValue;
  }

  EnumField? get enumValue {
    return _enumValue;
  }

  List<EnumField>? get listOfEnumValue {
    return _listOfEnumValue;
  }

  SimpleCustomType? get customTypeValue {
    return _customTypeValue;
  }

  List<SimpleCustomType>? get listOfCustomTypeValue {
    return _listOfCustomTypeValue;
  }

  const CustomTypeWithAppsyncScalarTypes._internal(
      {stringValue,
      listOfStringValue,
      intValue,
      listOfIntValue,
      floatValue,
      listOfFloatValue,
      booleanValue,
      listOfBooleanValue,
      awsDateValue,
      listOfAWSDateValue,
      awsDateTimeValue,
      listOfAWSDateTimeValue,
      awsTimeValue,
      listOfAWSTimeValue,
      awsTimestampValue,
      listOfAWSTimestampValue,
      awsEmailValue,
      listOfAWSEmailValue,
      awsJsonValue,
      listOfAWSJsonValue,
      awsPhoneValue,
      listOfAWSPhoneValue,
      awsURLValue,
      listOfAWSURLValue,
      awsIPAddressValue,
      listOfAWSIPAddressValue,
      enumValue,
      listOfEnumValue,
      customTypeValue,
      listOfCustomTypeValue})
      : _stringValue = stringValue,
        _listOfStringValue = listOfStringValue,
        _intValue = intValue,
        _listOfIntValue = listOfIntValue,
        _floatValue = floatValue,
        _listOfFloatValue = listOfFloatValue,
        _booleanValue = booleanValue,
        _listOfBooleanValue = listOfBooleanValue,
        _awsDateValue = awsDateValue,
        _listOfAWSDateValue = listOfAWSDateValue,
        _awsDateTimeValue = awsDateTimeValue,
        _listOfAWSDateTimeValue = listOfAWSDateTimeValue,
        _awsTimeValue = awsTimeValue,
        _listOfAWSTimeValue = listOfAWSTimeValue,
        _awsTimestampValue = awsTimestampValue,
        _listOfAWSTimestampValue = listOfAWSTimestampValue,
        _awsEmailValue = awsEmailValue,
        _listOfAWSEmailValue = listOfAWSEmailValue,
        _awsJsonValue = awsJsonValue,
        _listOfAWSJsonValue = listOfAWSJsonValue,
        _awsPhoneValue = awsPhoneValue,
        _listOfAWSPhoneValue = listOfAWSPhoneValue,
        _awsURLValue = awsURLValue,
        _listOfAWSURLValue = listOfAWSURLValue,
        _awsIPAddressValue = awsIPAddressValue,
        _listOfAWSIPAddressValue = listOfAWSIPAddressValue,
        _enumValue = enumValue,
        _listOfEnumValue = listOfEnumValue,
        _customTypeValue = customTypeValue,
        _listOfCustomTypeValue = listOfCustomTypeValue;

  factory CustomTypeWithAppsyncScalarTypes(
      {String? stringValue,
      List<String>? listOfStringValue,
      int? intValue,
      List<int>? listOfIntValue,
      double? floatValue,
      List<double>? listOfFloatValue,
      bool? booleanValue,
      List<bool>? listOfBooleanValue,
      TemporalDate? awsDateValue,
      List<TemporalDate>? listOfAWSDateValue,
      TemporalDateTime? awsDateTimeValue,
      List<TemporalDateTime>? listOfAWSDateTimeValue,
      TemporalTime? awsTimeValue,
      List<TemporalTime>? listOfAWSTimeValue,
      TemporalTimestamp? awsTimestampValue,
      List<TemporalTimestamp>? listOfAWSTimestampValue,
      String? awsEmailValue,
      List<String>? listOfAWSEmailValue,
      String? awsJsonValue,
      List<String>? listOfAWSJsonValue,
      String? awsPhoneValue,
      List<String>? listOfAWSPhoneValue,
      String? awsURLValue,
      List<String>? listOfAWSURLValue,
      String? awsIPAddressValue,
      List<String>? listOfAWSIPAddressValue,
      EnumField? enumValue,
      List<EnumField>? listOfEnumValue,
      SimpleCustomType? customTypeValue,
      List<SimpleCustomType>? listOfCustomTypeValue}) {
    return CustomTypeWithAppsyncScalarTypes._internal(
        stringValue: stringValue,
        listOfStringValue: listOfStringValue != null
            ? List<String>.unmodifiable(listOfStringValue)
            : listOfStringValue,
        intValue: intValue,
        listOfIntValue: listOfIntValue != null
            ? List<int>.unmodifiable(listOfIntValue)
            : listOfIntValue,
        floatValue: floatValue,
        listOfFloatValue: listOfFloatValue != null
            ? List<double>.unmodifiable(listOfFloatValue)
            : listOfFloatValue,
        booleanValue: booleanValue,
        listOfBooleanValue: listOfBooleanValue != null
            ? List<bool>.unmodifiable(listOfBooleanValue)
            : listOfBooleanValue,
        awsDateValue: awsDateValue,
        listOfAWSDateValue: listOfAWSDateValue != null
            ? List<TemporalDate>.unmodifiable(listOfAWSDateValue)
            : listOfAWSDateValue,
        awsDateTimeValue: awsDateTimeValue,
        listOfAWSDateTimeValue: listOfAWSDateTimeValue != null
            ? List<TemporalDateTime>.unmodifiable(listOfAWSDateTimeValue)
            : listOfAWSDateTimeValue,
        awsTimeValue: awsTimeValue,
        listOfAWSTimeValue: listOfAWSTimeValue != null
            ? List<TemporalTime>.unmodifiable(listOfAWSTimeValue)
            : listOfAWSTimeValue,
        awsTimestampValue: awsTimestampValue,
        listOfAWSTimestampValue: listOfAWSTimestampValue != null
            ? List<TemporalTimestamp>.unmodifiable(listOfAWSTimestampValue)
            : listOfAWSTimestampValue,
        awsEmailValue: awsEmailValue,
        listOfAWSEmailValue: listOfAWSEmailValue != null
            ? List<String>.unmodifiable(listOfAWSEmailValue)
            : listOfAWSEmailValue,
        awsJsonValue: awsJsonValue,
        listOfAWSJsonValue: listOfAWSJsonValue != null
            ? List<String>.unmodifiable(listOfAWSJsonValue)
            : listOfAWSJsonValue,
        awsPhoneValue: awsPhoneValue,
        listOfAWSPhoneValue: listOfAWSPhoneValue != null
            ? List<String>.unmodifiable(listOfAWSPhoneValue)
            : listOfAWSPhoneValue,
        awsURLValue: awsURLValue,
        listOfAWSURLValue: listOfAWSURLValue != null
            ? List<String>.unmodifiable(listOfAWSURLValue)
            : listOfAWSURLValue,
        awsIPAddressValue: awsIPAddressValue,
        listOfAWSIPAddressValue: listOfAWSIPAddressValue != null
            ? List<String>.unmodifiable(listOfAWSIPAddressValue)
            : listOfAWSIPAddressValue,
        enumValue: enumValue,
        listOfEnumValue: listOfEnumValue != null
            ? List<EnumField>.unmodifiable(listOfEnumValue)
            : listOfEnumValue,
        customTypeValue: customTypeValue,
        listOfCustomTypeValue: listOfCustomTypeValue != null
            ? List<SimpleCustomType>.unmodifiable(listOfCustomTypeValue)
            : listOfCustomTypeValue);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomTypeWithAppsyncScalarTypes &&
        _stringValue == other._stringValue &&
        DeepCollectionEquality()
            .equals(_listOfStringValue, other._listOfStringValue) &&
        _intValue == other._intValue &&
        DeepCollectionEquality()
            .equals(_listOfIntValue, other._listOfIntValue) &&
        _floatValue == other._floatValue &&
        DeepCollectionEquality()
            .equals(_listOfFloatValue, other._listOfFloatValue) &&
        _booleanValue == other._booleanValue &&
        DeepCollectionEquality()
            .equals(_listOfBooleanValue, other._listOfBooleanValue) &&
        _awsDateValue == other._awsDateValue &&
        DeepCollectionEquality()
            .equals(_listOfAWSDateValue, other._listOfAWSDateValue) &&
        _awsDateTimeValue == other._awsDateTimeValue &&
        DeepCollectionEquality()
            .equals(_listOfAWSDateTimeValue, other._listOfAWSDateTimeValue) &&
        _awsTimeValue == other._awsTimeValue &&
        DeepCollectionEquality()
            .equals(_listOfAWSTimeValue, other._listOfAWSTimeValue) &&
        _awsTimestampValue == other._awsTimestampValue &&
        DeepCollectionEquality()
            .equals(_listOfAWSTimestampValue, other._listOfAWSTimestampValue) &&
        _awsEmailValue == other._awsEmailValue &&
        DeepCollectionEquality()
            .equals(_listOfAWSEmailValue, other._listOfAWSEmailValue) &&
        _awsJsonValue == other._awsJsonValue &&
        DeepCollectionEquality()
            .equals(_listOfAWSJsonValue, other._listOfAWSJsonValue) &&
        _awsPhoneValue == other._awsPhoneValue &&
        DeepCollectionEquality()
            .equals(_listOfAWSPhoneValue, other._listOfAWSPhoneValue) &&
        _awsURLValue == other._awsURLValue &&
        DeepCollectionEquality()
            .equals(_listOfAWSURLValue, other._listOfAWSURLValue) &&
        _awsIPAddressValue == other._awsIPAddressValue &&
        DeepCollectionEquality()
            .equals(_listOfAWSIPAddressValue, other._listOfAWSIPAddressValue) &&
        _enumValue == other._enumValue &&
        DeepCollectionEquality()
            .equals(_listOfEnumValue, other._listOfEnumValue) &&
        _customTypeValue == other._customTypeValue &&
        DeepCollectionEquality()
            .equals(_listOfCustomTypeValue, other._listOfCustomTypeValue);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("CustomTypeWithAppsyncScalarTypes {");
    buffer.write("stringValue=" + "$_stringValue" + ", ");
    buffer.write("listOfStringValue=" +
        (_listOfStringValue != null ? _listOfStringValue!.toString() : "null") +
        ", ");
    buffer.write("intValue=" +
        (_intValue != null ? _intValue!.toString() : "null") +
        ", ");
    buffer.write("listOfIntValue=" +
        (_listOfIntValue != null ? _listOfIntValue!.toString() : "null") +
        ", ");
    buffer.write("floatValue=" +
        (_floatValue != null ? _floatValue!.toString() : "null") +
        ", ");
    buffer.write("listOfFloatValue=" +
        (_listOfFloatValue != null ? _listOfFloatValue!.toString() : "null") +
        ", ");
    buffer.write("booleanValue=" +
        (_booleanValue != null ? _booleanValue!.toString() : "null") +
        ", ");
    buffer.write("listOfBooleanValue=" +
        (_listOfBooleanValue != null
            ? _listOfBooleanValue!.toString()
            : "null") +
        ", ");
    buffer.write("awsDateValue=" +
        (_awsDateValue != null ? _awsDateValue!.format() : "null") +
        ", ");
    buffer.write("listOfAWSDateValue=" +
        (_listOfAWSDateValue != null
            ? _listOfAWSDateValue!.toString()
            : "null") +
        ", ");
    buffer.write("awsDateTimeValue=" +
        (_awsDateTimeValue != null ? _awsDateTimeValue!.format() : "null") +
        ", ");
    buffer.write("listOfAWSDateTimeValue=" +
        (_listOfAWSDateTimeValue != null
            ? _listOfAWSDateTimeValue!.toString()
            : "null") +
        ", ");
    buffer.write("awsTimeValue=" +
        (_awsTimeValue != null ? _awsTimeValue!.format() : "null") +
        ", ");
    buffer.write("listOfAWSTimeValue=" +
        (_listOfAWSTimeValue != null
            ? _listOfAWSTimeValue!.toString()
            : "null") +
        ", ");
    buffer.write("awsTimestampValue=" +
        (_awsTimestampValue != null ? _awsTimestampValue!.toString() : "null") +
        ", ");
    buffer.write("listOfAWSTimestampValue=" +
        (_listOfAWSTimestampValue != null
            ? _listOfAWSTimestampValue!.toString()
            : "null") +
        ", ");
    buffer.write("awsEmailValue=" + "$_awsEmailValue" + ", ");
    buffer.write("listOfAWSEmailValue=" +
        (_listOfAWSEmailValue != null
            ? _listOfAWSEmailValue!.toString()
            : "null") +
        ", ");
    buffer.write("awsJsonValue=" + "$_awsJsonValue" + ", ");
    buffer.write("listOfAWSJsonValue=" +
        (_listOfAWSJsonValue != null
            ? _listOfAWSJsonValue!.toString()
            : "null") +
        ", ");
    buffer.write("awsPhoneValue=" + "$_awsPhoneValue" + ", ");
    buffer.write("listOfAWSPhoneValue=" +
        (_listOfAWSPhoneValue != null
            ? _listOfAWSPhoneValue!.toString()
            : "null") +
        ", ");
    buffer.write("awsURLValue=" + "$_awsURLValue" + ", ");
    buffer.write("listOfAWSURLValue=" +
        (_listOfAWSURLValue != null ? _listOfAWSURLValue!.toString() : "null") +
        ", ");
    buffer.write("awsIPAddressValue=" + "$_awsIPAddressValue" + ", ");
    buffer.write("listOfAWSIPAddressValue=" +
        (_listOfAWSIPAddressValue != null
            ? _listOfAWSIPAddressValue!.toString()
            : "null") +
        ", ");
    buffer.write("enumValue=" +
        (_enumValue != null ? enumToString(_enumValue)! : "null") +
        ", ");
    buffer.write("listOfEnumValue=" +
        (_listOfEnumValue != null
            ? _listOfEnumValue!.map((e) => enumToString(e)).toString()
            : "null") +
        ", ");
    buffer.write("customTypeValue=" +
        (_customTypeValue != null ? _customTypeValue!.toString() : "null") +
        ", ");
    buffer.write("listOfCustomTypeValue=" +
        (_listOfCustomTypeValue != null
            ? _listOfCustomTypeValue!.toString()
            : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  CustomTypeWithAppsyncScalarTypes copyWith(
      {String? stringValue,
      List<String>? listOfStringValue,
      int? intValue,
      List<int>? listOfIntValue,
      double? floatValue,
      List<double>? listOfFloatValue,
      bool? booleanValue,
      List<bool>? listOfBooleanValue,
      TemporalDate? awsDateValue,
      List<TemporalDate>? listOfAWSDateValue,
      TemporalDateTime? awsDateTimeValue,
      List<TemporalDateTime>? listOfAWSDateTimeValue,
      TemporalTime? awsTimeValue,
      List<TemporalTime>? listOfAWSTimeValue,
      TemporalTimestamp? awsTimestampValue,
      List<TemporalTimestamp>? listOfAWSTimestampValue,
      String? awsEmailValue,
      List<String>? listOfAWSEmailValue,
      String? awsJsonValue,
      List<String>? listOfAWSJsonValue,
      String? awsPhoneValue,
      List<String>? listOfAWSPhoneValue,
      String? awsURLValue,
      List<String>? listOfAWSURLValue,
      String? awsIPAddressValue,
      List<String>? listOfAWSIPAddressValue,
      EnumField? enumValue,
      List<EnumField>? listOfEnumValue,
      SimpleCustomType? customTypeValue,
      List<SimpleCustomType>? listOfCustomTypeValue}) {
    return CustomTypeWithAppsyncScalarTypes._internal(
        stringValue: stringValue ?? this.stringValue,
        listOfStringValue: listOfStringValue ?? this.listOfStringValue,
        intValue: intValue ?? this.intValue,
        listOfIntValue: listOfIntValue ?? this.listOfIntValue,
        floatValue: floatValue ?? this.floatValue,
        listOfFloatValue: listOfFloatValue ?? this.listOfFloatValue,
        booleanValue: booleanValue ?? this.booleanValue,
        listOfBooleanValue: listOfBooleanValue ?? this.listOfBooleanValue,
        awsDateValue: awsDateValue ?? this.awsDateValue,
        listOfAWSDateValue: listOfAWSDateValue ?? this.listOfAWSDateValue,
        awsDateTimeValue: awsDateTimeValue ?? this.awsDateTimeValue,
        listOfAWSDateTimeValue:
            listOfAWSDateTimeValue ?? this.listOfAWSDateTimeValue,
        awsTimeValue: awsTimeValue ?? this.awsTimeValue,
        listOfAWSTimeValue: listOfAWSTimeValue ?? this.listOfAWSTimeValue,
        awsTimestampValue: awsTimestampValue ?? this.awsTimestampValue,
        listOfAWSTimestampValue:
            listOfAWSTimestampValue ?? this.listOfAWSTimestampValue,
        awsEmailValue: awsEmailValue ?? this.awsEmailValue,
        listOfAWSEmailValue: listOfAWSEmailValue ?? this.listOfAWSEmailValue,
        awsJsonValue: awsJsonValue ?? this.awsJsonValue,
        listOfAWSJsonValue: listOfAWSJsonValue ?? this.listOfAWSJsonValue,
        awsPhoneValue: awsPhoneValue ?? this.awsPhoneValue,
        listOfAWSPhoneValue: listOfAWSPhoneValue ?? this.listOfAWSPhoneValue,
        awsURLValue: awsURLValue ?? this.awsURLValue,
        listOfAWSURLValue: listOfAWSURLValue ?? this.listOfAWSURLValue,
        awsIPAddressValue: awsIPAddressValue ?? this.awsIPAddressValue,
        listOfAWSIPAddressValue:
            listOfAWSIPAddressValue ?? this.listOfAWSIPAddressValue,
        enumValue: enumValue ?? this.enumValue,
        listOfEnumValue: listOfEnumValue ?? this.listOfEnumValue,
        customTypeValue: customTypeValue ?? this.customTypeValue,
        listOfCustomTypeValue:
            listOfCustomTypeValue ?? this.listOfCustomTypeValue);
  }

  CustomTypeWithAppsyncScalarTypes.fromJson(Map<String, dynamic> json)
      : _stringValue = json['stringValue'],
        _listOfStringValue = json['listOfStringValue']?.cast<String>(),
        _intValue = (json['intValue'] as num?)?.toInt(),
        _listOfIntValue = (json['listOfIntValue'] as List?)
            ?.map((e) => (e as num).toInt())
            .toList(),
        _floatValue = (json['floatValue'] as num?)?.toDouble(),
        _listOfFloatValue = (json['listOfFloatValue'] as List?)
            ?.map((e) => (e as num).toDouble())
            .toList(),
        _booleanValue = json['booleanValue'],
        _listOfBooleanValue = json['listOfBooleanValue']?.cast<bool>(),
        _awsDateValue = json['awsDateValue'] != null
            ? TemporalDate.fromString(json['awsDateValue'])
            : null,
        _listOfAWSDateValue = (json['listOfAWSDateValue'] as List?)
            ?.map((e) => TemporalDate.fromString(e))
            .toList(),
        _awsDateTimeValue = json['awsDateTimeValue'] != null
            ? TemporalDateTime.fromString(json['awsDateTimeValue'])
            : null,
        _listOfAWSDateTimeValue = (json['listOfAWSDateTimeValue'] as List?)
            ?.map((e) => TemporalDateTime.fromString(e))
            .toList(),
        _awsTimeValue = json['awsTimeValue'] != null
            ? TemporalTime.fromString(json['awsTimeValue'])
            : null,
        _listOfAWSTimeValue = (json['listOfAWSTimeValue'] as List?)
            ?.map((e) => TemporalTime.fromString(e))
            .toList(),
        _awsTimestampValue = json['awsTimestampValue'] != null
            ? TemporalTimestamp.fromSeconds(json['awsTimestampValue'])
            : null,
        _listOfAWSTimestampValue = (json['listOfAWSTimestampValue'] as List?)
            ?.map((e) => TemporalTimestamp.fromSeconds(e))
            .toList(),
        _awsEmailValue = json['awsEmailValue'],
        _listOfAWSEmailValue = json['listOfAWSEmailValue']?.cast<String>(),
        _awsJsonValue = json['awsJsonValue'],
        _listOfAWSJsonValue = json['listOfAWSJsonValue']?.cast<String>(),
        _awsPhoneValue = json['awsPhoneValue'],
        _listOfAWSPhoneValue = json['listOfAWSPhoneValue']?.cast<String>(),
        _awsURLValue = json['awsURLValue'],
        _listOfAWSURLValue = json['listOfAWSURLValue']?.cast<String>(),
        _awsIPAddressValue = json['awsIPAddressValue'],
        _listOfAWSIPAddressValue =
            json['listOfAWSIPAddressValue']?.cast<String>(),
        _enumValue =
            enumFromString<EnumField>(json['enumValue'], EnumField.values),
        _listOfEnumValue = json['listOfEnumValue'] is List
            ? (json['listOfEnumValue'] as List)
                .map((e) => enumFromString<EnumField>(e, EnumField.values)!)
                .toList()
            : null,
        _customTypeValue = json['customTypeValue']?['serializedData'] != null
            ? SimpleCustomType.fromJson(Map<String, dynamic>.from(
                json['customTypeValue']['serializedData']))
            : null,
        _listOfCustomTypeValue = json['listOfCustomTypeValue'] is List
            ? (json['listOfCustomTypeValue'] as List)
                .where((e) => e != null)
                .map((e) => SimpleCustomType.fromJson(
                    Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'stringValue': _stringValue,
        'listOfStringValue': _listOfStringValue,
        'intValue': _intValue,
        'listOfIntValue': _listOfIntValue,
        'floatValue': _floatValue,
        'listOfFloatValue': _listOfFloatValue,
        'booleanValue': _booleanValue,
        'listOfBooleanValue': _listOfBooleanValue,
        'awsDateValue': _awsDateValue?.format(),
        'listOfAWSDateValue':
            _listOfAWSDateValue?.map((e) => e.format()).toList(),
        'awsDateTimeValue': _awsDateTimeValue?.format(),
        'listOfAWSDateTimeValue':
            _listOfAWSDateTimeValue?.map((e) => e.format()).toList(),
        'awsTimeValue': _awsTimeValue?.format(),
        'listOfAWSTimeValue':
            _listOfAWSTimeValue?.map((e) => e.format()).toList(),
        'awsTimestampValue': _awsTimestampValue?.toSeconds(),
        'listOfAWSTimestampValue':
            _listOfAWSTimestampValue?.map((e) => e.toSeconds()).toList(),
        'awsEmailValue': _awsEmailValue,
        'listOfAWSEmailValue': _listOfAWSEmailValue,
        'awsJsonValue': _awsJsonValue,
        'listOfAWSJsonValue': _listOfAWSJsonValue,
        'awsPhoneValue': _awsPhoneValue,
        'listOfAWSPhoneValue': _listOfAWSPhoneValue,
        'awsURLValue': _awsURLValue,
        'listOfAWSURLValue': _listOfAWSURLValue,
        'awsIPAddressValue': _awsIPAddressValue,
        'listOfAWSIPAddressValue': _listOfAWSIPAddressValue,
        'enumValue': enumToString(_enumValue),
        'listOfEnumValue':
            _listOfEnumValue?.map((e) => enumToString(e)).toList(),
        'customTypeValue': _customTypeValue?.toJson(),
        'listOfCustomTypeValue': _listOfCustomTypeValue
            ?.map((SimpleCustomType? e) => e?.toJson())
            .toList()
      };

  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CustomTypeWithAppsyncScalarTypes";
    modelSchemaDefinition.pluralName = "CustomTypeWithAppsyncScalarTypes";

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'stringValue',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'listOfStringValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'intValue',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'listOfIntValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.int))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'floatValue',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.double)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'listOfFloatValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.double))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'booleanValue',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.bool)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'listOfBooleanValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.bool))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'awsDateValue',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.date)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'listOfAWSDateValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.date))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'awsDateTimeValue',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'listOfAWSDateTimeValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.dateTime))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'awsTimeValue',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.time)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'listOfAWSTimeValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.time))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'awsTimestampValue',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.timestamp)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'listOfAWSTimestampValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.timestamp))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'awsEmailValue',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'listOfAWSEmailValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'awsJsonValue',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'listOfAWSJsonValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'awsPhoneValue',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'listOfAWSPhoneValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'awsURLValue',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'listOfAWSURLValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'awsIPAddressValue',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'listOfAWSIPAddressValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'enumValue',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
        fieldName: 'listOfEnumValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.enumeration))));

    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
        fieldName: 'customTypeValue',
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.embedded,
            ofCustomTypeName: 'SimpleCustomType')));

    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
        fieldName: 'listOfCustomTypeValue',
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection,
            ofCustomTypeName: 'SimpleCustomType')));
  });
}
