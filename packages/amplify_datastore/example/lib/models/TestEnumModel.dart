/*
* Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'TestEnum.dart';

/** This is an auto generated class representing the TestEnumModel type in your schema. */
@immutable
class TestEnumModel extends Model {
  static const classType = const TestEnumModelType();
  final String id;
  final TestEnum enumVal;
  final TestEnum nullableEnumVal;
  final List<TestEnum> enumList;
  final List<TestEnum> enumNullableList;
  final List<TestEnum> nullableEnumList;
  final List<TestEnum> nullableEnumNullableList;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const TestEnumModel._internal(
      {@required this.id,
      @required this.enumVal,
      this.nullableEnumVal,
      @required this.enumList,
      this.enumNullableList,
      @required this.nullableEnumList,
      this.nullableEnumNullableList});

  factory TestEnumModel(
      {@required String id,
      @required TestEnum enumVal,
      TestEnum nullableEnumVal,
      @required List<TestEnum> enumList,
      List<TestEnum> enumNullableList,
      @required List<TestEnum> nullableEnumList,
      List<TestEnum> nullableEnumNullableList}) {
    return TestEnumModel._internal(
        id: id == null ? UUID.getUUID() : id,
        enumVal: enumVal,
        nullableEnumVal: nullableEnumVal,
        enumList: enumList != null ? List.unmodifiable(enumList) : enumList,
        enumNullableList: enumNullableList != null
            ? List.unmodifiable(enumNullableList)
            : enumNullableList,
        nullableEnumList: nullableEnumList != null
            ? List.unmodifiable(nullableEnumList)
            : nullableEnumList,
        nullableEnumNullableList: nullableEnumNullableList != null
            ? List.unmodifiable(nullableEnumNullableList)
            : nullableEnumNullableList);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestEnumModel &&
        id == other.id &&
        enumVal == other.enumVal &&
        nullableEnumVal == other.nullableEnumVal &&
        DeepCollectionEquality().equals(enumList, other.enumList) &&
        DeepCollectionEquality()
            .equals(enumNullableList, other.enumNullableList) &&
        DeepCollectionEquality()
            .equals(nullableEnumList, other.nullableEnumList) &&
        DeepCollectionEquality()
            .equals(nullableEnumNullableList, other.nullableEnumNullableList);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("TestEnumModel {");
    buffer.write("id=" + id + ", ");
    buffer.write("enumVal=" + enumToString(enumVal) + ", ");
    buffer.write("nullableEnumVal=" + enumToString(nullableEnumVal) + ", ");
    buffer.write(
        "enumList=" + enumList?.map((e) => enumToString(e)).toString() + ", ");
    buffer.write("enumNullableList=" +
        enumNullableList?.map((e) => enumToString(e)).toString() +
        ", ");
    buffer.write("nullableEnumList=" +
        nullableEnumList?.map((e) => enumToString(e)).toString() +
        ", ");
    buffer.write("nullableEnumNullableList=" +
        nullableEnumNullableList?.map((e) => enumToString(e)).toString());
    buffer.write("}");

    return buffer.toString();
  }

  TestEnumModel copyWith(
      {String id,
      TestEnum enumVal,
      TestEnum nullableEnumVal,
      List<TestEnum> enumList,
      List<TestEnum> enumNullableList,
      List<TestEnum> nullableEnumList,
      List<TestEnum> nullableEnumNullableList}) {
    return TestEnumModel(
        id: id ?? this.id,
        enumVal: enumVal ?? this.enumVal,
        nullableEnumVal: nullableEnumVal ?? this.nullableEnumVal,
        enumList: enumList ?? this.enumList,
        enumNullableList: enumNullableList ?? this.enumNullableList,
        nullableEnumList: nullableEnumList ?? this.nullableEnumList,
        nullableEnumNullableList:
            nullableEnumNullableList ?? this.nullableEnumNullableList);
  }

  TestEnumModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        enumVal = enumFromString<TestEnum>(json['enumVal'], TestEnum.values),
        nullableEnumVal =
            enumFromString<TestEnum>(json['nullableEnumVal'], TestEnum.values),
        enumList = json['enumList'] is List
            ? (json['enumList'] as List)
                .map((e) => enumFromString<TestEnum>(e, TestEnum.values))
                .toList()
            : null,
        enumNullableList = json['enumNullableList'] is List
            ? (json['enumNullableList'] as List)
                .map((e) => enumFromString<TestEnum>(e, TestEnum.values))
                .toList()
            : null,
        nullableEnumList = json['nullableEnumList'] is List
            ? (json['nullableEnumList'] as List)
                .map((e) => enumFromString<TestEnum>(e, TestEnum.values))
                .toList()
            : null,
        nullableEnumNullableList = json['nullableEnumNullableList'] is List
            ? (json['nullableEnumNullableList'] as List)
                .map((e) => enumFromString<TestEnum>(e, TestEnum.values))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'enumVal': enumToString(enumVal),
        'nullableEnumVal': enumToString(nullableEnumVal),
        'enumList': enumList?.map((e) => enumToString(e))?.toList(),
        'enumNullableList':
            enumNullableList?.map((e) => enumToString(e))?.toList(),
        'nullableEnumList':
            nullableEnumList?.map((e) => enumToString(e))?.toList(),
        'nullableEnumNullableList':
            nullableEnumNullableList?.map((e) => enumToString(e))?.toList()
      };

  static final QueryField ID = QueryField(fieldName: "testEnumModel.id");
  static final QueryField ENUMVAL = QueryField(fieldName: "enumVal");
  static final QueryField NULLABLEENUMVAL =
      QueryField(fieldName: "nullableEnumVal");
  static final QueryField ENUMLIST = QueryField(fieldName: "enumList");
  static final QueryField ENUMNULLABLELIST =
      QueryField(fieldName: "enumNullableList");
  static final QueryField NULLABLEENUMLIST =
      QueryField(fieldName: "nullableEnumList");
  static final QueryField NULLABLEENUMNULLABLELIST =
      QueryField(fieldName: "nullableEnumNullableList");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TestEnumModel";
    modelSchemaDefinition.pluralName = "TestEnumModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestEnumModel.ENUMVAL,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestEnumModel.NULLABLEENUMVAL,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestEnumModel.ENUMLIST,
        isArray: true,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.enumeration))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestEnumModel.ENUMNULLABLELIST,
        isArray: true,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.enumeration))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestEnumModel.NULLABLEENUMLIST,
        isArray: true,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.enumeration))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestEnumModel.NULLABLEENUMNULLABLELIST,
        isArray: true,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.enumeration))));
  });
}

class TestEnumModelType extends ModelType<TestEnumModel> {
  const TestEnumModelType();

  @override
  TestEnumModel fromJson(Map<String, dynamic> jsonData) {
    return TestEnumModel.fromJson(jsonData);
  }
}
