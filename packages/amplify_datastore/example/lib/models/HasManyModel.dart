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

/** This is an auto generated class representing the HasManyModel type in your schema. */
@immutable
class HasManyModel extends Model {
  static const classType = const _HasManyModelModelType();
  final String id;
  final String? _name;
  final List<HasManyChildModel>? _children;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  String get name {
    try {
      return _name!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  List<HasManyChildModel>? get children {
    return _children;
  }

  const HasManyModel._internal({required this.id, required name, children})
      : _name = name,
        _children = children;

  factory HasManyModel(
      {String? id, required String name, List<HasManyChildModel>? children}) {
    return HasManyModel._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        children: children != null
            ? List<HasManyChildModel>.unmodifiable(children)
            : children);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasManyModel &&
        id == other.id &&
        _name == other._name &&
        DeepCollectionEquality().equals(_children, other._children);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("HasManyModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name");
    buffer.write("}");

    return buffer.toString();
  }

  HasManyModel copyWith(
      {String? id, String? name, List<HasManyChildModel>? children}) {
    return HasManyModel(
        id: id ?? this.id,
        name: name ?? this.name,
        children: children ?? this.children);
  }

  HasManyModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _children = json['children'] is List
            ? (json['children'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => HasManyChildModel.fromJson(
                    new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'children':
            _children?.map((HasManyChildModel? e) => e?.toJson()).toList()
      };

  static final QueryField ID = QueryField(fieldName: "hasManyModel.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField CHILDREN = QueryField(
      fieldName: "children",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (HasManyChildModel).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "HasManyModel";
    modelSchemaDefinition.pluralName = "HasManyModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: HasManyModel.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: HasManyModel.CHILDREN,
        isRequired: false,
        ofModelName: (HasManyChildModel).toString(),
        associatedKey: HasManyChildModel.PARENT));
  });
}

class _HasManyModelModelType extends ModelType<HasManyModel> {
  const _HasManyModelModelType();

  @override
  HasManyModel fromJson(Map<String, dynamic> jsonData) {
    return HasManyModel.fromJson(jsonData);
  }
}
