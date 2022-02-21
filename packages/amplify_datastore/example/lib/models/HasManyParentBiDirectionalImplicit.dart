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

/// This is an auto generated class representing the HasManyParentBiDirectionalImplicit type in your schema.
@immutable
class HasManyParentBiDirectionalImplicit extends Model {
  static const classType = _HasManyParentBiDirectionalImplicitModelType();
  final String id;
  final String? _name;
  final List<HasManyChildBiDirectionalImplicit>? _biDirectionalImplicitChildren;
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

  List<HasManyChildBiDirectionalImplicit>? get biDirectionalImplicitChildren {
    return _biDirectionalImplicitChildren;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const HasManyParentBiDirectionalImplicit._internal(
      {required this.id,
      name,
      biDirectionalImplicitChildren,
      createdAt,
      updatedAt})
      : _name = name,
        _biDirectionalImplicitChildren = biDirectionalImplicitChildren,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory HasManyParentBiDirectionalImplicit(
      {String? id,
      String? name,
      List<HasManyChildBiDirectionalImplicit>? biDirectionalImplicitChildren}) {
    return HasManyParentBiDirectionalImplicit._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        biDirectionalImplicitChildren: biDirectionalImplicitChildren != null
            ? List<HasManyChildBiDirectionalImplicit>.unmodifiable(
                biDirectionalImplicitChildren)
            : biDirectionalImplicitChildren);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasManyParentBiDirectionalImplicit &&
        id == other.id &&
        _name == other._name &&
        DeepCollectionEquality().equals(_biDirectionalImplicitChildren,
            other._biDirectionalImplicitChildren);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("HasManyParentBiDirectionalImplicit {");
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

  HasManyParentBiDirectionalImplicit copyWith(
      {String? id,
      String? name,
      List<HasManyChildBiDirectionalImplicit>? biDirectionalImplicitChildren}) {
    return HasManyParentBiDirectionalImplicit._internal(
        id: id ?? this.id,
        name: name ?? this.name,
        biDirectionalImplicitChildren: biDirectionalImplicitChildren ??
            this.biDirectionalImplicitChildren);
  }

  HasManyParentBiDirectionalImplicit.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _biDirectionalImplicitChildren =
            json['biDirectionalImplicitChildren'] is List
                ? (json['biDirectionalImplicitChildren'] as List)
                    .where((e) => e?['serializedData'] != null)
                    .map((e) => HasManyChildBiDirectionalImplicit.fromJson(
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
        'biDirectionalImplicitChildren': _biDirectionalImplicitChildren
            ?.map((HasManyChildBiDirectionalImplicit? e) => e?.toJson())
            .toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID =
      QueryField(fieldName: "hasManyParentBiDirectionalImplicit.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField BIDIRECTIONALIMPLICITCHILDREN = QueryField(
      fieldName: "biDirectionalImplicitChildren",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (HasManyChildBiDirectionalImplicit).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "HasManyParentBiDirectionalImplicit";
    modelSchemaDefinition.pluralName = "HasManyParentBiDirectionalImplicits";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: HasManyParentBiDirectionalImplicit.NAME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: HasManyParentBiDirectionalImplicit.BIDIRECTIONALIMPLICITCHILDREN,
        isRequired: false,
        ofModelName: (HasManyChildBiDirectionalImplicit).toString(),
        associatedKey: HasManyChildBiDirectionalImplicit.HASMANYPARENT));

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

class _HasManyParentBiDirectionalImplicitModelType
    extends ModelType<HasManyParentBiDirectionalImplicit> {
  const _HasManyParentBiDirectionalImplicitModelType();

  @override
  HasManyParentBiDirectionalImplicit fromJson(Map<String, dynamic> jsonData) {
    return HasManyParentBiDirectionalImplicit.fromJson(jsonData);
  }
}
