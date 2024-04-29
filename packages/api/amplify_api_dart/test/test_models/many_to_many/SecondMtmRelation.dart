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

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'MtmModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;

/** This is an auto generated class representing the SecondMtmRelation type in your schema. */
class SecondMtmRelation extends amplify_core.Model {
  static const classType = const _SecondMtmRelationModelType();
  final String id;
  final ManyToManyPrimary? _manyToManyPrimary;
  final ManyToManySecondary? _manyToManySecondary;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  SecondMtmRelationModelIdentifier get modelIdentifier {
    return SecondMtmRelationModelIdentifier(id: id);
  }

  ManyToManyPrimary get manyToManyPrimary {
    try {
      return _manyToManyPrimary!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  ManyToManySecondary get manyToManySecondary {
    try {
      return _manyToManySecondary!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
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
        id: id == null ? amplify_core.UUID.getUUID() : id,
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
      {ManyToManyPrimary? manyToManyPrimary,
      ManyToManySecondary? manyToManySecondary}) {
    return SecondMtmRelation._internal(
        id: id,
        manyToManyPrimary: manyToManyPrimary ?? this.manyToManyPrimary,
        manyToManySecondary: manyToManySecondary ?? this.manyToManySecondary);
  }

  SecondMtmRelation copyWithModelFieldValues(
      {ModelFieldValue<ManyToManyPrimary>? manyToManyPrimary,
      ModelFieldValue<ManyToManySecondary>? manyToManySecondary}) {
    return SecondMtmRelation._internal(
        id: id,
        manyToManyPrimary: manyToManyPrimary == null
            ? this.manyToManyPrimary
            : manyToManyPrimary.value,
        manyToManySecondary: manyToManySecondary == null
            ? this.manyToManySecondary
            : manyToManySecondary.value);
  }

  SecondMtmRelation.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _manyToManyPrimary = json['manyToManyPrimary'] != null
            ? json['manyToManyPrimary']['serializedData'] != null
                ? ManyToManyPrimary.fromJson(new Map<String, dynamic>.from(
                    json['manyToManyPrimary']['serializedData']))
                : ManyToManyPrimary.fromJson(
                    new Map<String, dynamic>.from(json['manyToManyPrimary']))
            : null,
        _manyToManySecondary = json['manyToManySecondary'] != null
            ? json['manyToManySecondary']['serializedData'] != null
                ? ManyToManySecondary.fromJson(new Map<String, dynamic>.from(
                    json['manyToManySecondary']['serializedData']))
                : ManyToManySecondary.fromJson(
                    new Map<String, dynamic>.from(json['manyToManySecondary']))
            : null,
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'manyToManyPrimary': _manyToManyPrimary?.toJson(),
        'manyToManySecondary': _manyToManySecondary?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'manyToManyPrimary': _manyToManyPrimary,
        'manyToManySecondary': _manyToManySecondary,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final amplify_core
      .QueryModelIdentifier<SecondMtmRelationModelIdentifier> MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<SecondMtmRelationModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final MANYTOMANYPRIMARY = amplify_core.QueryField(
      fieldName: "manyToManyPrimary",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'ManyToManyPrimary'));
  static final MANYTOMANYSECONDARY = amplify_core.QueryField(
      fieldName: "manyToManySecondary",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'ManyToManySecondary'));
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "SecondMtmRelation";
    modelSchemaDefinition.pluralName = "SecondMtmRelations";

    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(
          fields: const ["manyToManyPrimaryId"], name: "byManyToManyPrimary"),
      amplify_core.ModelIndex(
          fields: const ["manyToManySecondaryId"],
          name: "byManyToManySecondary")
    ];

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
        key: SecondMtmRelation.MANYTOMANYPRIMARY,
        isRequired: true,
        targetNames: ['manyToManyPrimaryId'],
        ofModelName: 'ManyToManyPrimary'));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
        key: SecondMtmRelation.MANYTOMANYSECONDARY,
        isRequired: true,
        targetNames: ['manyToManySecondaryId'],
        ofModelName: 'ManyToManySecondary'));

    modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.nonQueryField(
            fieldName: 'createdAt',
            isRequired: false,
            isReadOnly: true,
            ofType: amplify_core.ModelFieldType(
                amplify_core.ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.nonQueryField(
            fieldName: 'updatedAt',
            isRequired: false,
            isReadOnly: true,
            ofType: amplify_core.ModelFieldType(
                amplify_core.ModelFieldTypeEnum.dateTime)));
  });
}

class _SecondMtmRelationModelType
    extends amplify_core.ModelType<SecondMtmRelation> {
  const _SecondMtmRelationModelType();

  @override
  SecondMtmRelation fromJson(Map<String, dynamic> jsonData) {
    return SecondMtmRelation.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'SecondMtmRelation';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [SecondMtmRelation] in your schema.
 */
class SecondMtmRelationModelIdentifier
    implements amplify_core.ModelIdentifier<SecondMtmRelation> {
  final String id;

  /** Create an instance of SecondMtmRelationModelIdentifier using [id] the primary key. */
  const SecondMtmRelationModelIdentifier({required this.id});

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
  String toString() => 'SecondMtmRelationModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is SecondMtmRelationModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
