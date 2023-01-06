// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'MtmModelProvider.dart';

/** This is an auto generated class representing the SecondMtmRelation type in your schema. */
@immutable
class SecondMtmRelation extends Model {
  static const classType = const _SecondMtmRelationModelType();
  final String id;
  final ManyToManyPrimary? _manyToManyPrimary;
  final ManyToManySecondary? _manyToManySecondary;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  ManyToManyPrimary get manyToManyPrimary {
    try {
      return _manyToManyPrimary!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  ManyToManySecondary get manyToManySecondary {
    try {
      return _manyToManySecondary!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
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

  const SecondMtmRelation._internal(
      {required this.id,
      required manyToManyPrimary,
      required manyToManySecondary,
      createdAt,
      updatedAt})
      : _manyToManyPrimary = manyToManyPrimary,
        _manyToManySecondary = manyToManySecondary,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory SecondMtmRelation(
      {String? id,
      required ManyToManyPrimary manyToManyPrimary,
      required ManyToManySecondary manyToManySecondary}) {
    return SecondMtmRelation._internal(
        id: id == null ? UUID.getUUID() : id,
        manyToManyPrimary: manyToManyPrimary,
        manyToManySecondary: manyToManySecondary);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SecondMtmRelation &&
        id == other.id &&
        _manyToManyPrimary == other._manyToManyPrimary &&
        _manyToManySecondary == other._manyToManySecondary;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("SecondMtmRelation {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("manyToManyPrimary=" +
        (_manyToManyPrimary != null ? _manyToManyPrimary!.toString() : "null") +
        ", ");
    buffer.write("manyToManySecondary=" +
        (_manyToManySecondary != null
            ? _manyToManySecondary!.toString()
            : "null") +
        ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  SecondMtmRelation copyWith(
      {String? id,
      ManyToManyPrimary? manyToManyPrimary,
      ManyToManySecondary? manyToManySecondary}) {
    return SecondMtmRelation._internal(
        id: id ?? this.id,
        manyToManyPrimary: manyToManyPrimary ?? this.manyToManyPrimary,
        manyToManySecondary: manyToManySecondary ?? this.manyToManySecondary);
  }

  SecondMtmRelation.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _manyToManyPrimary =
            json['manyToManyPrimary']?['serializedData'] != null
                ? ManyToManyPrimary.fromJson(new Map<String, dynamic>.from(
                    json['manyToManyPrimary']['serializedData']))
                : null,
        _manyToManySecondary =
            json['manyToManySecondary']?['serializedData'] != null
                ? ManyToManySecondary.fromJson(new Map<String, dynamic>.from(
                    json['manyToManySecondary']['serializedData']))
                : null,
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'manyToManyPrimary': _manyToManyPrimary?.toJson(),
        'manyToManySecondary': _manyToManySecondary?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField MANYTOMANYPRIMARY = QueryField(
      fieldName: "manyToManyPrimary",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (ManyToManyPrimary).toString()));
  static final QueryField MANYTOMANYSECONDARY = QueryField(
      fieldName: "manyToManySecondary",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (ManyToManySecondary).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "SecondMtmRelation";
    modelSchemaDefinition.pluralName = "SecondMtmRelations";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: SecondMtmRelation.MANYTOMANYPRIMARY,
        isRequired: true,
        targetName: "manyToManyPrimaryID",
        ofModelName: (ManyToManyPrimary).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: SecondMtmRelation.MANYTOMANYSECONDARY,
        isRequired: true,
        targetName: "manyToManySecondaryID",
        ofModelName: (ManyToManySecondary).toString()));

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

class _SecondMtmRelationModelType extends ModelType<SecondMtmRelation> {
  const _SecondMtmRelationModelType();

  @override
  SecondMtmRelation fromJson(Map<String, dynamic> jsonData) {
    return SecondMtmRelation.fromJson(jsonData);
  }
}
