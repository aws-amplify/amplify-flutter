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

/** This is an auto generated class representing the BelongsToModel type in your schema. */
@immutable
class BelongsToModel extends Model {
  static const classType = const _BelongsToModelModelType();
  final String id;
  final String? _name;
  final ChildModel? _child;
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

  ChildModel get child {
    try {
      return _child!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const BelongsToModel._internal(
      {required this.id, required name, required child, createdAt, updatedAt})
      : _name = name,
        _child = child,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory BelongsToModel(
      {String? id, required String name, required ChildModel child}) {
    return BelongsToModel._internal(
        id: id == null ? UUID.getUUID() : id, name: name, child: child);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BelongsToModel &&
        id == other.id &&
        _name == other._name &&
        _child == other._child &&
        _createdAt == other._createdAt &&
        _updatedAt == other._updatedAt;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("BelongsToModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write(
        "child=" + (_child != null ? _child!.toString() : "null") + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  BelongsToModel copyWith({String? id, String? name, ChildModel? child}) {
    return BelongsToModel._internal(
        id: id ?? this.id, name: name ?? this.name, child: child ?? this.child);
  }

  BelongsToModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _child = json['child']?['serializedData'] != null
            ? ChildModel.fromJson(
                new Map<String, dynamic>.from(json['child']['serializedData']))
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
        'child': _child?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID = QueryField(fieldName: "belongsToModel.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField CHILD = QueryField(
      fieldName: "child",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (ChildModel).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "BelongsToModel";
    modelSchemaDefinition.pluralName = "BelongsToModels";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: BelongsToModel.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: BelongsToModel.CHILD,
        isRequired: true,
        targetName: "belongsToModelChildId",
        ofModelName: (ChildModel).toString()));

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

class _BelongsToModelModelType extends ModelType<BelongsToModel> {
  const _BelongsToModelModelType();

  @override
  BelongsToModel fromJson(Map<String, dynamic> jsonData) {
    return BelongsToModel.fromJson(jsonData);
  }
}
