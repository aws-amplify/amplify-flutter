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

/// This is an auto generated class representing the BelongsToParent type in your schema.
@immutable
class BelongsToParent extends Model {
  static const classType = _BelongsToParentModelType();
  final String id;
  final String? _name;
  final BelongsToChildImplicit? _implicitChild;
  final BelongsToChildExplicit? _explicitChild;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _belongsToParentImplicitChildId;
  final String? _belongsToParentExplicitChildId;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  String? get name {
    return _name;
  }

  BelongsToChildImplicit? get implicitChild {
    return _implicitChild;
  }

  BelongsToChildExplicit? get explicitChild {
    return _explicitChild;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  String? get belongsToParentImplicitChildId {
    return _belongsToParentImplicitChildId;
  }

  String? get belongsToParentExplicitChildId {
    return _belongsToParentExplicitChildId;
  }

  const BelongsToParent._internal(
      {required this.id,
      name,
      implicitChild,
      explicitChild,
      createdAt,
      updatedAt,
      belongsToParentImplicitChildId,
      belongsToParentExplicitChildId})
      : _name = name,
        _implicitChild = implicitChild,
        _explicitChild = explicitChild,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _belongsToParentImplicitChildId = belongsToParentImplicitChildId,
        _belongsToParentExplicitChildId = belongsToParentExplicitChildId;

  factory BelongsToParent(
      {String? id,
      String? name,
      BelongsToChildImplicit? implicitChild,
      BelongsToChildExplicit? explicitChild,
      String? belongsToParentImplicitChildId,
      String? belongsToParentExplicitChildId}) {
    return BelongsToParent._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        implicitChild: implicitChild,
        explicitChild: explicitChild,
        belongsToParentImplicitChildId: belongsToParentImplicitChildId,
        belongsToParentExplicitChildId: belongsToParentExplicitChildId);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BelongsToParent &&
        id == other.id &&
        _name == other._name &&
        _implicitChild == other._implicitChild &&
        _explicitChild == other._explicitChild &&
        _belongsToParentImplicitChildId ==
            other._belongsToParentImplicitChildId &&
        _belongsToParentExplicitChildId ==
            other._belongsToParentExplicitChildId;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("BelongsToParent {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write("updatedAt=" +
        (_updatedAt != null ? _updatedAt!.format() : "null") +
        ", ");
    buffer.write("belongsToParentImplicitChildId=" +
        "$_belongsToParentImplicitChildId" +
        ", ");
    buffer.write(
        "belongsToParentExplicitChildId=" + "$_belongsToParentExplicitChildId");
    buffer.write("}");

    return buffer.toString();
  }

  BelongsToParent copyWith(
      {String? id,
      String? name,
      BelongsToChildImplicit? implicitChild,
      BelongsToChildExplicit? explicitChild,
      String? belongsToParentImplicitChildId,
      String? belongsToParentExplicitChildId}) {
    return BelongsToParent._internal(
        id: id ?? this.id,
        name: name ?? this.name,
        implicitChild: implicitChild ?? this.implicitChild,
        explicitChild: explicitChild ?? this.explicitChild,
        belongsToParentImplicitChildId: belongsToParentImplicitChildId ??
            this.belongsToParentImplicitChildId,
        belongsToParentExplicitChildId: belongsToParentExplicitChildId ??
            this.belongsToParentExplicitChildId);
  }

  BelongsToParent.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _implicitChild = json['implicitChild']?['serializedData'] != null
            ? BelongsToChildImplicit.fromJson(Map<String, dynamic>.from(
                json['implicitChild']['serializedData']))
            : null,
        _explicitChild = json['explicitChild']?['serializedData'] != null
            ? BelongsToChildExplicit.fromJson(Map<String, dynamic>.from(
                json['explicitChild']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null,
        _belongsToParentImplicitChildId =
            json['belongsToParentImplicitChildId'],
        _belongsToParentExplicitChildId =
            json['belongsToParentExplicitChildId'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'implicitChild': _implicitChild?.toJson(),
        'explicitChild': _explicitChild?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format(),
        'belongsToParentImplicitChildId': _belongsToParentImplicitChildId,
        'belongsToParentExplicitChildId': _belongsToParentExplicitChildId
      };

  static final QueryField ID = QueryField(fieldName: "belongsToParent.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField IMPLICITCHILD = QueryField(
      fieldName: "implicitChild",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (BelongsToChildImplicit).toString()));
  static final QueryField EXPLICITCHILD = QueryField(
      fieldName: "explicitChild",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (BelongsToChildExplicit).toString()));
  static final QueryField BELONGSTOPARENTIMPLICITCHILDID =
      QueryField(fieldName: "belongsToParentImplicitChildId");
  static final QueryField BELONGSTOPARENTEXPLICITCHILDID =
      QueryField(fieldName: "belongsToParentExplicitChildId");
  static var schema = Model.defineSchema(
      define: (ModelTypeDefinitionBuilder modelSchemaDefinition) {
    modelSchemaDefinition.name = "BelongsToParent";
    modelSchemaDefinition.pluralName = "BelongsToParents";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: BelongsToParent.NAME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
        key: BelongsToParent.IMPLICITCHILD,
        isRequired: false,
        ofModelName: (BelongsToChildImplicit).toString(),
        associatedKey: BelongsToChildImplicit.BELONGSTOPARENT));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
        key: BelongsToParent.EXPLICITCHILD,
        isRequired: false,
        ofModelName: (BelongsToChildExplicit).toString(),
        associatedKey: BelongsToChildExplicit.BELONGSTOPARENT));

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
        key: BelongsToParent.BELONGSTOPARENTIMPLICITCHILDID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: BelongsToParent.BELONGSTOPARENTEXPLICITCHILDID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _BelongsToParentModelType extends ModelType<BelongsToParent> {
  const _BelongsToParentModelType();

  @override
  BelongsToParent fromJson(Map<String, dynamic> jsonData) {
    return BelongsToParent.fromJson(jsonData);
  }
}
