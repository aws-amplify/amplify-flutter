// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';

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

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  BelongsToParentModelIdentifier get modelIdentifier {
    return BelongsToParentModelIdentifier(id: id);
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
      {String? name,
      BelongsToChildImplicit? implicitChild,
      BelongsToChildExplicit? explicitChild,
      String? belongsToParentImplicitChildId,
      String? belongsToParentExplicitChildId}) {
    return BelongsToParent._internal(
        id: id,
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

  static final QueryModelIdentifier<BelongsToParentModelIdentifier>
      MODEL_IDENTIFIER = QueryModelIdentifier<BelongsToParentModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
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
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
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

/// This is an auto generated class representing the model identifier
/// of [BelongsToParent] in your schema.
@immutable
class BelongsToParentModelIdentifier
    implements ModelIdentifier<BelongsToParent> {
  final String id;

  /// Create an instance of BelongsToParentModelIdentifier using [id] the primary key.
  const BelongsToParentModelIdentifier({required this.id});

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
  String toString() => 'BelongsToParentModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is BelongsToParentModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
