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


/** This is an auto generated class representing the AllTypeOptionalModel type in your schema. */
@immutable
class AllTypeOptionalModel extends Model {
  static const classType = const _AllTypeOptionalModelModelType();
  final String id;
  final String? _stringType;
  final int? _intType;
  final double? _doubleType;
  final bool? _boolType;
  final TemporalDate? _dateType;
  final TemporalDateTime? _dateTimeType;
  final TemporalTime? _timeType;
  final TemporalTimestamp? _timestampType;
  final TestEnum? _enumType;
  final List<TestEnum>? _enumList;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get stringType {
    return _stringType;
  }
  
  int? get intType {
    return _intType;
  }
  
  double? get doubleType {
    return _doubleType;
  }
  
  bool? get boolType {
    return _boolType;
  }
  
  TemporalDate? get dateType {
    return _dateType;
  }
  
  TemporalDateTime? get dateTimeType {
    return _dateTimeType;
  }
  
  TemporalTime? get timeType {
    return _timeType;
  }
  
  TemporalTimestamp? get timestampType {
    return _timestampType;
  }
  
  TestEnum? get enumType {
    return _enumType;
  }
  
  List<TestEnum>? get enumList {
    return _enumList;
  }
  
  const AllTypeOptionalModel._internal({required this.id, stringType, intType, doubleType, boolType, dateType, dateTimeType, timeType, timestampType, enumType, enumList}): _stringType = stringType, _intType = intType, _doubleType = doubleType, _boolType = boolType, _dateType = dateType, _dateTimeType = dateTimeType, _timeType = timeType, _timestampType = timestampType, _enumType = enumType, _enumList = enumList;
  
