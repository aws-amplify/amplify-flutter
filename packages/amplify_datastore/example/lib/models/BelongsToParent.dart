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

/** This is an auto generated class representing the BelongsToParent type in your schema. */
class BelongsToParent extends amplify_core.Model {
  static const classType = const _BelongsToParentModelType();
  final String id;
  final String? _name;
  final BelongsToChildImplicit? _implicitChild;
  final BelongsToChildExplicit? _explicitChild;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _belongsToParentImplicitChildId;
  final String? _belongsToParentExplicitChildId;

  @override
  getInstanceType() => classType;

  @Deprecated(
    '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.',
  )
  @override
  String getId() => id;

  BelongsToParentModelIdentifier get modelIdentifier {
    return BelongsToParentModelIdentifier(id: id);
  }

  String? get name {
    return _name;
  }

  BelongsToChildImplicit? get implicitChild {
    return _implicitChild;
  }

  BelongsToChildExplicit? get explicitChild {
    return _explicitChild;
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  String? get belongsToParentImplicitChildId {
    return _belongsToParentImplicitChildId;
  }

  String? get belongsToParentExplicitChildId {
    return _belongsToParentExplicitChildId;
  }

  const BelongsToParent._internal({
    required this.id,
    name,
    implicitChild,
    explicitChild,
    createdAt,
    updatedAt,
    belongsToParentImplicitChildId,
    belongsToParentExplicitChildId,
  }) : _name = name,
       _implicitChild = implicitChild,
       _explicitChild = explicitChild,
       _createdAt = createdAt,
       _updatedAt = updatedAt,
       _belongsToParentImplicitChildId = belongsToParentImplicitChildId,
       _belongsToParentExplicitChildId = belongsToParentExplicitChildId;

  factory BelongsToParent({
    String? id,
    String? name,
    BelongsToChildImplicit? implicitChild,
    BelongsToChildExplicit? explicitChild,
    String? belongsToParentImplicitChildId,
    String? belongsToParentExplicitChildId,
  }) {
    return BelongsToParent._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      name: name,
      implicitChild: implicitChild,
      explicitChild: explicitChild,
      belongsToParentImplicitChildId: belongsToParentImplicitChildId,
      belongsToParentExplicitChildId: belongsToParentExplicitChildId,
    );
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BelongsToParent &&
        id == other.id &&
        _name == other._name &&
        _implicitChild == other._implicitChild &&
        _explicitChild == other._explicitChild &&
        _belongsToParentImplicitChildId ==
            other._belongsToParentImplicitChildId &&
        _belongsToParentExplicitChildId ==
            other._belongsToParentExplicitChildId;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("BelongsToParent {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write(
      "createdAt=" + (_createdAt != null ? _createdAt.format() : "null") + ", ",
    );
    buffer.write(
      "updatedAt=" + (_updatedAt != null ? _updatedAt.format() : "null") + ", ",
    );
    buffer.write(
      "belongsToParentImplicitChildId=" +
          "$_belongsToParentImplicitChildId" +
          ", ",
    );
    buffer.write(
      "belongsToParentExplicitChildId=" + "$_belongsToParentExplicitChildId",
    );
    buffer.write("}");

    return buffer.toString();
  }

  BelongsToParent copyWith({
    String? name,
    BelongsToChildImplicit? implicitChild,
    BelongsToChildExplicit? explicitChild,
    String? belongsToParentImplicitChildId,
    String? belongsToParentExplicitChildId,
  }) {
    return BelongsToParent._internal(
      id: id,
      name: name ?? this.name,
      implicitChild: implicitChild ?? this.implicitChild,
      explicitChild: explicitChild ?? this.explicitChild,
      belongsToParentImplicitChildId:
          belongsToParentImplicitChildId ?? this.belongsToParentImplicitChildId,
      belongsToParentExplicitChildId:
          belongsToParentExplicitChildId ?? this.belongsToParentExplicitChildId,
    );
  }

  BelongsToParent copyWithModelFieldValues({
    ModelFieldValue<String?>? name,
    ModelFieldValue<BelongsToChildImplicit?>? implicitChild,
    ModelFieldValue<BelongsToChildExplicit?>? explicitChild,
    ModelFieldValue<String?>? belongsToParentImplicitChildId,
    ModelFieldValue<String?>? belongsToParentExplicitChildId,
  }) {
    return BelongsToParent._internal(
      id: id,
      name: name == null ? this.name : name.value,
      implicitChild: implicitChild == null
          ? this.implicitChild
          : implicitChild.value,
      explicitChild: explicitChild == null
          ? this.explicitChild
          : explicitChild.value,
      belongsToParentImplicitChildId: belongsToParentImplicitChildId == null
          ? this.belongsToParentImplicitChildId
          : belongsToParentImplicitChildId.value,
      belongsToParentExplicitChildId: belongsToParentExplicitChildId == null
          ? this.belongsToParentExplicitChildId
          : belongsToParentExplicitChildId.value,
    );
  }

