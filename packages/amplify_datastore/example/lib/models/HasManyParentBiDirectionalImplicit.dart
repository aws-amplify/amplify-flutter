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
import 'package:collection/collection.dart';

/** This is an auto generated class representing the HasManyParentBiDirectionalImplicit type in your schema. */
class HasManyParentBiDirectionalImplicit extends amplify_core.Model {
  static const classType = const _HasManyParentBiDirectionalImplicitModelType();
  final String id;
  final String? _name;
  final List<HasManyChildBiDirectionalImplicit>? _biDirectionalImplicitChildren;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  HasManyParentBiDirectionalImplicitModelIdentifier get modelIdentifier {
    return HasManyParentBiDirectionalImplicitModelIdentifier(id: id);
  }

  String? get name {
    return _name;
  }

  List<HasManyChildBiDirectionalImplicit>? get biDirectionalImplicitChildren {
    return _biDirectionalImplicitChildren;
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const HasManyParentBiDirectionalImplicit._internal(
      {required this.id,
      name,
      biDirectionalImplicitChildren,
      createdAt,
      updatedAt})
      : _name = name,
        _biDirectionalImplicitChildren = biDirectionalImplicitChildren,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory HasManyParentBiDirectionalImplicit(
      {String? id,
      String? name,
      List<HasManyChildBiDirectionalImplicit>? biDirectionalImplicitChildren}) {
    return HasManyParentBiDirectionalImplicit._internal(
        id: id == null ? amplify_core.UUID.getUUID() : id,
        name: name,
        biDirectionalImplicitChildren: biDirectionalImplicitChildren != null
            ? List<HasManyChildBiDirectionalImplicit>.unmodifiable(
                biDirectionalImplicitChildren)
            : biDirectionalImplicitChildren);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasManyParentBiDirectionalImplicit &&
        id == other.id &&
        _name == other._name &&
        DeepCollectionEquality().equals(_biDirectionalImplicitChildren,
            other._biDirectionalImplicitChildren);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("HasManyParentBiDirectionalImplicit {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  HasManyParentBiDirectionalImplicit copyWith(
      {String? name,
      List<HasManyChildBiDirectionalImplicit>? biDirectionalImplicitChildren}) {
    return HasManyParentBiDirectionalImplicit._internal(
        id: id,
        name: name ?? this.name,
        biDirectionalImplicitChildren: biDirectionalImplicitChildren ??
            this.biDirectionalImplicitChildren);
  }

  HasManyParentBiDirectionalImplicit copyWithModelFieldValues(
      {ModelFieldValue<String?>? name,
      ModelFieldValue<List<HasManyChildBiDirectionalImplicit>?>?
          biDirectionalImplicitChildren}) {
    return HasManyParentBiDirectionalImplicit._internal(
        id: id,
        name: name == null ? this.name : name.value,
        biDirectionalImplicitChildren: biDirectionalImplicitChildren == null
            ? this.biDirectionalImplicitChildren
            : biDirectionalImplicitChildren.value);
  }

  HasManyParentBiDirectionalImplicit.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _biDirectionalImplicitChildren =
            json['biDirectionalImplicitChildren'] is List
                ? (json['biDirectionalImplicitChildren'] as List)
                    .where((e) => e?['serializedData'] != null)
                    .map((e) => HasManyChildBiDirectionalImplicit.fromJson(
                        new Map<String, dynamic>.from(e['serializedData'])))
                    .toList()
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
        'biDirectionalImplicitChildren': _biDirectionalImplicitChildren
            ?.map((HasManyChildBiDirectionalImplicit? e) => e?.toJson())
            .toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'name': _name,
        'biDirectionalImplicitChildren': _biDirectionalImplicitChildren,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final amplify_core
      .QueryModelIdentifier<HasManyParentBiDirectionalImplicitModelIdentifier>
      MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<
          HasManyParentBiDirectionalImplicitModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final BIDIRECTIONALIMPLICITCHILDREN = amplify_core.QueryField(
      fieldName: "biDirectionalImplicitChildren",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'HasManyChildBiDirectionalImplicit'));
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "HasManyParentBiDirectionalImplicit";
    modelSchemaDefinition.pluralName = "HasManyParentBiDirectionalImplicits";

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: HasManyParentBiDirectionalImplicit.NAME,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
        key: HasManyParentBiDirectionalImplicit.BIDIRECTIONALIMPLICITCHILDREN,
        isRequired: false,
        ofModelName: 'HasManyChildBiDirectionalImplicit',
        associatedKey: HasManyChildBiDirectionalImplicit.HASMANYPARENT));

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

class _HasManyParentBiDirectionalImplicitModelType
    extends amplify_core.ModelType<HasManyParentBiDirectionalImplicit> {
  const _HasManyParentBiDirectionalImplicitModelType();

  @override
  HasManyParentBiDirectionalImplicit fromJson(Map<String, dynamic> jsonData) {
    return HasManyParentBiDirectionalImplicit.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'HasManyParentBiDirectionalImplicit';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [HasManyParentBiDirectionalImplicit] in your schema.
 */
class HasManyParentBiDirectionalImplicitModelIdentifier
    implements
        amplify_core.ModelIdentifier<HasManyParentBiDirectionalImplicit> {
  final String id;

  /** Create an instance of HasManyParentBiDirectionalImplicitModelIdentifier using [id] the primary key. */
  const HasManyParentBiDirectionalImplicitModelIdentifier({required this.id});

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
  String toString() =>
      'HasManyParentBiDirectionalImplicitModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is HasManyParentBiDirectionalImplicitModelIdentifier &&
        id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
