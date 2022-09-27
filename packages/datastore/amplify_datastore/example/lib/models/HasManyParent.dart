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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the HasManyParent type in your schema.
@immutable
class HasManyParent extends Model {
  static const classType = _HasManyParentModelType();
  final String id;
  final String? _name;
  final List<HasManyChildImplicit>? _implicitChildren;
  final List<HasManyChildExplicit>? _explicitChildren;
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

  List<HasManyChildImplicit>? get implicitChildren {
    return _implicitChildren;
  }

  List<HasManyChildExplicit>? get explicitChildren {
    return _explicitChildren;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const HasManyParent._internal(
      {required this.id,
      name,
      implicitChildren,
      explicitChildren,
      createdAt,
      updatedAt})
      : _name = name,
        _implicitChildren = implicitChildren,
        _explicitChildren = explicitChildren,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory HasManyParent(
      {String? id,
      String? name,
      List<HasManyChildImplicit>? implicitChildren,
      List<HasManyChildExplicit>? explicitChildren}) {
    return HasManyParent._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        implicitChildren: implicitChildren != null
            ? List<HasManyChildImplicit>.unmodifiable(implicitChildren)
            : implicitChildren,
        explicitChildren: explicitChildren != null
            ? List<HasManyChildExplicit>.unmodifiable(explicitChildren)
            : explicitChildren);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasManyParent &&
        id == other.id &&
        _name == other._name &&
        DeepCollectionEquality()
            .equals(_implicitChildren, other._implicitChildren) &&
        DeepCollectionEquality()
            .equals(_explicitChildren, other._explicitChildren);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("HasManyParent {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  HasManyParent copyWith(
      {String? id,
      String? name,
      List<HasManyChildImplicit>? implicitChildren,
      List<HasManyChildExplicit>? explicitChildren}) {
    return HasManyParent._internal(
        id: id ?? this.id,
        name: name ?? this.name,
        implicitChildren: implicitChildren ?? this.implicitChildren,
        explicitChildren: explicitChildren ?? this.explicitChildren);
  }

  HasManyParent.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _implicitChildren = json['implicitChildren'] is List
            ? (json['implicitChildren'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => HasManyChildImplicit.fromJson(
                    Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null,
        _explicitChildren = json['explicitChildren'] is List
            ? (json['explicitChildren'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => HasManyChildExplicit.fromJson(
                    Map<String, dynamic>.from(e['serializedData'])))
                .toList()
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
        'implicitChildren': _implicitChildren
            ?.map((HasManyChildImplicit? e) => e?.toJson())
            .toList(),
        'explicitChildren': _explicitChildren
            ?.map((HasManyChildExplicit? e) => e?.toJson())
            .toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID = QueryField(fieldName: "hasManyParent.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField IMPLICITCHILDREN = QueryField(
      fieldName: "implicitChildren",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (HasManyChildImplicit).toString()));
  static final QueryField EXPLICITCHILDREN = QueryField(
      fieldName: "explicitChildren",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (HasManyChildExplicit).toString()));
  static var schema = Model.defineSchema(
      define: (ModelTypeDefinitionBuilder modelSchemaDefinition) {
    modelSchemaDefinition.name = "HasManyParent";
    modelSchemaDefinition.pluralName = "HasManyParents";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: HasManyParent.NAME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: HasManyParent.IMPLICITCHILDREN,
        isRequired: false,
        ofModelName: (HasManyChildImplicit).toString(),
        associatedKey: HasManyChildImplicit.HASMANYPARENTIMPLICITCHILDRENID));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: HasManyParent.EXPLICITCHILDREN,
        isRequired: false,
        ofModelName: (HasManyChildExplicit).toString(),
        associatedKey: HasManyChildExplicit.HASMANYPARENTID));

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

class _HasManyParentModelType extends ModelType<HasManyParent> {
  const _HasManyParentModelType();

  @override
  HasManyParent fromJson(Map<String, dynamic> jsonData) {
    return HasManyParent.fromJson(jsonData);
  }
}
