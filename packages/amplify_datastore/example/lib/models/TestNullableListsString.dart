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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the TestNullableListsString type in your schema. */
@immutable
class TestNullableListsString extends Model {
  static const classType = const _TestNullableListsStringModelType();
  final String id;
  final List<String>? _list;
  final List<String>? _requiredList;
  final List<String>? _requiredListOfRequired;
  final List<String>? _listOfRequired;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  List<String>? get list {
    return _list;
  }

  List<String> get requiredList {
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

  List<String> get requiredListOfRequired {
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

  List<String>? get listOfRequired {
    return _listOfRequired;
  }

  const TestNullableListsString._internal(
      {required this.id,
      list,
      required requiredList,
      required requiredListOfRequired,
      listOfRequired})
      : _list = list,
        _requiredList = requiredList,
        _requiredListOfRequired = requiredListOfRequired,
        _listOfRequired = listOfRequired;

  factory TestNullableListsString(
      {String? id,
      List<String>? list,
      required List<String> requiredList,
      required List<String> requiredListOfRequired,
      List<String>? listOfRequired}) {
    return TestNullableListsString._internal(
        id: id == null ? UUID.getUUID() : id,
        list: list != null ? List<String>.unmodifiable(list) : list,
        requiredList: requiredList != null
            ? List<String>.unmodifiable(requiredList)
            : requiredList,
        requiredListOfRequired: requiredListOfRequired != null
            ? List<String>.unmodifiable(requiredListOfRequired)
            : requiredListOfRequired,
        listOfRequired: listOfRequired != null
            ? List<String>.unmodifiable(listOfRequired)
            : listOfRequired);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestNullableListsString &&
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

    buffer.write("TestNullableListsString {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("list=" + (_list != null ? _list!.toString() : "null") + ", ");
    buffer.write("requiredList=" +
        (_requiredList != null ? _requiredList!.toString() : "null") +
        ", ");
    buffer.write("requiredListOfRequired=" +
        (_requiredListOfRequired != null
            ? _requiredListOfRequired!.toString()
            : "null") +
        ", ");
    buffer.write("listOfRequired=" +
        (_listOfRequired != null ? _listOfRequired!.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  TestNullableListsString copyWith(
      {String? id,
      List<String>? list,
      List<String>? requiredList,
      List<String>? requiredListOfRequired,
      List<String>? listOfRequired}) {
    return TestNullableListsString(
        id: id ?? this.id,
        list: list ?? this.list,
        requiredList: requiredList ?? this.requiredList,
        requiredListOfRequired:
            requiredListOfRequired ?? this.requiredListOfRequired,
        listOfRequired: listOfRequired ?? this.listOfRequired);
  }

  TestNullableListsString.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _list = json['list']?.cast<String>(),
        _requiredList = json['requiredList']?.cast<String>(),
        _requiredListOfRequired =
            json['requiredListOfRequired']?.cast<String>(),
        _listOfRequired = json['listOfRequired']?.cast<String>();

  Map<String, dynamic> toJson() => {
        'id': id,
        'list': _list,
        'requiredList': _requiredList,
        'requiredListOfRequired': _requiredListOfRequired,
        'listOfRequired': _listOfRequired
      };

  static final QueryField ID =
      QueryField(fieldName: "testNullableListsString.id");
  static final QueryField LIST = QueryField(fieldName: "list");
  static final QueryField REQUIREDLIST = QueryField(fieldName: "requiredList");
  static final QueryField REQUIREDLISTOFREQUIRED =
      QueryField(fieldName: "requiredListOfRequired");
  static final QueryField LISTOFREQUIRED =
      QueryField(fieldName: "listOfRequired");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TestNullableListsString";
    modelSchemaDefinition.pluralName = "TestNullableListsStrings";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestNullableListsString.LIST,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestNullableListsString.REQUIREDLIST,
        isRequired: true,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestNullableListsString.REQUIREDLISTOFREQUIRED,
        isRequired: true,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestNullableListsString.LISTOFREQUIRED,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: describeEnum(ModelFieldTypeEnum.string))));
  });
}

class _TestNullableListsStringModelType
    extends ModelType<TestNullableListsString> {
  const _TestNullableListsStringModelType();

  @override
  TestNullableListsString fromJson(Map<String, dynamic> jsonData) {
    return TestNullableListsString.fromJson(jsonData);
  }
}
