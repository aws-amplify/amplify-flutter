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
import 'package:collection/collection.dart';

/** This is an auto generated class representing the HasManyParent type in your schema. */
class HasManyParent extends amplify_core.Model {
  static const classType = const _HasManyParentModelType();
  final String id;
  final String? _name;
  final List<HasManyChildImplicit>? _implicitChildren;
  final List<HasManyChildExplicit>? _explicitChildren;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
    '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.',
  )
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

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const HasManyParent._internal({
    required this.id,
    name,
    implicitChildren,
    explicitChildren,
    createdAt,
    updatedAt,
  }) : _name = name,
       _implicitChildren = implicitChildren,
       _explicitChildren = explicitChildren,
       _createdAt = createdAt,
       _updatedAt = updatedAt;

  factory HasManyParent({
    String? id,
    String? name,
    List<HasManyChildImplicit>? implicitChildren,
    List<HasManyChildExplicit>? explicitChildren,
  }) {
    return HasManyParent._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      name: name,
      implicitChildren: implicitChildren != null
          ? List<HasManyChildImplicit>.unmodifiable(implicitChildren)
          : implicitChildren,
      explicitChildren: explicitChildren != null
          ? List<HasManyChildExplicit>.unmodifiable(explicitChildren)
          : explicitChildren,
    );
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
        DeepCollectionEquality().equals(
          _implicitChildren,
          other._implicitChildren,
        ) &&
        DeepCollectionEquality().equals(
          _explicitChildren,
          other._explicitChildren,
        );
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("HasManyParent {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write(
      "createdAt=" + (_createdAt != null ? _createdAt.format() : "null") + ", ",
    );
    buffer.write(
      "updatedAt=" + (_updatedAt != null ? _updatedAt.format() : "null"),
    );
    buffer.write("}");

    return buffer.toString();
  }

  HasManyParent copyWith({
    String? name,
    List<HasManyChildImplicit>? implicitChildren,
    List<HasManyChildExplicit>? explicitChildren,
  }) {
    return HasManyParent._internal(
      id: id,
      name: name ?? this.name,
      implicitChildren: implicitChildren ?? this.implicitChildren,
      explicitChildren: explicitChildren ?? this.explicitChildren,
    );
  }

  HasManyParent copyWithModelFieldValues({
    ModelFieldValue<String?>? name,
    ModelFieldValue<List<HasManyChildImplicit>?>? implicitChildren,
    ModelFieldValue<List<HasManyChildExplicit>?>? explicitChildren,
  }) {
    return HasManyParent._internal(
      id: id,
      name: name == null ? this.name : name.value,
      implicitChildren: implicitChildren == null
          ? this.implicitChildren
          : implicitChildren.value,
      explicitChildren: explicitChildren == null
          ? this.explicitChildren
          : explicitChildren.value,
    );
  }

  HasManyParent.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      _name = json['name'],
      _implicitChildren = json['implicitChildren'] is Map
          ? (json['implicitChildren']['items'] is List
                ? (json['implicitChildren']['items'] as List)
                      .where((e) => e != null)
                      .map(
                        (e) => HasManyChildImplicit.fromJson(
                          new Map<String, dynamic>.from(e),
                        ),
                      )
                      .toList()
                : null)
          : (json['implicitChildren'] is List
                ? (json['implicitChildren'] as List)
                      .where((e) => e?['serializedData'] != null)
                      .map(
                        (e) => HasManyChildImplicit.fromJson(
                          new Map<String, dynamic>.from(e?['serializedData']),
                        ),
                      )
                      .toList()
                : null),
      _explicitChildren = json['explicitChildren'] is Map
          ? (json['explicitChildren']['items'] is List
                ? (json['explicitChildren']['items'] as List)
                      .where((e) => e != null)
                      .map(
                        (e) => HasManyChildExplicit.fromJson(
                          new Map<String, dynamic>.from(e),
                        ),
                      )
                      .toList()
                : null)
          : (json['explicitChildren'] is List
                ? (json['explicitChildren'] as List)
                      .where((e) => e?['serializedData'] != null)
                      .map(
                        (e) => HasManyChildExplicit.fromJson(
                          new Map<String, dynamic>.from(e?['serializedData']),
                        ),
                      )
                      .toList()
                : null),
      _createdAt = json['createdAt'] != null
          ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
          : null,
      _updatedAt = json['updatedAt'] != null
          ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
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
    'updatedAt': _updatedAt?.format(),
  };

  Map<String, Object?> toMap() => {
    'id': id,
    'name': _name,
    'implicitChildren': _implicitChildren,
    'explicitChildren': _explicitChildren,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
  };

  static final amplify_core.QueryModelIdentifier<HasManyParentModelIdentifier>
  MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<HasManyParentModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final IMPLICITCHILDREN = amplify_core.QueryField(
    fieldName: "implicitChildren",
    fieldType: amplify_core.ModelFieldType(
      amplify_core.ModelFieldTypeEnum.model,
      ofModelName: 'HasManyChildImplicit',
    ),
  );
  static final EXPLICITCHILDREN = amplify_core.QueryField(
    fieldName: "explicitChildren",
    fieldType: amplify_core.ModelFieldType(
      amplify_core.ModelFieldTypeEnum.model,
      ofModelName: 'HasManyChildExplicit',
    ),
  );
  static var schema = amplify_core.Model.defineSchema(
    define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
      modelSchemaDefinition.name = "HasManyParent";
      modelSchemaDefinition.pluralName = "HasManyParents";

      modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.field(
          key: HasManyParent.NAME,
          isRequired: false,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string,
          ),
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.hasMany(
          key: HasManyParent.IMPLICITCHILDREN,
          isRequired: false,
          ofModelName: 'HasManyChildImplicit',
          associatedKey: HasManyChildImplicit.HASMANYPARENTIMPLICITCHILDRENID,
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.hasMany(
          key: HasManyParent.EXPLICITCHILDREN,
          isRequired: false,
          ofModelName: 'HasManyChildExplicit',
          associatedKey: HasManyChildExplicit.HASMANYPARENTID,
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

class _HasManyParentModelType extends amplify_core.ModelType<HasManyParent> {
  const _HasManyParentModelType();

  @override
  HasManyParent fromJson(Map<String, dynamic> jsonData) {
    return HasManyParent.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'HasManyParent';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [HasManyParent] in your schema.
 */
class HasManyParentModelIdentifier
    implements amplify_core.ModelIdentifier<HasManyParent> {
  final String id;

  /** Create an instance of HasManyParentModelIdentifier using [id] the primary key. */
  const HasManyParentModelIdentifier({required this.id});

  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{'id': id});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap().entries
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