  BelongsToParent.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      _name = json['name'],
      _implicitChild = json['implicitChild'] != null
          ? json['implicitChild']['serializedData'] != null
                ? BelongsToChildImplicit.fromJson(
                    new Map<String, dynamic>.from(
                      json['implicitChild']['serializedData'],
                    ),
                  )
                : BelongsToChildImplicit.fromJson(
                    new Map<String, dynamic>.from(json['implicitChild']),
                  )
          : null,
      _explicitChild = json['explicitChild'] != null
          ? json['explicitChild']['serializedData'] != null
                ? BelongsToChildExplicit.fromJson(
                    new Map<String, dynamic>.from(
                      json['explicitChild']['serializedData'],
                    ),
                  )
                : BelongsToChildExplicit.fromJson(
                    new Map<String, dynamic>.from(json['explicitChild']),
                  )
          : null,
      _createdAt = json['createdAt'] != null
          ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
          : null,
      _updatedAt = json['updatedAt'] != null
          ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
          : null,
      _belongsToParentImplicitChildId = json['belongsToParentImplicitChildId'],
      _belongsToParentExplicitChildId = json['belongsToParentExplicitChildId'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': _name,
    'implicitChild': _implicitChild?.toJson(),
    'explicitChild': _explicitChild?.toJson(),
    'createdAt': _createdAt?.format(),
    'updatedAt': _updatedAt?.format(),
    'belongsToParentImplicitChildId': _belongsToParentImplicitChildId,
    'belongsToParentExplicitChildId': _belongsToParentExplicitChildId,
  };

  Map<String, Object?> toMap() => {
    'id': id,
    'name': _name,
    'implicitChild': _implicitChild,
    'explicitChild': _explicitChild,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'belongsToParentImplicitChildId': _belongsToParentImplicitChildId,
    'belongsToParentExplicitChildId': _belongsToParentExplicitChildId,
  };

  static final amplify_core.QueryModelIdentifier<BelongsToParentModelIdentifier>
  MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<BelongsToParentModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final IMPLICITCHILD = amplify_core.QueryField(
    fieldName: "implicitChild",
    fieldType: amplify_core.ModelFieldType(
      amplify_core.ModelFieldTypeEnum.model,
      ofModelName: 'BelongsToChildImplicit',
    ),
  );
  static final EXPLICITCHILD = amplify_core.QueryField(
    fieldName: "explicitChild",
    fieldType: amplify_core.ModelFieldType(
      amplify_core.ModelFieldTypeEnum.model,
      ofModelName: 'BelongsToChildExplicit',
    ),
  );
  static final BELONGSTOPARENTIMPLICITCHILDID = amplify_core.QueryField(
    fieldName: "belongsToParentImplicitChildId",
  );
  static final BELONGSTOPARENTEXPLICITCHILDID = amplify_core.QueryField(
    fieldName: "belongsToParentExplicitChildId",
  );
  static var schema = amplify_core.Model.defineSchema(
    define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
      modelSchemaDefinition.name = "BelongsToParent";
      modelSchemaDefinition.pluralName = "BelongsToParents";

      modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.field(
          key: BelongsToParent.NAME,
          isRequired: false,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string,
          ),
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.hasOne(
          key: BelongsToParent.IMPLICITCHILD,
          isRequired: false,
          ofModelName: 'BelongsToChildImplicit',
          associatedKey: BelongsToChildImplicit.BELONGSTOPARENT,
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.hasOne(
          key: BelongsToParent.EXPLICITCHILD,
          isRequired: false,
          ofModelName: 'BelongsToChildExplicit',
          associatedKey: BelongsToChildExplicit.BELONGSTOPARENT,
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

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.field(
          key: BelongsToParent.BELONGSTOPARENTIMPLICITCHILDID,
          isRequired: false,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string,
          ),
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.field(
          key: BelongsToParent.BELONGSTOPARENTEXPLICITCHILDID,
          isRequired: false,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string,
          ),
        ),
      );
    },
  );
}

class _BelongsToParentModelType
    extends amplify_core.ModelType<BelongsToParent> {
  const _BelongsToParentModelType();

  @override
  BelongsToParent fromJson(Map<String, dynamic> jsonData) {
    return BelongsToParent.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'BelongsToParent';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [BelongsToParent] in your schema.
 */
class BelongsToParentModelIdentifier
    implements amplify_core.ModelIdentifier<BelongsToParent> {
  final String id;

  /** Create an instance of BelongsToParentModelIdentifier using [id] the primary key. */
  const BelongsToParentModelIdentifier({required this.id});

  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{'id': id});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap().entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() => 'BelongsToParentModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is BelongsToParentModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
