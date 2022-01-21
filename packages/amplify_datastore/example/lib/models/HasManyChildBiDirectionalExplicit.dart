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

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the HasManyChildBiDirectionalExplicit type in your schema.
@immutable
class HasManyChildBiDirectionalExplicit extends Model {
  static const classType = _HasManyChildBiDirectionalExplicitModelType();
  final String id;
  final String? _name;
  final HasManyParentBiDirectionalExplicit? _hasManyParent;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  String? get name {
    return _name;
  }

  HasManyParentBiDirectionalExplicit? get hasManyParent {
    return _hasManyParent;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const HasManyChildBiDirectionalExplicit._internal(
      {required this.id, name, hasManyParent, createdAt, updatedAt})
      : _name = name,
        _hasManyParent = hasManyParent,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory HasManyChildBiDirectionalExplicit(
      {String? id,
      String? name,
      HasManyParentBiDirectionalExplicit? hasManyParent}) {
    return HasManyChildBiDirectionalExplicit._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        hasManyParent: hasManyParent);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasManyChildBiDirectionalExplicit &&
        id == other.id &&
        _name == other._name &&
        _hasManyParent == other._hasManyParent;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("HasManyChildBiDirectionalExplicit {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("hasManyParent=" +
        (_hasManyParent != null ? _hasManyParent!.toString() : "null") +
        ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  HasManyChildBiDirectionalExplicit copyWith(
      {String? id,
      String? name,
      HasManyParentBiDirectionalExplicit? hasManyParent}) {
    return HasManyChildBiDirectionalExplicit._internal(
        id: id ?? this.id,
        name: name ?? this.name,
        hasManyParent: hasManyParent ?? this.hasManyParent);
  }

  HasManyChildBiDirectionalExplicit.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _hasManyParent = json['hasManyParent']?['serializedData'] != null
            ? HasManyParentBiDirectionalExplicit.fromJson(
                Map<String, dynamic>.from(
                    json['hasManyParent']['serializedData']))
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
        'hasManyParent': _hasManyParent?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID =
      QueryField(fieldName: "hasManyChildBiDirectionalExplicit.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField HASMANYPARENT = QueryField(
      fieldName: "hasManyParent",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (HasManyParentBiDirectionalExplicit).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "HasManyChildBiDirectionalExplicit";
    modelSchemaDefinition.pluralName = "HasManyChildBiDirectionalExplicits";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: HasManyChildBiDirectionalExplicit.NAME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: HasManyChildBiDirectionalExplicit.HASMANYPARENT,
        isRequired: false,
        targetName: "hasManyParentId",
        ofModelName: (HasManyParentBiDirectionalExplicit).toString()));

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
  });
}

class _HasManyChildBiDirectionalExplicitModelType
    extends ModelType<HasManyChildBiDirectionalExplicit> {
  const _HasManyChildBiDirectionalExplicitModelType();

  @override
  HasManyChildBiDirectionalExplicit fromJson(Map<String, dynamic> jsonData) {
    return HasManyChildBiDirectionalExplicit.fromJson(jsonData);
  }
}
