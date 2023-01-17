// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'MtmModelProvider.dart';

/// This is an auto generated class representing the FirstMtmRelation type in your schema.

class FirstMtmRelation extends Model {
  static const classType = _FirstMtmRelationModelType();
  final String id;
  final ManyToManyPrimary? _manyToManyPrimary;
  final ManyToManySecondary? _manyToManySecondary;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  FirstMtmRelationModelIdentifier get modelIdentifier {
    return FirstMtmRelationModelIdentifier(id: id);
  }

  ManyToManyPrimary get manyToManyPrimary {
    try {
      return _manyToManyPrimary!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
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
      throw AmplifyCodeGenModelException(
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

  const FirstMtmRelation._internal(
      {required this.id,
      required manyToManyPrimary,
      required manyToManySecondary,
      createdAt,
      updatedAt})
      : _manyToManyPrimary = manyToManyPrimary,
        _manyToManySecondary = manyToManySecondary,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory FirstMtmRelation(
      {String? id,
      required ManyToManyPrimary manyToManyPrimary,
      required ManyToManySecondary manyToManySecondary}) {
    return FirstMtmRelation._internal(
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
    return other is FirstMtmRelation &&
        id == other.id &&
        _manyToManyPrimary == other._manyToManyPrimary &&
        _manyToManySecondary == other._manyToManySecondary;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("FirstMtmRelation {");
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

  FirstMtmRelation copyWith(
      {ManyToManyPrimary? manyToManyPrimary,
      ManyToManySecondary? manyToManySecondary}) {
    return FirstMtmRelation._internal(
        id: id,
        manyToManyPrimary: manyToManyPrimary ?? this.manyToManyPrimary,
        manyToManySecondary: manyToManySecondary ?? this.manyToManySecondary);
  }

  FirstMtmRelation.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _manyToManyPrimary =
            json['manyToManyPrimary']?['serializedData'] != null
                ? ManyToManyPrimary.fromJson(Map<String, dynamic>.from(
                    json['manyToManyPrimary']['serializedData']))
                : null,
        _manyToManySecondary =
            json['manyToManySecondary']?['serializedData'] != null
                ? ManyToManySecondary.fromJson(Map<String, dynamic>.from(
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

  Map<String, Object?> toMap() => {
        'id': id,
        'manyToManyPrimary': _manyToManyPrimary,
        'manyToManySecondary': _manyToManySecondary,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final QueryModelIdentifier<FirstMtmRelationModelIdentifier>
      MODEL_IDENTIFIER =
      QueryModelIdentifier<FirstMtmRelationModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField MANYTOMANYPRIMARY = QueryField(
      fieldName: "manyToManyPrimary",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: 'ManyToManyPrimary'));
  static final QueryField MANYTOMANYSECONDARY = QueryField(
      fieldName: "manyToManySecondary",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: 'ManyToManySecondary'));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "FirstMtmRelation";
    modelSchemaDefinition.pluralName = "FirstMtmRelations";

    modelSchemaDefinition.indexes = [
      ModelIndex(
          fields: const ["manyToManyPrimaryId"], name: "byManyToManyPrimary"),
      ModelIndex(
          fields: const ["manyToManySecondaryId"],
          name: "byManyToManySecondary")
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: FirstMtmRelation.MANYTOMANYPRIMARY,
        isRequired: true,
        targetNames: ['manyToManyPrimaryId'],
        ofModelName: 'ManyToManyPrimary'));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: FirstMtmRelation.MANYTOMANYSECONDARY,
        isRequired: true,
        targetNames: ['manyToManySecondaryId'],
        ofModelName: 'ManyToManySecondary'));

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

class _FirstMtmRelationModelType extends ModelType<FirstMtmRelation> {
  const _FirstMtmRelationModelType();

  @override
  FirstMtmRelation fromJson(Map<String, dynamic> jsonData) {
    return FirstMtmRelation.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'FirstMtmRelation';
  }
}

/// This is an auto generated class representing the model identifier
/// of [FirstMtmRelation] in your schema.
@immutable
class FirstMtmRelationModelIdentifier
    implements ModelIdentifier<FirstMtmRelation> {
  final String id;

  /// Create an instance of FirstMtmRelationModelIdentifier using [id] the primary key.
  const FirstMtmRelationModelIdentifier({required this.id});

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
  String toString() => 'FirstMtmRelationModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FirstMtmRelationModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
