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

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the ModelWithAppsyncScalarTypes type in your schema.
@immutable
class ModelWithAppsyncScalarTypes extends Model {
  static const classType = _ModelWithAppsyncScalarTypesModelType();
  final String id;
  final String? _stringValue;
  final String? _altStringValue;
  final List<String>? _listOfStringValue;
  final int? _intValue;
  final int? _altIntValue;
  final List<int>? _listOfIntValue;
  final double? _floatValue;
  final List<double>? _listOfFloatValue;
  final bool? _booleanValue;
  final List<bool>? _listOfBooleanValue;
  final TemporalDate? _awsDateValue;
  final List<TemporalDate>? _listOfAWSDateValue;
  final TemporalTime? _awsTimeValue;
  final List<TemporalTime>? _listOfAWSTimeValue;
  final TemporalDateTime? _awsDateTimeValue;
  final List<TemporalDateTime>? _listOfAWSDateTimeValue;
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
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  ModelWithAppsyncScalarTypesModelIdentifier get modelIdentifier {
    return ModelWithAppsyncScalarTypesModelIdentifier(id: id);
  }

  String? get stringValue {
    return _stringValue;
  }

  String? get altStringValue {
    return _altStringValue;
  }

  List<String>? get listOfStringValue {
    return _listOfStringValue;
  }

  int? get intValue {
    return _intValue;
  }

