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

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;

/** This is an auto generated class representing the CpkHasManyUnidirectionalChildImplicit type in your schema. */
class CpkHasManyUnidirectionalChildImplicit extends amplify_core.Model {
  static const classType =
      const _CpkHasManyUnidirectionalChildImplicitModelType();
  final String id;
  final String? _name;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _cpkHasManyUnidirectionalParentImplicitChildrenId;
  final String? _cpkHasManyUnidirectionalParentImplicitChildrenName;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  CpkHasManyUnidirectionalChildImplicitModelIdentifier get modelIdentifier {
    try {
      return CpkHasManyUnidirectionalChildImplicitModelIdentifier(
          id: id, name: _name!);
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get name {
    try {
      return _name!;
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

  String? get cpkHasManyUnidirectionalParentImplicitChildrenId {
    return _cpkHasManyUnidirectionalParentImplicitChildrenId;
  }

  String? get cpkHasManyUnidirectionalParentImplicitChildrenName {
    return _cpkHasManyUnidirectionalParentImplicitChildrenName;
  }

  const CpkHasManyUnidirectionalChildImplicit._internal(
      {required this.id,
      required name,
      createdAt,
      updatedAt,
      cpkHasManyUnidirectionalParentImplicitChildrenId,
      cpkHasManyUnidirectionalParentImplicitChildrenName})
      : _name = name,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _cpkHasManyUnidirectionalParentImplicitChildrenId =
            cpkHasManyUnidirectionalParentImplicitChildrenId,
        _cpkHasManyUnidirectionalParentImplicitChildrenName =
            cpkHasManyUnidirectionalParentImplicitChildrenName;

  factory CpkHasManyUnidirectionalChildImplicit(
      {String? id,
      required String name,
      String? cpkHasManyUnidirectionalParentImplicitChildrenId,
      String? cpkHasManyUnidirectionalParentImplicitChildrenName}) {
    return CpkHasManyUnidirectionalChildImplicit._internal(
        id: id == null ? amplify_core.UUID.getUUID() : id,
        name: name,
        cpkHasManyUnidirectionalParentImplicitChildrenId:
            cpkHasManyUnidirectionalParentImplicitChildrenId,
        cpkHasManyUnidirectionalParentImplicitChildrenName:
            cpkHasManyUnidirectionalParentImplicitChildrenName);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkHasManyUnidirectionalChildImplicit &&
        id == other.id &&
        _name == other._name &&
        _cpkHasManyUnidirectionalParentImplicitChildrenId ==
            other._cpkHasManyUnidirectionalParentImplicitChildrenId &&
        _cpkHasManyUnidirectionalParentImplicitChildrenName ==
            other._cpkHasManyUnidirectionalParentImplicitChildrenName;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("CpkHasManyUnidirectionalChildImplicit {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write("updatedAt=" +
        (_updatedAt != null ? _updatedAt!.format() : "null") +
        ", ");
    buffer.write("cpkHasManyUnidirectionalParentImplicitChildrenId=" +
        "$_cpkHasManyUnidirectionalParentImplicitChildrenId" +
        ", ");
    buffer.write("cpkHasManyUnidirectionalParentImplicitChildrenName=" +
        "$_cpkHasManyUnidirectionalParentImplicitChildrenName");
    buffer.write("}");

    return buffer.toString();
  }

  CpkHasManyUnidirectionalChildImplicit copyWith(
      {String? cpkHasManyUnidirectionalParentImplicitChildrenId,
      String? cpkHasManyUnidirectionalParentImplicitChildrenName}) {
    return CpkHasManyUnidirectionalChildImplicit._internal(
        id: id,
        name: name,
        cpkHasManyUnidirectionalParentImplicitChildrenId:
            cpkHasManyUnidirectionalParentImplicitChildrenId ??
                this.cpkHasManyUnidirectionalParentImplicitChildrenId,
        cpkHasManyUnidirectionalParentImplicitChildrenName:
            cpkHasManyUnidirectionalParentImplicitChildrenName ??
                this.cpkHasManyUnidirectionalParentImplicitChildrenName);
  }

  CpkHasManyUnidirectionalChildImplicit copyWithModelFieldValues(
      {ModelFieldValue<String?>?
          cpkHasManyUnidirectionalParentImplicitChildrenId,
      ModelFieldValue<String?>?
          cpkHasManyUnidirectionalParentImplicitChildrenName}) {
    return CpkHasManyUnidirectionalChildImplicit._internal(
        id: id,
        name: name,
        cpkHasManyUnidirectionalParentImplicitChildrenId:
            cpkHasManyUnidirectionalParentImplicitChildrenId == null
                ? this.cpkHasManyUnidirectionalParentImplicitChildrenId
                : cpkHasManyUnidirectionalParentImplicitChildrenId.value,
        cpkHasManyUnidirectionalParentImplicitChildrenName:
            cpkHasManyUnidirectionalParentImplicitChildrenName == null
                ? this.cpkHasManyUnidirectionalParentImplicitChildrenName
                : cpkHasManyUnidirectionalParentImplicitChildrenName.value);
  }

  CpkHasManyUnidirectionalChildImplicit.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
            : null,
        _cpkHasManyUnidirectionalParentImplicitChildrenId =
            json['cpkHasManyUnidirectionalParentImplicitChildrenId'],
        _cpkHasManyUnidirectionalParentImplicitChildrenName =
            json['cpkHasManyUnidirectionalParentImplicitChildrenName'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format(),
        'cpkHasManyUnidirectionalParentImplicitChildrenId':
            _cpkHasManyUnidirectionalParentImplicitChildrenId,
        'cpkHasManyUnidirectionalParentImplicitChildrenName':
            _cpkHasManyUnidirectionalParentImplicitChildrenName
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'name': _name,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'cpkHasManyUnidirectionalParentImplicitChildrenId':
            _cpkHasManyUnidirectionalParentImplicitChildrenId,
        'cpkHasManyUnidirectionalParentImplicitChildrenName':
            _cpkHasManyUnidirectionalParentImplicitChildrenName
      };

  static final amplify_core.QueryModelIdentifier<
          CpkHasManyUnidirectionalChildImplicitModelIdentifier>
      MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<
          CpkHasManyUnidirectionalChildImplicitModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final CPKHASMANYUNIDIRECTIONALPARENTIMPLICITCHILDRENID =
      amplify_core.QueryField(
          fieldName: "cpkHasManyUnidirectionalParentImplicitChildrenId");
  static final CPKHASMANYUNIDIRECTIONALPARENTIMPLICITCHILDRENNAME =
      amplify_core.QueryField(
          fieldName: "cpkHasManyUnidirectionalParentImplicitChildrenName");
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkHasManyUnidirectionalChildImplicit";
    modelSchemaDefinition.pluralName = "CpkHasManyUnidirectionalChildImplicits";

    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["id", "name"], name: null)
    ];

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CpkHasManyUnidirectionalChildImplicit.NAME,
        isRequired: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

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

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CpkHasManyUnidirectionalChildImplicit
            .CPKHASMANYUNIDIRECTIONALPARENTIMPLICITCHILDRENID,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CpkHasManyUnidirectionalChildImplicit
            .CPKHASMANYUNIDIRECTIONALPARENTIMPLICITCHILDRENNAME,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));
  });
}

