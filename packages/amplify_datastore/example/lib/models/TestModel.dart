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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the TestModel type in your schema. */
@immutable
class TestModel extends Model {
  static const classType = const TestModelType();
  final String id;
  final double floatVal;
  final double floatNullableVal;
  final List<double> floatList;
  final List<double> floatNullableList;
  final List<double> nullableFloatList;
  final List<double> nullableFloatNullableList;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const TestModel._internal(
      {@required this.id,
      @required this.floatVal,
      this.floatNullableVal,
      @required this.floatList,
      this.floatNullableList,
      @required this.nullableFloatList,
      this.nullableFloatNullableList});

  factory TestModel(
      {@required String id,
      @required double floatVal,
      double floatNullableVal,
      @required List<double> floatList,
      List<double> floatNullableList,
      @required List<double> nullableFloatList,
      List<double> nullableFloatNullableList}) {
    return TestModel._internal(
        id: id == null ? UUID.getUUID() : id,
        floatVal: floatVal,
        floatNullableVal: floatNullableVal,
        floatList: floatList != null ? List.unmodifiable(floatList) : floatList,
        floatNullableList: floatNullableList != null
            ? List.unmodifiable(floatNullableList)
            : floatNullableList,
        nullableFloatList: nullableFloatList != null
            ? List.unmodifiable(nullableFloatList)
            : nullableFloatList,
        nullableFloatNullableList: nullableFloatNullableList != null
            ? List.unmodifiable(nullableFloatNullableList)
            : nullableFloatNullableList);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestModel &&
        id == other.id &&
        floatVal == other.floatVal &&
        floatNullableVal == other.floatNullableVal &&
        DeepCollectionEquality().equals(floatList, other.floatList) &&
        DeepCollectionEquality()
            .equals(floatNullableList, other.floatNullableList) &&
        DeepCollectionEquality()
            .equals(nullableFloatList, other.nullableFloatList) &&
        DeepCollectionEquality()
            .equals(nullableFloatNullableList, other.nullableFloatNullableList);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("TestModel {");
    buffer.write("id=" + id + ", ");
    buffer.write(
        "floatVal=" + (floatVal != null ? floatVal.toString() : "null") + ", ");
    buffer.write("floatNullableVal=" +
        (floatNullableVal != null ? floatNullableVal.toString() : "null") +
        ", ");
    buffer.write("floatList=" +
        (floatList != null ? floatList.toString() : "null") +
        ", ");
    buffer.write("floatNullableList=" +
        (floatNullableList != null ? floatNullableList.toString() : "null") +
        ", ");
    buffer.write("nullableFloatList=" +
        (nullableFloatList != null ? nullableFloatList.toString() : "null") +
        ", ");
    buffer.write("nullableFloatNullableList=" +
        (nullableFloatNullableList != null
            ? nullableFloatNullableList.toString()
            : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  TestModel copyWith(
      {String id,
      double floatVal,
      double floatNullableVal,
      List<double> floatList,
      List<double> floatNullableList,
      List<double> nullableFloatList,
      List<double> nullableFloatNullableList}) {
    return TestModel(
        id: id ?? this.id,
        floatVal: floatVal ?? this.floatVal,
        floatNullableVal: floatNullableVal ?? this.floatNullableVal,
        floatList: floatList ?? this.floatList,
        floatNullableList: floatNullableList ?? this.floatNullableList,
        nullableFloatList: nullableFloatList ?? this.nullableFloatList,
        nullableFloatNullableList:
            nullableFloatNullableList ?? this.nullableFloatNullableList);
  }

  TestModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        floatVal = json['floatVal'],
        floatNullableVal = json['floatNullableVal'],
        floatList = json['floatList']?.cast<double>(),
        floatNullableList = json['floatNullableList']?.cast<double>(),
        nullableFloatList = json['nullableFloatList']?.cast<double>(),
        nullableFloatNullableList =
            json['nullableFloatNullableList']?.cast<double>();

  Map<String, dynamic> toJson() => {
        'id': id,
        'floatVal': floatVal,
        'floatNullableVal': floatNullableVal,
        'floatList': floatList,
        'floatNullableList': floatNullableList,
        'nullableFloatList': nullableFloatList,
        'nullableFloatNullableList': nullableFloatNullableList
      };

  static final QueryField ID = QueryField(fieldName: "testModel.id");
  static final QueryField FLOATVAL = QueryField(fieldName: "floatVal");
  static final QueryField FLOATNULLABLEVAL =
      QueryField(fieldName: "floatNullableVal");
  static final QueryField FLOATLIST = QueryField(fieldName: "floatList");
  static final QueryField FLOATNULLABLELIST =
      QueryField(fieldName: "floatNullableList");
  static final QueryField NULLABLEFLOATLIST =
      QueryField(fieldName: "nullableFloatList");
  static final QueryField NULLABLEFLOATNULLABLELIST =
      QueryField(fieldName: "nullableFloatNullableList");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TestModel";
    modelSchemaDefinition.pluralName = "TestModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestModel.FLOATVAL,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.double)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestModel.FLOATNULLABLEVAL,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.double)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestModel.FLOATLIST,
        isRequired: true,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.double))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestModel.FLOATNULLABLELIST,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.double))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestModel.NULLABLEFLOATLIST,
        isRequired: true,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.double))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestModel.NULLABLEFLOATNULLABLELIST,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.double))));
  });
}

class TestModelType extends ModelType<TestModel> {
  const TestModelType();

  @override
  TestModel fromJson(Map<String, dynamic> jsonData) {
    return TestModel.fromJson(jsonData);
  }
}
