// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';

/** This is an auto generated class representing the CPKIntIndexes type in your schema. */
@immutable
class CpkIntIndexes extends Model {
  static const classType = const _CpkIntIndexesModelType();
  final String? _name;
  final int? _fieldA;
  final int? _fieldB;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => modelIdentifier.serializeAsString();

  CpkIntIndexesModelIdentifier get modelIdentifier {
    try {
      return CpkIntIndexesModelIdentifier(
          name: _name!, fieldA: _fieldA!, fieldB: _fieldB!);
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get name {
    try {
      return _name!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  int get fieldA {
    try {
      return _fieldA!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  int get fieldB {
    try {
      return _fieldB!;
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

  const CpkIntIndexes._internal(
      {required name, required fieldA, required fieldB, createdAt, updatedAt})
      : _name = name,
        _fieldA = fieldA,
        _fieldB = fieldB,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory CpkIntIndexes(
      {required String name, required int fieldA, required int fieldB}) {
    return CpkIntIndexes._internal(name: name, fieldA: fieldA, fieldB: fieldB);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkIntIndexes &&
        _name == other._name &&
        _fieldA == other._fieldA &&
        _fieldB == other._fieldB;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("CpkIntIndexes {");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write(
        "fieldA=" + (_fieldA != null ? _fieldA!.toString() : "null") + ", ");
    buffer.write(
        "fieldB=" + (_fieldB != null ? _fieldB!.toString() : "null") + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  CpkIntIndexes copyWith() {
    return CpkIntIndexes._internal(name: name, fieldA: fieldA, fieldB: fieldB);
  }

  CpkIntIndexes.fromJson(Map<String, dynamic> json)
      : _name = json['name'],
        _fieldA = (json['fieldA'] as num?)?.toInt(),
        _fieldB = (json['fieldB'] as num?)?.toInt(),
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'name': _name,
        'fieldA': _fieldA,
        'fieldB': _fieldB,
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  Map<String, Object?> toMap() => {
        'name': _name,
        'fieldA': _fieldA,
        'fieldB': _fieldB,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final QueryModelIdentifier<CpkIntIndexesModelIdentifier>
      MODEL_IDENTIFIER = QueryModelIdentifier<CpkIntIndexesModelIdentifier>();
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField FIELDA = QueryField(fieldName: "fieldA");
  static final QueryField FIELDB = QueryField(fieldName: "fieldB");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkIntIndexes";
    modelSchemaDefinition.pluralName = "CpkIntIndexes";

    modelSchemaDefinition.authRules = [
      AuthRule(
          authStrategy: AuthStrategy.OWNER,
          ownerField: "owner",
          identityClaim: "cognito:username",
          provider: AuthRuleProvider.USERPOOLS,
          operations: [
            ModelOperation.CREATE,
            ModelOperation.UPDATE,
            ModelOperation.DELETE,
            ModelOperation.READ
          ])
    ];

    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["name", "fieldA", "fieldB"], name: null)
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkIntIndexes.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkIntIndexes.FIELDA,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkIntIndexes.FIELDB,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

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

class _CpkIntIndexesModelType extends ModelType<CpkIntIndexes> {
  const _CpkIntIndexesModelType();

  @override
  CpkIntIndexes fromJson(Map<String, dynamic> jsonData) {
    return CpkIntIndexes.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'CpkIntIndexes';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CpkIntIndexes] in your schema.
 */
@immutable
class CpkIntIndexesModelIdentifier implements ModelIdentifier<CpkIntIndexes> {
  final String name;
  final int fieldA;
  final int fieldB;

  /**
   * Create an instance of CpkIntIndexesModelIdentifier using [name] the primary key.
   * And [fieldA], [fieldB] the sort keys.
   */
  const CpkIntIndexesModelIdentifier(
      {required this.name, required this.fieldA, required this.fieldB});

  @override
  Map<String, dynamic> serializeAsMap() =>
      (<String, dynamic>{'name': name, 'fieldA': fieldA, 'fieldB': fieldB});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
      .entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() =>
      'CpkIntIndexesModelIdentifier(name: $name, fieldA: $fieldA, fieldB: $fieldB)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkIntIndexesModelIdentifier &&
        name == other.name &&
        fieldA == other.fieldA &&
        fieldB == other.fieldB;
  }

  @override
  int get hashCode => name.hashCode ^ fieldA.hashCode ^ fieldB.hashCode;
}