class _CpkHasManyUnidirectionalChildImplicitModelType
    extends amplify_core.ModelType<CpkHasManyUnidirectionalChildImplicit> {
  const _CpkHasManyUnidirectionalChildImplicitModelType();

  @override
  CpkHasManyUnidirectionalChildImplicit fromJson(
      Map<String, dynamic> jsonData) {
    return CpkHasManyUnidirectionalChildImplicit.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'CpkHasManyUnidirectionalChildImplicit';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CpkHasManyUnidirectionalChildImplicit] in your schema.
 */
class CpkHasManyUnidirectionalChildImplicitModelIdentifier
    implements
        amplify_core.ModelIdentifier<CpkHasManyUnidirectionalChildImplicit> {
  final String id;
  final String name;

  /**
   * Create an instance of CpkHasManyUnidirectionalChildImplicitModelIdentifier using [id] the primary key.
   * And [name] the sort key.
   */
  const CpkHasManyUnidirectionalChildImplicitModelIdentifier(
      {required this.id, required this.name});

  @override
  Map<String, dynamic> serializeAsMap() =>
      (<String, dynamic>{'id': id, 'name': name});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
      .entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() =>
      'CpkHasManyUnidirectionalChildImplicitModelIdentifier(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkHasManyUnidirectionalChildImplicitModelIdentifier &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
