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

/// This is an auto generated class representing the CpkHasManyUnidirectionalChildExplicit type in your schema.
@immutable
class CpkHasManyUnidirectionalChildExplicit extends Model {
  static const classType = _CpkHasManyUnidirectionalChildExplicitModelType();
  final String id;
  final String? _name;
  final String? _hasManyParentID;
  final String? _hasManyParentName;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  CpkHasManyUnidirectionalChildExplicitModelIdentifier get modelIdentifier {
    try {
      return CpkHasManyUnidirectionalChildExplicitModelIdentifier(
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

  String get hasManyParentID {
    try {
      return _hasManyParentID!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get hasManyParentName {
    try {
      return _hasManyParentName!;
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

  const CpkHasManyUnidirectionalChildExplicit._internal(
      {required this.id,
      required name,
      required hasManyParentID,
      required hasManyParentName,
      createdAt,
      updatedAt})
      : _name = name,
        _hasManyParentID = hasManyParentID,
        _hasManyParentName = hasManyParentName,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory CpkHasManyUnidirectionalChildExplicit(
      {String? id,
      required String name,
      required String hasManyParentID,
      required String hasManyParentName}) {
    return CpkHasManyUnidirectionalChildExplicit._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        hasManyParentID: hasManyParentID,
        hasManyParentName: hasManyParentName);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkHasManyUnidirectionalChildExplicit &&
        id == other.id &&
        _name == other._name &&
        _hasManyParentID == other._hasManyParentID &&
        _hasManyParentName == other._hasManyParentName;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("CpkHasManyUnidirectionalChildExplicit {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("hasManyParentID=" + "$_hasManyParentID" + ", ");
    buffer.write("hasManyParentName=" + "$_hasManyParentName" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  CpkHasManyUnidirectionalChildExplicit copyWith(
      {String? hasManyParentID, String? hasManyParentName}) {
    return CpkHasManyUnidirectionalChildExplicit._internal(
        id: id,
        name: name,
        hasManyParentID: hasManyParentID ?? this.hasManyParentID,
        hasManyParentName: hasManyParentName ?? this.hasManyParentName);
  }

  CpkHasManyUnidirectionalChildExplicit.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _hasManyParentID = json['hasManyParentID'],
        _hasManyParentName = json['hasManyParentName'],
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'hasManyParentID': _hasManyParentID,
        'hasManyParentName': _hasManyParentName,
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryModelIdentifier<
          CpkHasManyUnidirectionalChildExplicitModelIdentifier>
      MODEL_IDENTIFIER = QueryModelIdentifier<
          CpkHasManyUnidirectionalChildExplicitModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField HASMANYPARENTID =
      QueryField(fieldName: "hasManyParentID");
  static final QueryField HASMANYPARENTNAME =
      QueryField(fieldName: "hasManyParentName");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkHasManyUnidirectionalChildExplicit";
    modelSchemaDefinition.pluralName = "CpkHasManyUnidirectionalChildExplicits";

    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["id", "name"], name: null),
      ModelIndex(
          fields: const ["hasManyParentID", "hasManyParentName"],
          name: "byHasManyParentCpk")
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkHasManyUnidirectionalChildExplicit.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkHasManyUnidirectionalChildExplicit.HASMANYPARENTID,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkHasManyUnidirectionalChildExplicit.HASMANYPARENTNAME,
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
  });
}

class _CpkHasManyUnidirectionalChildExplicitModelType
    extends ModelType<CpkHasManyUnidirectionalChildExplicit> {
  const _CpkHasManyUnidirectionalChildExplicitModelType();

  @override
  CpkHasManyUnidirectionalChildExplicit fromJson(
      Map<String, dynamic> jsonData) {
    return CpkHasManyUnidirectionalChildExplicit.fromJson(jsonData);
  }
}

/// This is an auto generated class representing the model identifier
/// of [CpkHasManyUnidirectionalChildExplicit] in your schema.
@immutable
class CpkHasManyUnidirectionalChildExplicitModelIdentifier
    implements ModelIdentifier<CpkHasManyUnidirectionalChildExplicit> {
  final String id;
  final String name;

  /// Create an instance of CpkHasManyUnidirectionalChildExplicitModelIdentifier using [id] the primary key.
  /// And [name] the sort key.
  const CpkHasManyUnidirectionalChildExplicitModelIdentifier(
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
      'CpkHasManyUnidirectionalChildExplicitModelIdentifier(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkHasManyUnidirectionalChildExplicitModelIdentifier &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
