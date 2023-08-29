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

/** This is an auto generated class representing the HasManyChildExplicit type in your schema. */
class HasManyChildExplicit extends amplify_core.Model {
  static const classType = const _HasManyChildExplicitModelType();
  final String id;
  final String? _name;
  final String? _hasManyParentID;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  HasManyChildExplicitModelIdentifier get modelIdentifier {
    return HasManyChildExplicitModelIdentifier(id: id);
  }

  String? get name {
    return _name;
  }

  String get hasManyParentID {
    try {
      return _hasManyParentID!;
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

  const HasManyChildExplicit._internal(
      {required this.id, name, required hasManyParentID, createdAt, updatedAt})
      : _name = name,
        _hasManyParentID = hasManyParentID,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory HasManyChildExplicit(
      {String? id, String? name, required String hasManyParentID}) {
    return HasManyChildExplicit._internal(
        id: id == null ? amplify_core.UUID.getUUID() : id,
        name: name,
        hasManyParentID: hasManyParentID);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasManyChildExplicit &&
        id == other.id &&
        _name == other._name &&
        _hasManyParentID == other._hasManyParentID;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("HasManyChildExplicit {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("hasManyParentID=" + "$_hasManyParentID" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  HasManyChildExplicit copyWith({String? name, String? hasManyParentID}) {
    return HasManyChildExplicit._internal(
        id: id,
        name: name ?? this.name,
        hasManyParentID: hasManyParentID ?? this.hasManyParentID);
  }

  HasManyChildExplicit copyWithModelFieldValues(
      {ModelFieldValue<String?>? name,
      ModelFieldValue<String>? hasManyParentID}) {
    return HasManyChildExplicit._internal(
        id: id,
        name: name == null ? this.name : name.value,
        hasManyParentID: hasManyParentID == null
            ? this.hasManyParentID
            : hasManyParentID.value);
  }

  HasManyChildExplicit.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _hasManyParentID = json['hasManyParentID'],
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'hasManyParentID': _hasManyParentID,
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'name': _name,
        'hasManyParentID': _hasManyParentID,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final amplify_core
      .QueryModelIdentifier<HasManyChildExplicitModelIdentifier>
      MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<HasManyChildExplicitModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final HASMANYPARENTID =
      amplify_core.QueryField(fieldName: "hasManyParentID");
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "HasManyChildExplicit";
    modelSchemaDefinition.pluralName = "HasManyChildExplicits";

    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(
          fields: const ["hasManyParentID", "name"], name: "byHasManyParent")
    ];

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: HasManyChildExplicit.NAME,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: HasManyChildExplicit.HASMANYPARENTID,
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
  });
}

class _HasManyChildExplicitModelType
    extends amplify_core.ModelType<HasManyChildExplicit> {
  const _HasManyChildExplicitModelType();

  @override
  HasManyChildExplicit fromJson(Map<String, dynamic> jsonData) {
    return HasManyChildExplicit.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'HasManyChildExplicit';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [HasManyChildExplicit] in your schema.
 */
class HasManyChildExplicitModelIdentifier
    implements amplify_core.ModelIdentifier<HasManyChildExplicit> {
  final String id;

  /** Create an instance of HasManyChildExplicitModelIdentifier using [id] the primary key. */
  const HasManyChildExplicitModelIdentifier({required this.id});

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
  String toString() => 'HasManyChildExplicitModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is HasManyChildExplicitModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
