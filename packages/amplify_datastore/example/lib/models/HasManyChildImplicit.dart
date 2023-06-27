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

/** This is an auto generated class representing the HasManyChildImplicit type in your schema. */
class HasManyChildImplicit extends amplify_core.Model {
  static const classType = const _HasManyChildImplicitModelType();
  final String id;
  final String? _name;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _hasManyParentImplicitChildrenId;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  HasManyChildImplicitModelIdentifier get modelIdentifier {
    return HasManyChildImplicitModelIdentifier(id: id);
  }

  String? get name {
    return _name;
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  String? get hasManyParentImplicitChildrenId {
    return _hasManyParentImplicitChildrenId;
  }

  const HasManyChildImplicit._internal(
      {required this.id,
      name,
      createdAt,
      updatedAt,
      hasManyParentImplicitChildrenId})
      : _name = name,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _hasManyParentImplicitChildrenId = hasManyParentImplicitChildrenId;

  factory HasManyChildImplicit(
      {String? id, String? name, String? hasManyParentImplicitChildrenId}) {
    return HasManyChildImplicit._internal(
        id: id == null ? amplify_core.UUID.getUUID() : id,
        name: name,
        hasManyParentImplicitChildrenId: hasManyParentImplicitChildrenId);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasManyChildImplicit &&
        id == other.id &&
        _name == other._name &&
        _hasManyParentImplicitChildrenId ==
            other._hasManyParentImplicitChildrenId;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("HasManyChildImplicit {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write("updatedAt=" +
        (_updatedAt != null ? _updatedAt!.format() : "null") +
        ", ");
    buffer.write("hasManyParentImplicitChildrenId=" +
        "$_hasManyParentImplicitChildrenId");
    buffer.write("}");

    return buffer.toString();
  }

  HasManyChildImplicit copyWith(
      {String? name, String? hasManyParentImplicitChildrenId}) {
    return HasManyChildImplicit._internal(
        id: id,
        name: name ?? this.name,
        hasManyParentImplicitChildrenId: hasManyParentImplicitChildrenId ??
            this.hasManyParentImplicitChildrenId);
  }

  HasManyChildImplicit copyWithModelFieldValues(
      {ModelFieldValue<String?>? name,
      ModelFieldValue<String?>? hasManyParentImplicitChildrenId}) {
    return HasManyChildImplicit._internal(
        id: id,
        name: name == null ? this.name : name.value,
        hasManyParentImplicitChildrenId: hasManyParentImplicitChildrenId == null
            ? this.hasManyParentImplicitChildrenId
            : hasManyParentImplicitChildrenId.value);
  }

  HasManyChildImplicit.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
            : null,
        _hasManyParentImplicitChildrenId =
            json['hasManyParentImplicitChildrenId'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format(),
        'hasManyParentImplicitChildrenId': _hasManyParentImplicitChildrenId
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'name': _name,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'hasManyParentImplicitChildrenId': _hasManyParentImplicitChildrenId
      };

  static final amplify_core
          .QueryModelIdentifier<HasManyChildImplicitModelIdentifier>
      MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<HasManyChildImplicitModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final HASMANYPARENTIMPLICITCHILDRENID =
      amplify_core.QueryField(fieldName: "hasManyParentImplicitChildrenId");
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "HasManyChildImplicit";
    modelSchemaDefinition.pluralName = "HasManyChildImplicits";

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: HasManyChildImplicit.NAME,
        isRequired: false,
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
        key: HasManyChildImplicit.HASMANYPARENTIMPLICITCHILDRENID,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));
  });
}

class _HasManyChildImplicitModelType
    extends amplify_core.ModelType<HasManyChildImplicit> {
  const _HasManyChildImplicitModelType();

  @override
  HasManyChildImplicit fromJson(Map<String, dynamic> jsonData) {
    return HasManyChildImplicit.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'HasManyChildImplicit';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [HasManyChildImplicit] in your schema.
 */
class HasManyChildImplicitModelIdentifier
    implements amplify_core.ModelIdentifier<HasManyChildImplicit> {
  final String id;

  /** Create an instance of HasManyChildImplicitModelIdentifier using [id] the primary key. */
  const HasManyChildImplicitModelIdentifier({required this.id});

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
  String toString() => 'HasManyChildImplicitModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is HasManyChildImplicitModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
