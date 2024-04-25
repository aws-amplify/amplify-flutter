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

/** This is an auto generated class representing the CustomOwnerField type in your schema. */
class CustomOwnerField extends amplify_core.Model {
  static const classType = const _CustomOwnerFieldModelType();
  final String id;
  final String? _name;
  final List<String>? _owners;
  final String? _private;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  CustomOwnerFieldModelIdentifier get modelIdentifier {
    return CustomOwnerFieldModelIdentifier(id: id);
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

  List<String>? get owners {
    return _owners;
  }

  String? get private {
    return _private;
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const CustomOwnerField._internal(
      {required this.id, required name, owners, private, createdAt, updatedAt})
      : _name = name,
        _owners = owners,
        _private = private,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory CustomOwnerField(
      {String? id,
      required String name,
      List<String>? owners,
      String? private}) {
    return CustomOwnerField._internal(
        id: id == null ? amplify_core.UUID.getUUID() : id,
        name: name,
        owners: owners != null ? List<String>.unmodifiable(owners) : owners,
        private: private);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomOwnerField &&
        id == other.id &&
        _name == other._name &&
        DeepCollectionEquality().equals(_owners, other._owners) &&
        _private == other._private;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("CustomOwnerField {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write(
        "owners=" + (_owners != null ? _owners!.toString() : "null") + ", ");
    buffer.write("private=" + "$_private" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  CustomOwnerField copyWith(
      {String? name, List<String>? owners, String? private}) {
    return CustomOwnerField._internal(
        id: id,
        name: name ?? this.name,
        owners: owners ?? this.owners,
        private: private ?? this.private);
  }

  CustomOwnerField copyWithModelFieldValues(
      {ModelFieldValue<String>? name,
      ModelFieldValue<List<String>?>? owners,
      ModelFieldValue<String?>? private}) {
    return CustomOwnerField._internal(
        id: id,
        name: name == null ? this.name : name.value,
        owners: owners == null ? this.owners : owners.value,
        private: private == null ? this.private : private.value);
  }

  CustomOwnerField.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _owners = json['owners']?.cast<String>(),
        _private = json['private'],
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'owners': _owners,
        'private': _private,
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'name': _name,
        'owners': _owners,
        'private': _private,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final amplify_core
      .QueryModelIdentifier<CustomOwnerFieldModelIdentifier> MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<CustomOwnerFieldModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final OWNERS = amplify_core.QueryField(fieldName: "owners");
  static final PRIVATE = amplify_core.QueryField(fieldName: "private");
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CustomOwnerField";
    modelSchemaDefinition.pluralName = "CustomOwnerFields";

    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
          authStrategy: amplify_core.AuthStrategy.PRIVATE,
          operations: const [
            amplify_core.ModelOperation.CREATE,
            amplify_core.ModelOperation.UPDATE,
            amplify_core.ModelOperation.DELETE,
            amplify_core.ModelOperation.READ
          ]),
      amplify_core.AuthRule(
          authStrategy: amplify_core.AuthStrategy.OWNER,
          ownerField: "owners",
          identityClaim: "cognito:username",
          provider: amplify_core.AuthRuleProvider.USERPOOLS,
          operations: const [
            amplify_core.ModelOperation.CREATE,
            amplify_core.ModelOperation.UPDATE,
            amplify_core.ModelOperation.DELETE,
            amplify_core.ModelOperation.READ
          ])
    ];

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CustomOwnerField.NAME,
        isRequired: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CustomOwnerField.OWNERS,
        isRequired: false,
        isArray: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.collection,
            ofModelName: amplify_core.ModelFieldTypeEnum.string.name)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CustomOwnerField.PRIVATE,
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
  });
}

class _CustomOwnerFieldModelType
    extends amplify_core.ModelType<CustomOwnerField> {
  const _CustomOwnerFieldModelType();

  @override
  CustomOwnerField fromJson(Map<String, dynamic> jsonData) {
    return CustomOwnerField.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'CustomOwnerField';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CustomOwnerField] in your schema.
 */
class CustomOwnerFieldModelIdentifier
    implements amplify_core.ModelIdentifier<CustomOwnerField> {
  final String id;

  /** Create an instance of CustomOwnerFieldModelIdentifier using [id] the primary key. */
  const CustomOwnerFieldModelIdentifier({required this.id});

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
  String toString() => 'CustomOwnerFieldModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CustomOwnerFieldModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
