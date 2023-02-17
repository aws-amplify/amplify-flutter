// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/** This is an auto generated class representing the CustomOwnerField type in your schema. */
@immutable
class CustomOwnerField extends Model {
  static const classType = const _CustomOwnerFieldModelType();
  final String id;
  final String? _name;
  final List<String>? _owners;
  final String? _private;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

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
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
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

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
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
        id: id == null ? UUID.getUUID() : id,
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

  CustomOwnerField.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _owners = json['owners']?.cast<String>(),
        _private = json['private'],
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
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

  static final QueryModelIdentifier<CustomOwnerFieldModelIdentifier>
      MODEL_IDENTIFIER =
      QueryModelIdentifier<CustomOwnerFieldModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField OWNERS = QueryField(fieldName: "owners");
  static final QueryField PRIVATE = QueryField(fieldName: "private");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CustomOwnerField";
    modelSchemaDefinition.pluralName = "CustomOwnerFields";

    modelSchemaDefinition.authRules = [
      AuthRule(authStrategy: AuthStrategy.PRIVATE, operations: [
        ModelOperation.CREATE,
        ModelOperation.UPDATE,
        ModelOperation.DELETE,
        ModelOperation.READ
      ]),
      AuthRule(
          authStrategy: AuthStrategy.OWNER,
          ownerField: "owners",
          identityClaim: "cognito:username",
          provider: AuthRuleProvider.USERPOOLS,
          operations: [
            ModelOperation.CREATE,
            ModelOperation.UPDATE,
            ModelOperation.DELETE,
            ModelOperation.READ
          ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CustomOwnerField.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CustomOwnerField.OWNERS,
        isRequired: false,
        isArray: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.collection,
            ofModelName: ModelFieldTypeEnum.string.name)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CustomOwnerField.PRIVATE,
        isRequired: false,
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

class _CustomOwnerFieldModelType extends ModelType<CustomOwnerField> {
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
@immutable
class CustomOwnerFieldModelIdentifier
    implements ModelIdentifier<CustomOwnerField> {
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
