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

/** This is an auto generated class representing the HasManyChildBiDirectionalImplicit type in your schema. */
class HasManyChildBiDirectionalImplicit extends amplify_core.Model {
  static const classType = const _HasManyChildBiDirectionalImplicitModelType();
  final String id;
  final String? _name;
  final HasManyParentBiDirectionalImplicit? _hasManyParent;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
    '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.',
  )
  @override
  String getId() => id;

  HasManyChildBiDirectionalImplicitModelIdentifier get modelIdentifier {
    return HasManyChildBiDirectionalImplicitModelIdentifier(id: id);
  }

  String? get name {
    return _name;
  }

  HasManyParentBiDirectionalImplicit? get hasManyParent {
    return _hasManyParent;
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const HasManyChildBiDirectionalImplicit._internal({
    required this.id,
    name,
    hasManyParent,
    createdAt,
    updatedAt,
  }) : _name = name,
       _hasManyParent = hasManyParent,
       _createdAt = createdAt,
       _updatedAt = updatedAt;

  factory HasManyChildBiDirectionalImplicit({
    String? id,
    String? name,
    HasManyParentBiDirectionalImplicit? hasManyParent,
  }) {
    return HasManyChildBiDirectionalImplicit._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      name: name,
      hasManyParent: hasManyParent,
    );
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HasManyChildBiDirectionalImplicit &&
        id == other.id &&
        _name == other._name &&
        _hasManyParent == other._hasManyParent;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("HasManyChildBiDirectionalImplicit {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write(
      "hasManyParent=" +
          (_hasManyParent != null ? _hasManyParent.toString() : "null") +
          ", ",
    );
    buffer.write(
      "createdAt=" + (_createdAt != null ? _createdAt.format() : "null") + ", ",
    );
    buffer.write(
      "updatedAt=" + (_updatedAt != null ? _updatedAt.format() : "null"),
    );
    buffer.write("}");

    return buffer.toString();
  }

  HasManyChildBiDirectionalImplicit copyWith({
    String? name,
    HasManyParentBiDirectionalImplicit? hasManyParent,
  }) {
    return HasManyChildBiDirectionalImplicit._internal(
      id: id,
      name: name ?? this.name,
      hasManyParent: hasManyParent ?? this.hasManyParent,
    );
  }

  HasManyChildBiDirectionalImplicit copyWithModelFieldValues({
    ModelFieldValue<String?>? name,
    ModelFieldValue<HasManyParentBiDirectionalImplicit?>? hasManyParent,
  }) {
    return HasManyChildBiDirectionalImplicit._internal(
      id: id,
      name: name == null ? this.name : name.value,
      hasManyParent: hasManyParent == null
          ? this.hasManyParent
          : hasManyParent.value,
    );
  }

  HasManyChildBiDirectionalImplicit.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      _name = json['name'],
      _hasManyParent = json['hasManyParent'] != null
          ? json['hasManyParent']['serializedData'] != null
                ? HasManyParentBiDirectionalImplicit.fromJson(
                    new Map<String, dynamic>.from(
                      json['hasManyParent']['serializedData'],
                    ),
                  )
                : HasManyParentBiDirectionalImplicit.fromJson(
                    new Map<String, dynamic>.from(json['hasManyParent']),
                  )
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
    'hasManyParent': _hasManyParent?.toJson(),
    'createdAt': _createdAt?.format(),
    'updatedAt': _updatedAt?.format(),
  };

  Map<String, Object?> toMap() => {
    'id': id,
    'name': _name,
    'hasManyParent': _hasManyParent,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
  };

  static final amplify_core.QueryModelIdentifier<
    HasManyChildBiDirectionalImplicitModelIdentifier
  >
  MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<
        HasManyChildBiDirectionalImplicitModelIdentifier
      >();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final HASMANYPARENT = amplify_core.QueryField(
    fieldName: "hasManyParent",
    fieldType: amplify_core.ModelFieldType(
      amplify_core.ModelFieldTypeEnum.model,
      ofModelName: 'HasManyParentBiDirectionalImplicit',
    ),
  );
  static var schema = amplify_core.Model.defineSchema(
    define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
      modelSchemaDefinition.name = "HasManyChildBiDirectionalImplicit";
      modelSchemaDefinition.pluralName = "HasManyChildBiDirectionalImplicits";

      modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.field(
          key: HasManyChildBiDirectionalImplicit.NAME,
          isRequired: false,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string,
          ),
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.belongsTo(
          key: HasManyChildBiDirectionalImplicit.HASMANYPARENT,
          isRequired: false,
          targetNames: [
            'hasManyParentBiDirectionalImplicitBiDirectionalImplicitChildrenId',
          ],
          ofModelName: 'HasManyParentBiDirectionalImplicit',
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

class _HasManyChildBiDirectionalImplicitModelType
    extends amplify_core.ModelType<HasManyChildBiDirectionalImplicit> {
  const _HasManyChildBiDirectionalImplicitModelType();

  @override
  HasManyChildBiDirectionalImplicit fromJson(Map<String, dynamic> jsonData) {
    return HasManyChildBiDirectionalImplicit.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'HasManyChildBiDirectionalImplicit';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [HasManyChildBiDirectionalImplicit] in your schema.
 */
class HasManyChildBiDirectionalImplicitModelIdentifier
    implements amplify_core.ModelIdentifier<HasManyChildBiDirectionalImplicit> {
  final String id;

  /** Create an instance of HasManyChildBiDirectionalImplicitModelIdentifier using [id] the primary key. */
  const HasManyChildBiDirectionalImplicitModelIdentifier({required this.id});

  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{'id': id});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap().entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() =>
      'HasManyChildBiDirectionalImplicitModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is HasManyChildBiDirectionalImplicitModelIdentifier &&
        id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
