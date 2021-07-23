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

/** This is an auto generated class representing the TestNullableListsModel type in your schema. */
@immutable
class TestNullableListsModel extends Model {
  static const classType = const _TestNullableListsModelModelType();
  final String id;
  final List<Post?>? _list;
  final List<Post?>? _requiredList;
  final List<Post>? _requiredListOfRequired;
  final List<Post>? _listOfRequired;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  List<Post?>? get list {
    return _list;
  }

  List<Post?> get requiredList {
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

  List<Post> get requiredListOfRequired {
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

  List<Post>? get listOfRequired {
    return _listOfRequired;
  }

  const TestNullableListsModel._internal(
      {required this.id,
      list,
      required requiredList,
      required requiredListOfRequired,
      listOfRequired})
      : _list = list,
        _requiredList = requiredList,
        _requiredListOfRequired = requiredListOfRequired,
        _listOfRequired = listOfRequired;

  factory TestNullableListsModel(
      {String? id,
      List<Post?>? list,
      required List<Post?> requiredList,
      required List<Post> requiredListOfRequired,
      List<Post>? listOfRequired}) {
    return TestNullableListsModel._internal(
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
    return other is TestNullableListsModel &&
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

    buffer.write("TestNullableListsModel {");
    buffer.write("id=" + "$id");
    buffer.write("list=" +
        (_list != null
            ? _list!.map((e) => e != null ? e.toString() : "null").toString()
            : "null") +
        ", ");
    buffer.write("requiredList=" +
        (_requiredList != null
            ? _requiredList!
                .map((e) => e != null ? e.toString() : "null")
                .toString()
            : "null") +
        ", ");
    buffer.write("requiredListOfRequired=" +
        (_requiredListOfRequired != null
            ? _requiredListOfRequired!.map((e) => e.toString()).toString()
            : "null") +
        ", ");
    buffer.write("listOfRequired=" +
        (_listOfRequired != null
            ? _listOfRequired!.map((e) => e.toString()).toString()
            : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  TestNullableListsModel copyWith(
      {String? id,
      List<Post?>? list,
      List<Post?>? requiredList,
      List<Post>? requiredListOfRequired,
      List<Post>? listOfRequired}) {
    return TestNullableListsModel(
        id: id ?? this.id,
        list: list ?? this.list,
        requiredList: requiredList ?? this.requiredList,
        requiredListOfRequired:
            requiredListOfRequired ?? this.requiredListOfRequired,
        listOfRequired: listOfRequired ?? this.listOfRequired);
  }

  TestNullableListsModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _list = json['list'] is List
            ? (json['list'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => Post.fromJson(
                    new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null,
        _requiredList = json['requiredList'] is List
            ? (json['requiredList'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => Post.fromJson(
                    new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null,
        _requiredListOfRequired = json['requiredListOfRequired'] is List
            ? (json['requiredListOfRequired'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => Post.fromJson(
                    new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null,
        _listOfRequired = json['listOfRequired'] is List
            ? (json['listOfRequired'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => Post.fromJson(
                    new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'list': _list?.map((e) => e?.toJson()).toList(),
        'requiredList': _requiredList?.map((e) => e?.toJson()).toList(),
        'requiredListOfRequired':
            _requiredListOfRequired?.map((e) => e.toJson()).toList(),
        'listOfRequired': _listOfRequired?.map((e) => e.toJson()).toList()
      };

  static final QueryField ID =
      QueryField(fieldName: "testNullableListsModel.id");
  static final QueryField LIST = QueryField(
      fieldName: "list",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Post).toString()));
  static final QueryField REQUIREDLIST = QueryField(
      fieldName: "requiredList",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Post).toString()));
  static final QueryField REQUIREDLISTOFREQUIRED = QueryField(
      fieldName: "requiredListOfRequired",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Post).toString()));
  static final QueryField LISTOFREQUIRED = QueryField(
      fieldName: "listOfRequired",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Post).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TestNullableListsModel";
    modelSchemaDefinition.pluralName = "TestNullableListsModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: TestNullableListsModel.LIST,
        isRequired: false,
        ofModelName: (Post).toString(),
        associatedKey: Post.BLOG));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: TestNullableListsModel.REQUIREDLIST,
        isRequired: false,
        ofModelName: (Post).toString(),
        associatedKey: Post.BLOG));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: TestNullableListsModel.REQUIREDLISTOFREQUIRED,
        isRequired: true,
        ofModelName: (Post).toString(),
        associatedKey: Post.BLOG));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: TestNullableListsModel.LISTOFREQUIRED,
        isRequired: true,
        ofModelName: (Post).toString(),
        associatedKey: Post.BLOG));
  });
}

class _TestNullableListsModelModelType
    extends ModelType<TestNullableListsModel> {
  const _TestNullableListsModelModelType();

  @override
  TestNullableListsModel fromJson(Map<String, dynamic> jsonData) {
    return TestNullableListsModel.fromJson(jsonData);
  }
}
