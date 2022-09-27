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

/// This is an auto generated class representing the HasOneParent type in your schema.
@immutable
class HasOneParent extends Model {
  static const classType = _HasOneParentModelType();
  final String id;
  final String? _name;
  final HasOneChild? _implicitChild;
  final String? _explicitChildID;
  final HasOneChild? _explicitChild;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _hasOneParentImplicitChildId;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  String? get name {
    return _name;
  }

  HasOneChild? get implicitChild {
    return _implicitChild;
  }

  String? get explicitChildID {
    return _explicitChildID;
  }

  HasOneChild? get explicitChild {
    return _explicitChild;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  String? get hasOneParentImplicitChildId {
    return _hasOneParentImplicitChildId;
  }

  const HasOneParent._internal(
      {required this.id,
      name,
      implicitChild,
      explicitChildID,
      explicitChild,
      createdAt,
      updatedAt,
      hasOneParentImplicitChildId})
      : _name = name,
        _implicitChild = implicitChild,
        _explicitChildID = explicitChildID,
        _explicitChild = explicitChild,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _hasOneParentImplicitChildId = hasOneParentImplicitChildId;

  factory HasOneParent(
      {String? id,
      String? name,
      HasOneChild? implicitChild,
      String? explicitChildID,
      HasOneChild? explicitChild,
      String? hasOneParentImplicitChildId}) {
    return HasOneParent._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        implicitChild: implicitChild,
        explicitChildID: explicitChildID,
        explicitChild: explicitChild,
        hasOneParentImplicitChildId: hasOneParentImplicitChildId);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasOneParent &&
        id == other.id &&
        _name == other._name &&
        _implicitChild == other._implicitChild &&
        _explicitChildID == other._explicitChildID &&
        _explicitChild == other._explicitChild &&
        _hasOneParentImplicitChildId == other._hasOneParentImplicitChildId;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("HasOneParent {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("explicitChildID=" + "$_explicitChildID" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write("updatedAt=" +
        (_updatedAt != null ? _updatedAt!.format() : "null") +
        ", ");
    buffer.write(
        "hasOneParentImplicitChildId=" + "$_hasOneParentImplicitChildId");
    buffer.write("}");

    return buffer.toString();
  }

  HasOneParent copyWith(
      {String? id,
      String? name,
      HasOneChild? implicitChild,
      String? explicitChildID,
      HasOneChild? explicitChild,
      String? hasOneParentImplicitChildId}) {
    return HasOneParent._internal(
        id: id ?? this.id,
        name: name ?? this.name,
        implicitChild: implicitChild ?? this.implicitChild,
        explicitChildID: explicitChildID ?? this.explicitChildID,
        explicitChild: explicitChild ?? this.explicitChild,
        hasOneParentImplicitChildId:
            hasOneParentImplicitChildId ?? this.hasOneParentImplicitChildId);
  }

  HasOneParent.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _implicitChild = json['implicitChild']?['serializedData'] != null
            ? HasOneChild.fromJson(Map<String, dynamic>.from(
                json['implicitChild']['serializedData']))
            : null,
        _explicitChildID = json['explicitChildID'],
        _explicitChild = json['explicitChild']?['serializedData'] != null
            ? HasOneChild.fromJson(Map<String, dynamic>.from(
                json['explicitChild']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null,
        _hasOneParentImplicitChildId = json['hasOneParentImplicitChildId'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'implicitChild': _implicitChild?.toJson(),
        'explicitChildID': _explicitChildID,
        'explicitChild': _explicitChild?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format(),
        'hasOneParentImplicitChildId': _hasOneParentImplicitChildId
      };

  static final QueryField ID = QueryField(fieldName: "hasOneParent.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField IMPLICITCHILD = QueryField(
      fieldName: "implicitChild",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (HasOneChild).toString()));
  static final QueryField EXPLICITCHILDID =
      QueryField(fieldName: "explicitChildID");
  static final QueryField EXPLICITCHILD = QueryField(
      fieldName: "explicitChild",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (HasOneChild).toString()));
  static final QueryField HASONEPARENTIMPLICITCHILDID =
      QueryField(fieldName: "hasOneParentImplicitChildId");
  static var schema = Model.defineSchema(
      define: (ModelTypeDefinitionBuilder modelSchemaDefinition) {
    modelSchemaDefinition.name = "HasOneParent";
    modelSchemaDefinition.pluralName = "HasOneParents";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: HasOneParent.NAME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
        key: HasOneParent.IMPLICITCHILD,
        isRequired: false,
        ofModelName: (HasOneChild).toString(),
        associatedKey: HasOneChild.ID));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: HasOneParent.EXPLICITCHILDID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
        key: HasOneParent.EXPLICITCHILD,
        isRequired: false,
        ofModelName: (HasOneChild).toString(),
        associatedKey: HasOneChild.ID));

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
        key: HasOneParent.HASONEPARENTIMPLICITCHILDID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _HasOneParentModelType extends ModelType<HasOneParent> {
  const _HasOneParentModelType();

  @override
  HasOneParent fromJson(Map<String, dynamic> jsonData) {
    return HasOneParent.fromJson(jsonData);
  }
}
