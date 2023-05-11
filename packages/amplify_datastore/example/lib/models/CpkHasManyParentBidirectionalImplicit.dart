// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';

/// This is an auto generated class representing the CpkHasManyParentBidirectionalImplicit type in your schema.
@immutable
class CpkHasManyParentBidirectionalImplicit extends Model {
  static const classType = _CpkHasManyParentBidirectionalImplicitModelType();
  final String id;
  final String? _name;
  final List<CpkHasManyChildBidirectionalImplicit>?
      _bidirectionalImplicitChildren;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  CpkHasManyParentBidirectionalImplicitModelIdentifier get modelIdentifier {
    try {
      return CpkHasManyParentBidirectionalImplicitModelIdentifier(
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

  List<CpkHasManyChildBidirectionalImplicit>?
      get bidirectionalImplicitChildren {
    return _bidirectionalImplicitChildren;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const CpkHasManyParentBidirectionalImplicit._internal(
      {required this.id,
      required name,
      bidirectionalImplicitChildren,
      createdAt,
      updatedAt})
      : _name = name,
        _bidirectionalImplicitChildren = bidirectionalImplicitChildren,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory CpkHasManyParentBidirectionalImplicit(
      {String? id,
      required String name,
      List<CpkHasManyChildBidirectionalImplicit>?
          bidirectionalImplicitChildren}) {
    return CpkHasManyParentBidirectionalImplicit._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        bidirectionalImplicitChildren: bidirectionalImplicitChildren != null
            ? List<CpkHasManyChildBidirectionalImplicit>.unmodifiable(
                bidirectionalImplicitChildren)
            : bidirectionalImplicitChildren);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkHasManyParentBidirectionalImplicit &&
        id == other.id &&
        _name == other._name &&
        DeepCollectionEquality().equals(_bidirectionalImplicitChildren,
            other._bidirectionalImplicitChildren);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("CpkHasManyParentBidirectionalImplicit {");
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

  CpkHasManyParentBidirectionalImplicit copyWith(
      {List<CpkHasManyChildBidirectionalImplicit>?
          bidirectionalImplicitChildren}) {
    return CpkHasManyParentBidirectionalImplicit._internal(
        id: id,
        name: name,
        bidirectionalImplicitChildren: bidirectionalImplicitChildren ??
            this.bidirectionalImplicitChildren);
  }

  CpkHasManyParentBidirectionalImplicit.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _bidirectionalImplicitChildren =
            json['bidirectionalImplicitChildren'] is List
                ? (json['bidirectionalImplicitChildren'] as List)
                    .where((e) => e?['serializedData'] != null)
                    .map((e) => CpkHasManyChildBidirectionalImplicit.fromJson(
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
        'bidirectionalImplicitChildren': _bidirectionalImplicitChildren
            ?.map((CpkHasManyChildBidirectionalImplicit? e) => e?.toJson())
            .toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'name': _name,
        'bidirectionalImplicitChildren': _bidirectionalImplicitChildren,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final QueryModelIdentifier<
          CpkHasManyParentBidirectionalImplicitModelIdentifier>
      MODEL_IDENTIFIER = QueryModelIdentifier<
          CpkHasManyParentBidirectionalImplicitModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField BIDIRECTIONALIMPLICITCHILDREN = QueryField(
      fieldName: "bidirectionalImplicitChildren",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (CpkHasManyChildBidirectionalImplicit).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkHasManyParentBidirectionalImplicit";
    modelSchemaDefinition.pluralName = "CpkHasManyParentBidirectionalImplicits";

    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["id", "name"], name: null)
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkHasManyParentBidirectionalImplicit.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key:
            CpkHasManyParentBidirectionalImplicit.BIDIRECTIONALIMPLICITCHILDREN,
        isRequired: false,
        ofModelName: (CpkHasManyChildBidirectionalImplicit).toString(),
        associatedKey: CpkHasManyChildBidirectionalImplicit.HASMANYPARENT));

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

class _CpkHasManyParentBidirectionalImplicitModelType
    extends ModelType<CpkHasManyParentBidirectionalImplicit> {
  const _CpkHasManyParentBidirectionalImplicitModelType();

  @override
  CpkHasManyParentBidirectionalImplicit fromJson(
      Map<String, dynamic> jsonData) {
    return CpkHasManyParentBidirectionalImplicit.fromJson(jsonData);
  }
}

/// This is an auto generated class representing the model identifier
/// of [CpkHasManyParentBidirectionalImplicit] in your schema.
@immutable
class CpkHasManyParentBidirectionalImplicitModelIdentifier
    implements ModelIdentifier<CpkHasManyParentBidirectionalImplicit> {
  final String id;
  final String name;

  /// Create an instance of CpkHasManyParentBidirectionalImplicitModelIdentifier using [id] the primary key.
  /// And [name] the sort key.
  const CpkHasManyParentBidirectionalImplicitModelIdentifier(
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
      'CpkHasManyParentBidirectionalImplicitModelIdentifier(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkHasManyParentBidirectionalImplicitModelIdentifier &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
