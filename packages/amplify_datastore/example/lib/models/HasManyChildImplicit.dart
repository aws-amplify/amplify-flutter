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

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the HasManyChildImplicit type in your schema.
@immutable
class HasManyChildImplicit extends Model {
  static const classType = _HasManyChildImplicitModelType();
  final String id;
  final String? _name;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _hasManyParentImplicitChildrenId;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  String? get name {
    return _name;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  String? get hasManyParentImplicitChildrenId {
    return _hasManyParentImplicitChildrenId;
  }

  const HasManyChildImplicit._internal(
      {required this.id,
      name,
      createdAt,
      updatedAt,
      hasManyParentImplicitChildrenId})
      : _name = name,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _hasManyParentImplicitChildrenId = hasManyParentImplicitChildrenId;

  factory HasManyChildImplicit(
      {String? id, String? name, String? hasManyParentImplicitChildrenId}) {
    return HasManyChildImplicit._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        hasManyParentImplicitChildrenId: hasManyParentImplicitChildrenId);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasManyChildImplicit &&
        id == other.id &&
        _name == other._name &&
        _hasManyParentImplicitChildrenId ==
            other._hasManyParentImplicitChildrenId;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("HasManyChildImplicit {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write("updatedAt=" +
        (_updatedAt != null ? _updatedAt!.format() : "null") +
        ", ");
    buffer.write("hasManyParentImplicitChildrenId=" +
        "$_hasManyParentImplicitChildrenId");
    buffer.write("}");

    return buffer.toString();
  }

  HasManyChildImplicit copyWith(
      {String? id, String? name, String? hasManyParentImplicitChildrenId}) {
    return HasManyChildImplicit._internal(
        id: id ?? this.id,
        name: name ?? this.name,
        hasManyParentImplicitChildrenId: hasManyParentImplicitChildrenId ??
            this.hasManyParentImplicitChildrenId);
  }

  HasManyChildImplicit.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null,
        _hasManyParentImplicitChildrenId =
            json['hasManyParentImplicitChildrenId'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format(),
        'hasManyParentImplicitChildrenId': _hasManyParentImplicitChildrenId
      };

  static final QueryField ID = QueryField(fieldName: "hasManyChildImplicit.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField HASMANYPARENTIMPLICITCHILDRENID =
      QueryField(fieldName: "hasManyParentImplicitChildrenId");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "HasManyChildImplicit";
    modelSchemaDefinition.pluralName = "HasManyChildImplicits";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: HasManyChildImplicit.NAME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

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

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: HasManyChildImplicit.HASMANYPARENTIMPLICITCHILDRENID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _HasManyChildImplicitModelType extends ModelType<HasManyChildImplicit> {
  const _HasManyChildImplicitModelType();

  @override
  HasManyChildImplicit fromJson(Map<String, dynamic> jsonData) {
    return HasManyChildImplicit.fromJson(jsonData);
  }
}