  factory AllTypeOptionalModel({String? id, String? stringType, int? intType, double? doubleType, bool? boolType, TemporalDate? dateType, TemporalDateTime? dateTimeType, TemporalTime? timeType, TemporalTimestamp? timestampType, TestEnum? enumType, List<TestEnum>? enumList}) {
    return AllTypeOptionalModel._internal(
      id: id == null ? UUID.getUUID() : id,
      stringType: stringType,
      intType: intType,
      doubleType: doubleType,
      boolType: boolType,
      dateType: dateType,
      dateTimeType: dateTimeType,
      timeType: timeType,
      timestampType: timestampType,
      enumType: enumType,
      enumList: enumList != null ? List.unmodifiable(enumList) : enumList);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllTypeOptionalModel &&
      id == other.id &&
      _stringType == other._stringType &&
      _intType == other._intType &&
      _doubleType == other._doubleType &&
      _boolType == other._boolType &&
      _dateType == other._dateType &&
      _dateTimeType == other._dateTimeType &&
      _timeType == other._timeType &&
      _timestampType == other._timestampType &&
      _enumType == other._enumType &&
      DeepCollectionEquality().equals(_enumList, other._enumList);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("AllTypeOptionalModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("stringType=" + "$_stringType" + ", ");
    buffer.write("intType=" + (_intType != null ? _intType!.toString() : "null") + ", ");
    buffer.write("doubleType=" + (_doubleType != null ? _doubleType!.toString() : "null") + ", ");
    buffer.write("boolType=" + (_boolType != null ? _boolType!.toString() : "null") + ", ");
    buffer.write("dateType=" + (_dateType != null ? _dateType!.format() : "null") + ", ");
    buffer.write("dateTimeType=" + (_dateTimeType != null ? _dateTimeType!.format() : "null") + ", ");
    buffer.write("timeType=" + (_timeType != null ? _timeType!.format() : "null") + ", ");
    buffer.write("timestampType=" + (_timestampType != null ? _timestampType!.toString() : "null") + ", ");
    buffer.write("enumType=" + (_enumType != null ? enumToString(_enumType)! : "null") + ", ");
    buffer.write("enumList=" + (_enumList != null ? _enumList!.map((e) => enumToString(e)).toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  AllTypeOptionalModel copyWith({String? id, String? stringType, int? intType, double? doubleType, bool? boolType, TemporalDate? dateType, TemporalDateTime? dateTimeType, TemporalTime? timeType, TemporalTimestamp? timestampType, TestEnum? enumType, List<TestEnum>? enumList}) {
    return AllTypeOptionalModel(
      id: id ?? this.id,
      stringType: stringType ?? this.stringType,
      intType: intType ?? this.intType,
      doubleType: doubleType ?? this.doubleType,
      boolType: boolType ?? this.boolType,
      dateType: dateType ?? this.dateType,
      dateTimeType: dateTimeType ?? this.dateTimeType,
      timeType: timeType ?? this.timeType,
      timestampType: timestampType ?? this.timestampType,
      enumType: enumType ?? this.enumType,
      enumList: enumList ?? this.enumList);
  }
  
  AllTypeOptionalModel.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _stringType = json['stringType'],
      _intType = json['intType'],
      _doubleType = json['doubleType'],
      _boolType = json['boolType'],
      _dateType = json['dateType'] != null ? TemporalDate.fromString(json['dateType']) : null,
      _dateTimeType = json['dateTimeType'] != null ? TemporalDateTime.fromString(json['dateTimeType']) : null,
      _timeType = json['timeType'] != null ? TemporalTime.fromString(json['timeType']) : null,
      _timestampType = json['timestampType'] != null ? TemporalTimestamp.fromSeconds(json['timestampType']) : null,
      _enumType = enumFromString<TestEnum>(json['enumType'], TestEnum.values),
      _enumList = json['enumList'] is List
        ? (json['enumList'] as List)
          .map((e) => enumFromString<TestEnum>(e, TestEnum.values)!)
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'stringType': _stringType, 'intType': _intType, 'doubleType': _doubleType, 'boolType': _boolType, 'dateType': _dateType?.format(), 'dateTimeType': _dateTimeType?.format(), 'timeType': _timeType?.format(), 'timestampType': _timestampType?.toSeconds(), 'enumType': enumToString(_enumType), 'enumList': _enumList?.map((e) => enumToString(e))?.toList()
  };

  static final QueryField ID = QueryField(fieldName: "allTypeOptionalModel.id");
  static final QueryField STRINGTYPE = QueryField(fieldName: "stringType");
  static final QueryField INTTYPE = QueryField(fieldName: "intType");
  static final QueryField DOUBLETYPE = QueryField(fieldName: "doubleType");
  static final QueryField BOOLTYPE = QueryField(fieldName: "boolType");
  static final QueryField DATETYPE = QueryField(fieldName: "dateType");
  static final QueryField DATETIMETYPE = QueryField(fieldName: "dateTimeType");
  static final QueryField TIMETYPE = QueryField(fieldName: "timeType");
  static final QueryField TIMESTAMPTYPE = QueryField(fieldName: "timestampType");
  static final QueryField ENUMTYPE = QueryField(fieldName: "enumType");
  static final QueryField ENUMLIST = QueryField(fieldName: "enumList");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "AllTypeOptionalModel";
    modelSchemaDefinition.pluralName = "AllTypeOptionalModels";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AllTypeOptionalModel.STRINGTYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AllTypeOptionalModel.INTTYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AllTypeOptionalModel.DOUBLETYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AllTypeOptionalModel.BOOLTYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AllTypeOptionalModel.DATETYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AllTypeOptionalModel.DATETIMETYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AllTypeOptionalModel.TIMETYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.time)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AllTypeOptionalModel.TIMESTAMPTYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.timestamp)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AllTypeOptionalModel.ENUMTYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: AllTypeOptionalModel.ENUMLIST,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.enumeration))
    ));
  });
}

class _AllTypeOptionalModelModelType extends ModelType<AllTypeOptionalModel> {
  const _AllTypeOptionalModelModelType();
  
  @override
  AllTypeOptionalModel fromJson(Map<String, dynamic> jsonData) {
    return AllTypeOptionalModel.fromJson(jsonData);
  }
}