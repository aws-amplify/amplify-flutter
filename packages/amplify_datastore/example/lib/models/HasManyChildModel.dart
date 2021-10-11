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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs

import 'ModelProvider.dart';

/** This is an auto generated class representing the HasManyChildModel type in your schema. */
@immutable
class HasManyChildModel extends Model {
  static const classType = const _HasManyChildModelModelType();
  final String id;
  final String? _name;
  final HasManyModel? _parent;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

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

  HasManyModel? get parent {
    return _parent;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const HasManyChildModel._internal(
      {required this.id, required name, parent, createdAt, updatedAt})
      : _name = name,
        _parent = parent,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory HasManyChildModel(
      {String? id, required String name, HasManyModel? parent}) {
    return HasManyChildModel._internal(
        id: id == null ? UUID.getUUID() : id, name: name, parent: parent);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasManyChildModel &&
        id == other.id &&
        _name == other._name &&
        _parent == other._parent;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("HasManyChildModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write(
        "parent=" + (_parent != null ? _parent!.toString() : "null") + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  HasManyChildModel copyWith({String? id, String? name, HasManyModel? parent}) {
    return HasManyChildModel._internal(
        id: id ?? this.id,
        name: name ?? this.name,
        parent: parent ?? this.parent);
  }

  HasManyChildModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _parent = json['parent']?['serializedData'] != null
            ? HasManyModel.fromJson(
                new Map<String, dynamic>.from(json['parent']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'parent': _parent?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID = QueryField(fieldName: "hasManyChildModel.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField PARENT = QueryField(
      fieldName: "parent",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (HasManyModel).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "HasManyChildModel";
    modelSchemaDefinition.pluralName = "HasManyChildModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: HasManyChildModel.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: HasManyChildModel.PARENT,
        isRequired: false,
        targetName: "parentID",
        ofModelName: (HasManyModel).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: "createdAt",
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: "updatedAt",
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));
  });
}

class _HasManyChildModelModelType extends ModelType<HasManyChildModel> {
  const _HasManyChildModelModelType();

  @override
  HasManyChildModel fromJson(Map<String, dynamic> jsonData) {
    return HasManyChildModel.fromJson(jsonData);
  }
}
