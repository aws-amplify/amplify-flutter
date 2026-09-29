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

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;

/** This is an auto generated class representing the CpkTemporalPrimaryKey type in your schema. */
class CpkTemporalPrimaryKey extends amplify_core.Model {
  static const classType = const _CpkTemporalPrimaryKeyModelType();
  final String? _hwid;
  final amplify_core.TemporalDateTime? _sessionStart;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
    '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.',
  )
  @override
  String getId() => modelIdentifier.serializeAsString();

  CpkTemporalPrimaryKeyModelIdentifier get modelIdentifier {
    try {
      return CpkTemporalPrimaryKeyModelIdentifier(
        hwid: _hwid!,
        sessionStart: _sessionStart!,
      );
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
        amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastExceptionMessage,
        recoverySuggestion: amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastRecoverySuggestion,
        underlyingException: e.toString(),
      );
    }
  }

  String get hwid {
    try {
      return _hwid!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
        amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastExceptionMessage,
        recoverySuggestion: amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastRecoverySuggestion,
        underlyingException: e.toString(),
      );
    }
  }

  amplify_core.TemporalDateTime get sessionStart {
    try {
      return _sessionStart!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
        amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastExceptionMessage,
        recoverySuggestion: amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastRecoverySuggestion,
        underlyingException: e.toString(),
      );
    }
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const CpkTemporalPrimaryKey._internal({
    required hwid,
    required sessionStart,
    createdAt,
    updatedAt,
  }) : _hwid = hwid,
       _sessionStart = sessionStart,
       _createdAt = createdAt,
       _updatedAt = updatedAt;

  factory CpkTemporalPrimaryKey({
    required String hwid,
    required amplify_core.TemporalDateTime sessionStart,
  }) {
    return CpkTemporalPrimaryKey._internal(
      hwid: hwid,
      sessionStart: sessionStart,
    );
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkTemporalPrimaryKey &&
        _hwid == other._hwid &&
        _sessionStart == other._sessionStart;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("CpkTemporalPrimaryKey {");
    buffer.write("hwid=" + "$_hwid" + ", ");
    buffer.write(
      "sessionStart=" +
          (_sessionStart != null ? _sessionStart!.format() : "null") +
          ", ",
    );
    buffer.write(
      "createdAt=" +
          (_createdAt != null ? _createdAt!.format() : "null") +
          ", ",
    );
    buffer.write(
      "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"),
    );
    buffer.write("}");

    return buffer.toString();
  }

  CpkTemporalPrimaryKey copyWith() {
    return CpkTemporalPrimaryKey._internal(
      hwid: hwid,
      sessionStart: sessionStart,
    );
  }

  CpkTemporalPrimaryKey copyWithModelFieldValues() {
    return CpkTemporalPrimaryKey._internal(
      hwid: hwid,
      sessionStart: sessionStart,
    );
  }

  CpkTemporalPrimaryKey.fromJson(Map<String, dynamic> json)
    : _hwid = json['hwid'],
      _sessionStart = json['sessionStart'] != null
          ? amplify_core.TemporalDateTime.fromString(json['sessionStart'])
          : null,
      _createdAt = json['createdAt'] != null
          ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
          : null,
      _updatedAt = json['updatedAt'] != null
          ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
          : null;

  Map<String, dynamic> toJson() => {
    'hwid': _hwid,
    'sessionStart': _sessionStart?.format(),
    'createdAt': _createdAt?.format(),
    'updatedAt': _updatedAt?.format(),
  };

  Map<String, Object?> toMap() => {
    'hwid': _hwid,
    'sessionStart': _sessionStart,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
  };

  static final amplify_core.QueryModelIdentifier<
    CpkTemporalPrimaryKeyModelIdentifier
  >
  MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<CpkTemporalPrimaryKeyModelIdentifier>();
  static final HWID = amplify_core.QueryField(fieldName: "hwid");
  static final SESSIONSTART = amplify_core.QueryField(
    fieldName: "sessionStart",
  );
  static var schema = amplify_core.Model.defineSchema(
    define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
      modelSchemaDefinition.name = "CpkTemporalPrimaryKey";
      modelSchemaDefinition.pluralName = "CpkTemporalPrimaryKeys";

      modelSchemaDefinition.authRules = [
        amplify_core.AuthRule(
          authStrategy: amplify_core.AuthStrategy.PRIVATE,
          operations: const [
            amplify_core.ModelOperation.CREATE,
            amplify_core.ModelOperation.UPDATE,
            amplify_core.ModelOperation.DELETE,
            amplify_core.ModelOperation.READ,
          ],
        ),
      ];

      modelSchemaDefinition.indexes = [
        amplify_core.ModelIndex(
          fields: const ["hwid", "sessionStart"],
          name: null,
        ),
      ];

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.field(
          key: CpkTemporalPrimaryKey.HWID,
          isRequired: true,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string,
          ),
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.field(
          key: CpkTemporalPrimaryKey.SESSIONSTART,
          isRequired: true,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.dateTime,
          ),
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.nonQueryField(
          fieldName: 'createdAt',
          isRequired: false,
          isReadOnly: true,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.dateTime,
          ),
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.nonQueryField(
          fieldName: 'updatedAt',
          isRequired: false,
          isReadOnly: true,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.dateTime,
          ),
        ),
      );
    },
  );
}

class _CpkTemporalPrimaryKeyModelType
    extends amplify_core.ModelType<CpkTemporalPrimaryKey> {
  const _CpkTemporalPrimaryKeyModelType();

  @override
  CpkTemporalPrimaryKey fromJson(Map<String, dynamic> jsonData) {
    return CpkTemporalPrimaryKey.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'CpkTemporalPrimaryKey';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CpkTemporalPrimaryKey] in your schema.
 */
class CpkTemporalPrimaryKeyModelIdentifier
    implements amplify_core.ModelIdentifier<CpkTemporalPrimaryKey> {
  final String hwid;
  final amplify_core.TemporalDateTime sessionStart;

  /**
   * Create an instance of CpkTemporalPrimaryKeyModelIdentifier using [hwid] the primary key.
   * And [sessionStart] the sort key.
   */
  const CpkTemporalPrimaryKeyModelIdentifier({
    required this.hwid,
    required this.sessionStart,
  });

  @override
  Map<String, dynamic> serializeAsMap() =>
      (<String, dynamic>{'hwid': hwid, 'sessionStart': sessionStart});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap().entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() =>
      'CpkTemporalPrimaryKeyModelIdentifier(hwid: $hwid, sessionStart: $sessionStart)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkTemporalPrimaryKeyModelIdentifier &&
        hwid == other.hwid &&
        sessionStart == other.sessionStart;
  }

  @override
  int get hashCode => hwid.hashCode ^ sessionStart.hashCode;
}