  int? get altIntValue {
    return _altIntValue;
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

  TemporalTime? get awsTimeValue {
    return _awsTimeValue;
  }

  List<TemporalTime>? get listOfAWSTimeValue {
    return _listOfAWSTimeValue;
  }

  TemporalDateTime? get awsDateTimeValue {
    return _awsDateTimeValue;
  }

  List<TemporalDateTime>? get listOfAWSDateTimeValue {
    return _listOfAWSDateTimeValue;
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

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const ModelWithAppsyncScalarTypes._internal(
      {required this.id,
      stringValue,
      altStringValue,
      listOfStringValue,
      intValue,
      altIntValue,
      listOfIntValue,
      floatValue,
      listOfFloatValue,
      booleanValue,
      listOfBooleanValue,
      awsDateValue,
      listOfAWSDateValue,
      awsTimeValue,
      listOfAWSTimeValue,
      awsDateTimeValue,
      listOfAWSDateTimeValue,
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
      createdAt,
      updatedAt})
      : _stringValue = stringValue,
        _altStringValue = altStringValue,
        _listOfStringValue = listOfStringValue,
        _intValue = intValue,
        _altIntValue = altIntValue,
        _listOfIntValue = listOfIntValue,
        _floatValue = floatValue,
        _listOfFloatValue = listOfFloatValue,
        _booleanValue = booleanValue,
        _listOfBooleanValue = listOfBooleanValue,
        _awsDateValue = awsDateValue,
        _listOfAWSDateValue = listOfAWSDateValue,
        _awsTimeValue = awsTimeValue,
        _listOfAWSTimeValue = listOfAWSTimeValue,
        _awsDateTimeValue = awsDateTimeValue,
        _listOfAWSDateTimeValue = listOfAWSDateTimeValue,
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
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory ModelWithAppsyncScalarTypes(
      {String? id,
      String? stringValue,
      String? altStringValue,
      List<String>? listOfStringValue,
      int? intValue,
      int? altIntValue,
      List<int>? listOfIntValue,
      double? floatValue,
      List<double>? listOfFloatValue,
      bool? booleanValue,
      List<bool>? listOfBooleanValue,
      TemporalDate? awsDateValue,
      List<TemporalDate>? listOfAWSDateValue,
      TemporalTime? awsTimeValue,
      List<TemporalTime>? listOfAWSTimeValue,
      TemporalDateTime? awsDateTimeValue,
      List<TemporalDateTime>? listOfAWSDateTimeValue,
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
      List<String>? listOfAWSIPAddressValue}) {
    return ModelWithAppsyncScalarTypes._internal(
        id: id == null ? UUID.getUUID() : id,
        stringValue: stringValue,
        altStringValue: altStringValue,
        listOfStringValue: listOfStringValue != null
            ? List<String>.unmodifiable(listOfStringValue)
            : listOfStringValue,
        intValue: intValue,
        altIntValue: altIntValue,
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
        awsTimeValue: awsTimeValue,
        listOfAWSTimeValue: listOfAWSTimeValue != null
            ? List<TemporalTime>.unmodifiable(listOfAWSTimeValue)
            : listOfAWSTimeValue,
        awsDateTimeValue: awsDateTimeValue,
        listOfAWSDateTimeValue: listOfAWSDateTimeValue != null
            ? List<TemporalDateTime>.unmodifiable(listOfAWSDateTimeValue)
            : listOfAWSDateTimeValue,
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
            : listOfAWSIPAddressValue);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelWithAppsyncScalarTypes &&
        id == other.id &&
        _stringValue == other._stringValue &&
        _altStringValue == other._altStringValue &&
        DeepCollectionEquality()
            .equals(_listOfStringValue, other._listOfStringValue) &&
        _intValue == other._intValue &&
        _altIntValue == other._altIntValue &&
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
        _awsTimeValue == other._awsTimeValue &&
        DeepCollectionEquality()
            .equals(_listOfAWSTimeValue, other._listOfAWSTimeValue) &&
        _awsDateTimeValue == other._awsDateTimeValue &&
        DeepCollectionEquality()
            .equals(_listOfAWSDateTimeValue, other._listOfAWSDateTimeValue) &&
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
            .equals(_listOfAWSIPAddressValue, other._listOfAWSIPAddressValue);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("ModelWithAppsyncScalarTypes {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("stringValue=" + "$_stringValue" + ", ");
    buffer.write("altStringValue=" + "$_altStringValue" + ", ");
    buffer.write("listOfStringValue=" +
        (_listOfStringValue != null ? _listOfStringValue!.toString() : "null") +
        ", ");
    buffer.write("intValue=" +
        (_intValue != null ? _intValue!.toString() : "null") +
        ", ");
    buffer.write("altIntValue=" +
        (_altIntValue != null ? _altIntValue!.toString() : "null") +
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
    buffer.write("awsTimeValue=" +
        (_awsTimeValue != null ? _awsTimeValue!.format() : "null") +
        ", ");
    buffer.write("listOfAWSTimeValue=" +
        (_listOfAWSTimeValue != null
            ? _listOfAWSTimeValue!.toString()
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
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  ModelWithAppsyncScalarTypes copyWith(
      {String? stringValue,
      String? altStringValue,
      List<String>? listOfStringValue,
      int? intValue,
      int? altIntValue,
      List<int>? listOfIntValue,
      double? floatValue,
      List<double>? listOfFloatValue,
      bool? booleanValue,
      List<bool>? listOfBooleanValue,
      TemporalDate? awsDateValue,
      List<TemporalDate>? listOfAWSDateValue,
      TemporalTime? awsTimeValue,
      List<TemporalTime>? listOfAWSTimeValue,
      TemporalDateTime? awsDateTimeValue,
      List<TemporalDateTime>? listOfAWSDateTimeValue,
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
      List<String>? listOfAWSIPAddressValue}) {
    return ModelWithAppsyncScalarTypes._internal(
        id: id,
        stringValue: stringValue ?? this.stringValue,
        altStringValue: altStringValue ?? this.altStringValue,
        listOfStringValue: listOfStringValue ?? this.listOfStringValue,
        intValue: intValue ?? this.intValue,
        altIntValue: altIntValue ?? this.altIntValue,
        listOfIntValue: listOfIntValue ?? this.listOfIntValue,
        floatValue: floatValue ?? this.floatValue,
        listOfFloatValue: listOfFloatValue ?? this.listOfFloatValue,
        booleanValue: booleanValue ?? this.booleanValue,
        listOfBooleanValue: listOfBooleanValue ?? this.listOfBooleanValue,
        awsDateValue: awsDateValue ?? this.awsDateValue,
        listOfAWSDateValue: listOfAWSDateValue ?? this.listOfAWSDateValue,
        awsTimeValue: awsTimeValue ?? this.awsTimeValue,
        listOfAWSTimeValue: listOfAWSTimeValue ?? this.listOfAWSTimeValue,
        awsDateTimeValue: awsDateTimeValue ?? this.awsDateTimeValue,
        listOfAWSDateTimeValue:
            listOfAWSDateTimeValue ?? this.listOfAWSDateTimeValue,
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
            listOfAWSIPAddressValue ?? this.listOfAWSIPAddressValue);
  }

  ModelWithAppsyncScalarTypes.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _stringValue = json['stringValue'],
        _altStringValue = json['altStringValue'],
        _listOfStringValue = json['listOfStringValue']?.cast<String>(),
        _intValue = (json['intValue'] as num?)?.toInt(),
        _altIntValue = (json['altIntValue'] as num?)?.toInt(),
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
        _awsTimeValue = json['awsTimeValue'] != null
            ? TemporalTime.fromString(json['awsTimeValue'])
            : null,
        _listOfAWSTimeValue = (json['listOfAWSTimeValue'] as List?)
            ?.map((e) => TemporalTime.fromString(e))
            .toList(),
        _awsDateTimeValue = json['awsDateTimeValue'] != null
            ? TemporalDateTime.fromString(json['awsDateTimeValue'])
            : null,
        _listOfAWSDateTimeValue = (json['listOfAWSDateTimeValue'] as List?)
            ?.map((e) => TemporalDateTime.fromString(e))
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
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'stringValue': _stringValue,
        'altStringValue': _altStringValue,
        'listOfStringValue': _listOfStringValue,
        'intValue': _intValue,
        'altIntValue': _altIntValue,
        'listOfIntValue': _listOfIntValue,
        'floatValue': _floatValue,
        'listOfFloatValue': _listOfFloatValue,
        'booleanValue': _booleanValue,
        'listOfBooleanValue': _listOfBooleanValue,
        'awsDateValue': _awsDateValue?.format(),
        'listOfAWSDateValue':
            _listOfAWSDateValue?.map((e) => e.format()).toList(),
        'awsTimeValue': _awsTimeValue?.format(),
        'listOfAWSTimeValue':
            _listOfAWSTimeValue?.map((e) => e.format()).toList(),
        'awsDateTimeValue': _awsDateTimeValue?.format(),
        'listOfAWSDateTimeValue':
            _listOfAWSDateTimeValue?.map((e) => e.format()).toList(),
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
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryModelIdentifier<ModelWithAppsyncScalarTypesModelIdentifier>
      MODEL_IDENTIFIER =
      QueryModelIdentifier<ModelWithAppsyncScalarTypesModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField STRINGVALUE = QueryField(fieldName: "stringValue");
  static final QueryField ALTSTRINGVALUE =
      QueryField(fieldName: "altStringValue");
  static final QueryField LISTOFSTRINGVALUE =
      QueryField(fieldName: "listOfStringValue");
  static final QueryField INTVALUE = QueryField(fieldName: "intValue");
  static final QueryField ALTINTVALUE = QueryField(fieldName: "altIntValue");
  static final QueryField LISTOFINTVALUE =
      QueryField(fieldName: "listOfIntValue");
  static final QueryField FLOATVALUE = QueryField(fieldName: "floatValue");
  static final QueryField LISTOFFLOATVALUE =
      QueryField(fieldName: "listOfFloatValue");
  static final QueryField BOOLEANVALUE = QueryField(fieldName: "booleanValue");
  static final QueryField LISTOFBOOLEANVALUE =
      QueryField(fieldName: "listOfBooleanValue");
  static final QueryField AWSDATEVALUE = QueryField(fieldName: "awsDateValue");
  static final QueryField LISTOFAWSDATEVALUE =
      QueryField(fieldName: "listOfAWSDateValue");
  static final QueryField AWSTIMEVALUE = QueryField(fieldName: "awsTimeValue");
  static final QueryField LISTOFAWSTIMEVALUE =
      QueryField(fieldName: "listOfAWSTimeValue");
  static final QueryField AWSDATETIMEVALUE =
      QueryField(fieldName: "awsDateTimeValue");
  static final QueryField LISTOFAWSDATETIMEVALUE =
      QueryField(fieldName: "listOfAWSDateTimeValue");
  static final QueryField AWSTIMESTAMPVALUE =
      QueryField(fieldName: "awsTimestampValue");
  static final QueryField LISTOFAWSTIMESTAMPVALUE =
      QueryField(fieldName: "listOfAWSTimestampValue");
  static final QueryField AWSEMAILVALUE =
      QueryField(fieldName: "awsEmailValue");
  static final QueryField LISTOFAWSEMAILVALUE =
      QueryField(fieldName: "listOfAWSEmailValue");
  static final QueryField AWSJSONVALUE = QueryField(fieldName: "awsJsonValue");
  static final QueryField LISTOFAWSJSONVALUE =
      QueryField(fieldName: "listOfAWSJsonValue");
  static final QueryField AWSPHONEVALUE =
      QueryField(fieldName: "awsPhoneValue");
  static final QueryField LISTOFAWSPHONEVALUE =
      QueryField(fieldName: "listOfAWSPhoneValue");
  static final QueryField AWSURLVALUE = QueryField(fieldName: "awsURLValue");
  static final QueryField LISTOFAWSURLVALUE =
      QueryField(fieldName: "listOfAWSURLValue");
  static final QueryField AWSIPADDRESSVALUE =
      QueryField(fieldName: "awsIPAddressValue");
  static final QueryField LISTOFAWSIPADDRESSVALUE =
      QueryField(fieldName: "listOfAWSIPAddressValue");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ModelWithAppsyncScalarTypes";
    modelSchemaDefinition.pluralName = "ModelWithAppsyncScalarTypes";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.STRINGVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.ALTSTRINGVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.LISTOFSTRINGVALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.INTVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.ALTINTVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.LISTOFINTVALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.int))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.FLOATVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.double)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.LISTOFFLOATVALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.double))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.BOOLEANVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.bool)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.LISTOFBOOLEANVALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.bool))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.AWSDATEVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.date)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.LISTOFAWSDATEVALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.date))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.AWSTIMEVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.time)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.LISTOFAWSTIMEVALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.time))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.AWSDATETIMEVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.LISTOFAWSDATETIMEVALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.dateTime))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.AWSTIMESTAMPVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.timestamp)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.LISTOFAWSTIMESTAMPVALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.timestamp))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.AWSEMAILVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.LISTOFAWSEMAILVALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.AWSJSONVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.LISTOFAWSJSONVALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.AWSPHONEVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.LISTOFAWSPHONEVALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.AWSURLVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.LISTOFAWSURLVALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.AWSIPADDRESSVALUE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ModelWithAppsyncScalarTypes.LISTOFAWSIPADDRESSVALUE,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

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

class _ModelWithAppsyncScalarTypesModelType
    extends ModelType<ModelWithAppsyncScalarTypes> {
  const _ModelWithAppsyncScalarTypesModelType();

  @override
  ModelWithAppsyncScalarTypes fromJson(Map<String, dynamic> jsonData) {
    return ModelWithAppsyncScalarTypes.fromJson(jsonData);
  }
}

/// This is an auto generated class representing the model identifier
/// of [ModelWithAppsyncScalarTypes] in your schema.
@immutable
class ModelWithAppsyncScalarTypesModelIdentifier
    implements ModelIdentifier<ModelWithAppsyncScalarTypes> {
  final String id;

  /// Create an instance of ModelWithAppsyncScalarTypesModelIdentifier using [id] the primary key.
  const ModelWithAppsyncScalarTypesModelIdentifier({required this.id});

  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{'id': id});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
      .entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() => 'ModelWithAppsyncScalarTypesModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ModelWithAppsyncScalarTypesModelIdentifier &&
        id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
