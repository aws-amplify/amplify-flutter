// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';

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

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  HasOneParentModelIdentifier get modelIdentifier {
    return HasOneParentModelIdentifier(id: id);
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
      {String? name,
      HasOneChild? implicitChild,
      String? explicitChildID,
      HasOneChild? explicitChild,
      String? hasOneParentImplicitChildId}) {
    return HasOneParent._internal(
        id: id,
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

  static final QueryModelIdentifier<HasOneParentModelIdentifier>
      MODEL_IDENTIFIER = QueryModelIdentifier<HasOneParentModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
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
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
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

/// This is an auto generated class representing the model identifier
/// of [HasOneParent] in your schema.
@immutable
class HasOneParentModelIdentifier implements ModelIdentifier<HasOneParent> {
  final String id;

  /// Create an instance of HasOneParentModelIdentifier using [id] the primary key.
  const HasOneParentModelIdentifier({required this.id});

  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{'id': id});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
      .entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() => 'HasOneParentModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is HasOneParentModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
