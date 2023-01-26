// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';

/// This is an auto generated class representing the CpkHasManyChildBidirectionalExplicit type in your schema.
@immutable
class CpkHasManyChildBidirectionalExplicit extends Model {
  static const classType = _CpkHasManyChildBidirectionalExplicitModelType();
  final String id;
  final String? _name;
  final CpkHasManyParentBidirectionalExplicit? _hasManyParent;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  CpkHasManyChildBidirectionalExplicitModelIdentifier get modelIdentifier {
    try {
      return CpkHasManyChildBidirectionalExplicitModelIdentifier(
          id: id, name: _name!);
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get name {
    try {
      return _name!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  CpkHasManyParentBidirectionalExplicit? get hasManyParent {
    return _hasManyParent;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const CpkHasManyChildBidirectionalExplicit._internal(
      {required this.id, required name, hasManyParent, createdAt, updatedAt})
      : _name = name,
        _hasManyParent = hasManyParent,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory CpkHasManyChildBidirectionalExplicit(
      {String? id,
      required String name,
      CpkHasManyParentBidirectionalExplicit? hasManyParent}) {
    return CpkHasManyChildBidirectionalExplicit._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        hasManyParent: hasManyParent);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkHasManyChildBidirectionalExplicit &&
        id == other.id &&
        _name == other._name &&
        _hasManyParent == other._hasManyParent;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("CpkHasManyChildBidirectionalExplicit {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("hasManyParent=" +
        (_hasManyParent != null ? _hasManyParent!.toString() : "null") +
        ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  CpkHasManyChildBidirectionalExplicit copyWith(
      {CpkHasManyParentBidirectionalExplicit? hasManyParent}) {
    return CpkHasManyChildBidirectionalExplicit._internal(
        id: id, name: name, hasManyParent: hasManyParent ?? this.hasManyParent);
  }

  CpkHasManyChildBidirectionalExplicit.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _hasManyParent = json['hasManyParent']?['serializedData'] != null
            ? CpkHasManyParentBidirectionalExplicit.fromJson(
                Map<String, dynamic>.from(
                    json['hasManyParent']['serializedData']))
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
        'hasManyParent': _hasManyParent?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryModelIdentifier<
          CpkHasManyChildBidirectionalExplicitModelIdentifier>
      MODEL_IDENTIFIER = QueryModelIdentifier<
          CpkHasManyChildBidirectionalExplicitModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField HASMANYPARENT = QueryField(
      fieldName: "hasManyParent",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (CpkHasManyParentBidirectionalExplicit).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkHasManyChildBidirectionalExplicit";
    modelSchemaDefinition.pluralName = "CpkHasManyChildBidirectionalExplicits";

    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["id", "name"], name: null),
      ModelIndex(
          fields: const ["hasManyParentID", "hasManyParentName"],
          name: "byHasManyParent")
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkHasManyChildBidirectionalExplicit.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: CpkHasManyChildBidirectionalExplicit.HASMANYPARENT,
        isRequired: false,
        targetNames: ["hasManyParentID", "hasManyParentName"],
        ofModelName: (CpkHasManyParentBidirectionalExplicit).toString()));

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

class _CpkHasManyChildBidirectionalExplicitModelType
    extends ModelType<CpkHasManyChildBidirectionalExplicit> {
  const _CpkHasManyChildBidirectionalExplicitModelType();

  @override
  CpkHasManyChildBidirectionalExplicit fromJson(Map<String, dynamic> jsonData) {
    return CpkHasManyChildBidirectionalExplicit.fromJson(jsonData);
  }
}

/// This is an auto generated class representing the model identifier
/// of [CpkHasManyChildBidirectionalExplicit] in your schema.
@immutable
class CpkHasManyChildBidirectionalExplicitModelIdentifier
    implements ModelIdentifier<CpkHasManyChildBidirectionalExplicit> {
  final String id;
  final String name;

  /// Create an instance of CpkHasManyChildBidirectionalExplicitModelIdentifier using [id] the primary key.
  /// And [name] the sort key.
  const CpkHasManyChildBidirectionalExplicitModelIdentifier(
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
      'CpkHasManyChildBidirectionalExplicitModelIdentifier(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkHasManyChildBidirectionalExplicitModelIdentifier &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
