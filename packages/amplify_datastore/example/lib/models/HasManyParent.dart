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
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the HasManyParent type in your schema.
@immutable
class HasManyParent extends Model {
  static const classType = _HasManyParentModelType();
  final String id;
  final String? _name;
  final List<HasManyChildImplicit>? _implicitChildren;
  final List<HasManyChildExplicit>? _explicitChildren;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  HasManyParentModelIdentifier get modelIdentifier {
    return HasManyParentModelIdentifier(id: id);
  }

  String? get name {
    return _name;
  }

  List<HasManyChildImplicit>? get implicitChildren {
    return _implicitChildren;
  }

  List<HasManyChildExplicit>? get explicitChildren {
    return _explicitChildren;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const HasManyParent._internal(
      {required this.id,
      name,
      implicitChildren,
      explicitChildren,
      createdAt,
      updatedAt})
      : _name = name,
        _implicitChildren = implicitChildren,
        _explicitChildren = explicitChildren,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory HasManyParent(
      {String? id,
      String? name,
      List<HasManyChildImplicit>? implicitChildren,
      List<HasManyChildExplicit>? explicitChildren}) {
    return HasManyParent._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        implicitChildren: implicitChildren != null
            ? List<HasManyChildImplicit>.unmodifiable(implicitChildren)
            : implicitChildren,
        explicitChildren: explicitChildren != null
            ? List<HasManyChildExplicit>.unmodifiable(explicitChildren)
            : explicitChildren);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasManyParent &&
        id == other.id &&
        _name == other._name &&
        DeepCollectionEquality()
            .equals(_implicitChildren, other._implicitChildren) &&
        DeepCollectionEquality()
            .equals(_explicitChildren, other._explicitChildren);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("HasManyParent {");
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

  HasManyParent copyWith(
      {String? name,
      List<HasManyChildImplicit>? implicitChildren,
      List<HasManyChildExplicit>? explicitChildren}) {
    return HasManyParent._internal(
        id: id,
        name: name ?? this.name,
        implicitChildren: implicitChildren ?? this.implicitChildren,
        explicitChildren: explicitChildren ?? this.explicitChildren);
  }

  HasManyParent.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _implicitChildren = json['implicitChildren'] is List
            ? (json['implicitChildren'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => HasManyChildImplicit.fromJson(
                    Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null,
        _explicitChildren = json['explicitChildren'] is List
            ? (json['explicitChildren'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => HasManyChildExplicit.fromJson(
                    Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null,
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'implicitChildren': _implicitChildren
            ?.map((HasManyChildImplicit? e) => e?.toJson())
            .toList(),
        'explicitChildren': _explicitChildren
            ?.map((HasManyChildExplicit? e) => e?.toJson())
            .toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryModelIdentifier<HasManyParentModelIdentifier>
      MODEL_IDENTIFIER = QueryModelIdentifier<HasManyParentModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField IMPLICITCHILDREN = QueryField(
      fieldName: "implicitChildren",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (HasManyChildImplicit).toString()));
  static final QueryField EXPLICITCHILDREN = QueryField(
      fieldName: "explicitChildren",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (HasManyChildExplicit).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "HasManyParent";
    modelSchemaDefinition.pluralName = "HasManyParents";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: HasManyParent.NAME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: HasManyParent.IMPLICITCHILDREN,
        isRequired: false,
        ofModelName: (HasManyChildImplicit).toString(),
        associatedKey: HasManyChildImplicit.HASMANYPARENTIMPLICITCHILDRENID));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: HasManyParent.EXPLICITCHILDREN,
        isRequired: false,
        ofModelName: (HasManyChildExplicit).toString(),
        associatedKey: HasManyChildExplicit.HASMANYPARENTID));

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

class _HasManyParentModelType extends ModelType<HasManyParent> {
  const _HasManyParentModelType();

  @override
  HasManyParent fromJson(Map<String, dynamic> jsonData) {
    return HasManyParent.fromJson(jsonData);
  }
}

/// This is an auto generated class representing the model identifier
/// of [HasManyParent] in your schema.
@immutable
class HasManyParentModelIdentifier implements ModelIdentifier<HasManyParent> {
  final String id;

  /// Create an instance of HasManyParentModelIdentifier using [id] the primary key.
  const HasManyParentModelIdentifier({required this.id});

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
  String toString() => 'HasManyParentModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is HasManyParentModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
