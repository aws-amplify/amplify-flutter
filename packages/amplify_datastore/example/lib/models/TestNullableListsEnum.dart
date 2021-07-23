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

/** This is an auto generated class representing the TestNullableListsEnum type in your schema. */
@immutable
class TestNullableListsEnum extends Model {
  static const classType = const _TestNullableListsEnumModelType();
  final String id;
  final List<TestEnum?>? _list;
  final List<TestEnum?>? _requiredList;
  final List<TestEnum>? _requiredListOfRequired;
  final List<TestEnum>? _listOfRequired;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  List<TestEnum?>? get list {
    return _list;
  }

  List<TestEnum?> get requiredList {
    try {
      return _requiredList!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  List<TestEnum> get requiredListOfRequired {
    try {
      return _requiredListOfRequired!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  List<TestEnum>? get listOfRequired {
    return _listOfRequired;
  }

  const TestNullableListsEnum._internal(
      {required this.id,
      list,
      required requiredList,
      required requiredListOfRequired,
      listOfRequired})
      : _list = list,
        _requiredList = requiredList,
        _requiredListOfRequired = requiredListOfRequired,
        _listOfRequired = listOfRequired;

  factory TestNullableListsEnum(
      {String? id,
      List<TestEnum?>? list,
      required List<TestEnum?> requiredList,
      required List<TestEnum> requiredListOfRequired,
      List<TestEnum>? listOfRequired}) {
    return TestNullableListsEnum._internal(
        id: id == null ? UUID.getUUID() : id,
        list: list,
        requiredList: requiredList,
        requiredListOfRequired: requiredListOfRequired,
        listOfRequired: listOfRequired);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestNullableListsEnum &&
        id == other.id &&
        DeepCollectionEquality().equals(_list, other._list) &&
        DeepCollectionEquality().equals(_requiredList, other._requiredList) &&
        DeepCollectionEquality()
            .equals(_requiredListOfRequired, other._requiredListOfRequired) &&
        DeepCollectionEquality().equals(_listOfRequired, other._listOfRequired);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("TestNullableListsEnum {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("list=" +
        (_list != null
            ? _list!.map((e) => enumToString(e)).toString()
            : "null") +
        ", ");
    buffer.write("requiredList=" +
        (_requiredList != null
            ? _requiredList!.map((e) => enumToString(e)).toString()
            : "null") +
        ", ");
    buffer.write("requiredListOfRequired=" +
        (_requiredListOfRequired != null
            ? _requiredListOfRequired!.map((e) => enumToString(e)).toString()
            : "null") +
        ", ");
    buffer.write("listOfRequired=" +
        (_listOfRequired != null
            ? _listOfRequired!.map((e) => enumToString(e)).toString()
            : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  TestNullableListsEnum copyWith(
      {String? id,
      List<TestEnum?>? list,
      List<TestEnum?>? requiredList,
      List<TestEnum>? requiredListOfRequired,
      List<TestEnum>? listOfRequired}) {
    return TestNullableListsEnum(
        id: id ?? this.id,
        list: list ?? this.list,
        requiredList: requiredList ?? this.requiredList,
        requiredListOfRequired:
            requiredListOfRequired ?? this.requiredListOfRequired,
        listOfRequired: listOfRequired ?? this.listOfRequired);
  }

  TestNullableListsEnum.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _list = json['list'] is List
            ? (json['list'] as List)
                .map((e) => enumFromString<TestEnum>(e, TestEnum.values))
                .toList()
            : null,
        _requiredList = json['requiredList'] is List
            ? (json['requiredList'] as List)
                .map((e) => enumFromString<TestEnum>(e, TestEnum.values))
                .toList()
            : null,
        _requiredListOfRequired = json['requiredListOfRequired'] is List
            ? (json['requiredListOfRequired'] as List)
                .map((e) => enumFromString<TestEnum>(e, TestEnum.values)!)
                .toList()
            : null,
        _listOfRequired = json['listOfRequired'] is List
            ? (json['listOfRequired'] as List)
                .map((e) => enumFromString<TestEnum>(e, TestEnum.values)!)
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'list': _list?.map((e) => enumToString(e)).toList(),
        'requiredList': _requiredList?.map((e) => enumToString(e)).toList(),
        'requiredListOfRequired':
            _requiredListOfRequired?.map((e) => enumToString(e)).toList(),
        'listOfRequired': _listOfRequired?.map((e) => enumToString(e)).toList()
      };

  static final QueryField ID =
      QueryField(fieldName: "testNullableListsEnum.id");
  static final QueryField LIST = QueryField(fieldName: "list");
  static final QueryField REQUIREDLIST = QueryField(fieldName: "requiredList");
  static final QueryField REQUIREDLISTOFREQUIRED =
      QueryField(fieldName: "requiredListOfRequired");
  static final QueryField LISTOFREQUIRED =
      QueryField(fieldName: "listOfRequired");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TestNullableListsEnum";
    modelSchemaDefinition.pluralName = "TestNullableListsEnums";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestNullableListsEnum.LIST,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.enumeration))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestNullableListsEnum.REQUIREDLIST,
        isRequired: true,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.enumeration))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestNullableListsEnum.REQUIREDLISTOFREQUIRED,
        isRequired: true,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.enumeration))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestNullableListsEnum.LISTOFREQUIRED,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.enumeration))));
  });
}

class _TestNullableListsEnumModelType extends ModelType<TestNullableListsEnum> {
  const _TestNullableListsEnumModelType();

  @override
  TestNullableListsEnum fromJson(Map<String, dynamic> jsonData) {
    return TestNullableListsEnum.fromJson(jsonData);
  }
}
