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

/** This is an auto generated class representing the CpkOneToOneBidirectionalChildExplicitID type in your schema. */
class CpkOneToOneBidirectionalChildExplicitID extends amplify_core.Model {
  static const classType =
      const _CpkOneToOneBidirectionalChildExplicitIDModelType();
  final String id;
  final String? _name;
  final CpkOneToOneBidirectionalParentID? _belongsToParent;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  CpkOneToOneBidirectionalChildExplicitIDModelIdentifier get modelIdentifier {
    try {
      return CpkOneToOneBidirectionalChildExplicitIDModelIdentifier(
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

  CpkOneToOneBidirectionalParentID? get belongsToParent {
    return _belongsToParent;
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const CpkOneToOneBidirectionalChildExplicitID._internal(
      {required this.id, required name, belongsToParent, createdAt, updatedAt})
      : _name = name,
        _belongsToParent = belongsToParent,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory CpkOneToOneBidirectionalChildExplicitID(
      {String? id,
      required String name,
      CpkOneToOneBidirectionalParentID? belongsToParent}) {
    return CpkOneToOneBidirectionalChildExplicitID._internal(
        id: id == null ? amplify_core.UUID.getUUID() : id,
        name: name,
        belongsToParent: belongsToParent);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkOneToOneBidirectionalChildExplicitID &&
        id == other.id &&
        _name == other._name &&
        _belongsToParent == other._belongsToParent;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("CpkOneToOneBidirectionalChildExplicitID {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("belongsToParent=" +
        (_belongsToParent != null ? _belongsToParent!.toString() : "null") +
        ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  CpkOneToOneBidirectionalChildExplicitID copyWith(
      {CpkOneToOneBidirectionalParentID? belongsToParent}) {
    return CpkOneToOneBidirectionalChildExplicitID._internal(
        id: id,
        name: name,
        belongsToParent: belongsToParent ?? this.belongsToParent);
  }

  CpkOneToOneBidirectionalChildExplicitID copyWithModelFieldValues(
      {ModelFieldValue<CpkOneToOneBidirectionalParentID?>? belongsToParent}) {
    return CpkOneToOneBidirectionalChildExplicitID._internal(
        id: id,
        name: name,
        belongsToParent: belongsToParent == null
            ? this.belongsToParent
            : belongsToParent.value);
  }

  CpkOneToOneBidirectionalChildExplicitID.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _belongsToParent = json['belongsToParent']?['serializedData'] != null
            ? CpkOneToOneBidirectionalParentID.fromJson(
                new Map<String, dynamic>.from(
                    json['belongsToParent']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'belongsToParent': _belongsToParent?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'name': _name,
        'belongsToParent': _belongsToParent,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final amplify_core.QueryModelIdentifier<
          CpkOneToOneBidirectionalChildExplicitIDModelIdentifier>
      MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<
          CpkOneToOneBidirectionalChildExplicitIDModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final BELONGSTOPARENT = amplify_core.QueryField(
      fieldName: "belongsToParent",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'CpkOneToOneBidirectionalParentID'));
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkOneToOneBidirectionalChildExplicitID";
    modelSchemaDefinition.pluralName =
        "CpkOneToOneBidirectionalChildExplicitIDS";

    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["id", "name"], name: null)
    ];

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CpkOneToOneBidirectionalChildExplicitID.NAME,
        isRequired: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
        key: CpkOneToOneBidirectionalChildExplicitID.BELONGSTOPARENT,
        isRequired: false,
        targetNames: ['belongsToParentID', 'belongsToParentName'],
        ofModelName: 'CpkOneToOneBidirectionalParentID'));

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

class _CpkOneToOneBidirectionalChildExplicitIDModelType
    extends amplify_core.ModelType<CpkOneToOneBidirectionalChildExplicitID> {
  const _CpkOneToOneBidirectionalChildExplicitIDModelType();

  @override
  CpkOneToOneBidirectionalChildExplicitID fromJson(
      Map<String, dynamic> jsonData) {
    return CpkOneToOneBidirectionalChildExplicitID.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'CpkOneToOneBidirectionalChildExplicitID';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CpkOneToOneBidirectionalChildExplicitID] in your schema.
 */
class CpkOneToOneBidirectionalChildExplicitIDModelIdentifier
    implements
        amplify_core.ModelIdentifier<CpkOneToOneBidirectionalChildExplicitID> {
  final String id;
  final String name;

  /**
   * Create an instance of CpkOneToOneBidirectionalChildExplicitIDModelIdentifier using [id] the primary key.
   * And [name] the sort key.
   */
  const CpkOneToOneBidirectionalChildExplicitIDModelIdentifier(
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
      'CpkOneToOneBidirectionalChildExplicitIDModelIdentifier(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkOneToOneBidirectionalChildExplicitIDModelIdentifier &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
