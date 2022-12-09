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

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the CpkHasManyUnidirectionalChildImplicit type in your schema.
@immutable
class CpkHasManyUnidirectionalChildImplicit extends Model {
  static const classType = _CpkHasManyUnidirectionalChildImplicitModelType();
  final String id;
  final String? _name;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
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
      throw AmplifyCodeGenModelException(
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
        id: id == null ? UUID.getUUID() : id,
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
    var buffer = StringBuffer();

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

  CpkHasManyUnidirectionalChildImplicit.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
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

  static final QueryModelIdentifier<
          CpkHasManyUnidirectionalChildImplicitModelIdentifier>
      MODEL_IDENTIFIER = QueryModelIdentifier<
          CpkHasManyUnidirectionalChildImplicitModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField CPKHASMANYUNIDIRECTIONALPARENTIMPLICITCHILDRENID =
      QueryField(fieldName: "cpkHasManyUnidirectionalParentImplicitChildrenId");
  static final QueryField CPKHASMANYUNIDIRECTIONALPARENTIMPLICITCHILDRENNAME =
      QueryField(
          fieldName: "cpkHasManyUnidirectionalParentImplicitChildrenName");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkHasManyUnidirectionalChildImplicit";
    modelSchemaDefinition.pluralName = "CpkHasManyUnidirectionalChildImplicits";

    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["id", "name"], name: null)
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkHasManyUnidirectionalChildImplicit.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

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
        key: CpkHasManyUnidirectionalChildImplicit
            .CPKHASMANYUNIDIRECTIONALPARENTIMPLICITCHILDRENID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkHasManyUnidirectionalChildImplicit
            .CPKHASMANYUNIDIRECTIONALPARENTIMPLICITCHILDRENNAME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _CpkHasManyUnidirectionalChildImplicitModelType
    extends ModelType<CpkHasManyUnidirectionalChildImplicit> {
  const _CpkHasManyUnidirectionalChildImplicitModelType();

  @override
  CpkHasManyUnidirectionalChildImplicit fromJson(
      Map<String, dynamic> jsonData) {
    return CpkHasManyUnidirectionalChildImplicit.fromJson(jsonData);
  }
}

/// This is an auto generated class representing the model identifier
/// of [CpkHasManyUnidirectionalChildImplicit] in your schema.
@immutable
class CpkHasManyUnidirectionalChildImplicitModelIdentifier
    implements ModelIdentifier<CpkHasManyUnidirectionalChildImplicit> {
  final String id;
  final String name;

  /// Create an instance of CpkHasManyUnidirectionalChildImplicitModelIdentifier using [id] the primary key.
  /// And [name] the sort key.
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
