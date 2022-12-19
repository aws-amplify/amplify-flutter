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

/// This is an auto generated class representing the CpkHasManyParentBidirectionalExplicit type in your schema.
@immutable
class CpkHasManyParentBidirectionalExplicit extends Model {
  static const classType = _CpkHasManyParentBidirectionalExplicitModelType();
  final String id;
  final String? _name;
  final List<CpkHasManyChildBidirectionalExplicit>?
      _bidirectionalExplicitChildren;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  CpkHasManyParentBidirectionalExplicitModelIdentifier get modelIdentifier {
    try {
      return CpkHasManyParentBidirectionalExplicitModelIdentifier(
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

  List<CpkHasManyChildBidirectionalExplicit>?
      get bidirectionalExplicitChildren {
    return _bidirectionalExplicitChildren;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const CpkHasManyParentBidirectionalExplicit._internal(
      {required this.id,
      required name,
      bidirectionalExplicitChildren,
      createdAt,
      updatedAt})
      : _name = name,
        _bidirectionalExplicitChildren = bidirectionalExplicitChildren,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory CpkHasManyParentBidirectionalExplicit(
      {String? id,
      required String name,
      List<CpkHasManyChildBidirectionalExplicit>?
          bidirectionalExplicitChildren}) {
    return CpkHasManyParentBidirectionalExplicit._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        bidirectionalExplicitChildren: bidirectionalExplicitChildren != null
            ? List<CpkHasManyChildBidirectionalExplicit>.unmodifiable(
                bidirectionalExplicitChildren)
            : bidirectionalExplicitChildren);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkHasManyParentBidirectionalExplicit &&
        id == other.id &&
        _name == other._name &&
        DeepCollectionEquality().equals(_bidirectionalExplicitChildren,
            other._bidirectionalExplicitChildren);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("CpkHasManyParentBidirectionalExplicit {");
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

  CpkHasManyParentBidirectionalExplicit copyWith(
      {List<CpkHasManyChildBidirectionalExplicit>?
          bidirectionalExplicitChildren}) {
    return CpkHasManyParentBidirectionalExplicit._internal(
        id: id,
        name: name,
        bidirectionalExplicitChildren: bidirectionalExplicitChildren ??
            this.bidirectionalExplicitChildren);
  }

  CpkHasManyParentBidirectionalExplicit.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _bidirectionalExplicitChildren =
            json['bidirectionalExplicitChildren'] is List
                ? (json['bidirectionalExplicitChildren'] as List)
                    .where((e) => e?['serializedData'] != null)
                    .map((e) => CpkHasManyChildBidirectionalExplicit.fromJson(
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
        'bidirectionalExplicitChildren': _bidirectionalExplicitChildren
            ?.map((CpkHasManyChildBidirectionalExplicit? e) => e?.toJson())
            .toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryModelIdentifier<
          CpkHasManyParentBidirectionalExplicitModelIdentifier>
      MODEL_IDENTIFIER = QueryModelIdentifier<
          CpkHasManyParentBidirectionalExplicitModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField BIDIRECTIONALEXPLICITCHILDREN = QueryField(
      fieldName: "bidirectionalExplicitChildren",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (CpkHasManyChildBidirectionalExplicit).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkHasManyParentBidirectionalExplicit";
    modelSchemaDefinition.pluralName = "CpkHasManyParentBidirectionalExplicits";

    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["id", "name"], name: null)
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkHasManyParentBidirectionalExplicit.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key:
            CpkHasManyParentBidirectionalExplicit.BIDIRECTIONALEXPLICITCHILDREN,
        isRequired: false,
        ofModelName: (CpkHasManyChildBidirectionalExplicit).toString(),
        associatedKey: CpkHasManyChildBidirectionalExplicit.HASMANYPARENT));

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

class _CpkHasManyParentBidirectionalExplicitModelType
    extends ModelType<CpkHasManyParentBidirectionalExplicit> {
  const _CpkHasManyParentBidirectionalExplicitModelType();

  @override
  CpkHasManyParentBidirectionalExplicit fromJson(
      Map<String, dynamic> jsonData) {
    return CpkHasManyParentBidirectionalExplicit.fromJson(jsonData);
  }
}

/// This is an auto generated class representing the model identifier
/// of [CpkHasManyParentBidirectionalExplicit] in your schema.
@immutable
class CpkHasManyParentBidirectionalExplicitModelIdentifier
    implements ModelIdentifier<CpkHasManyParentBidirectionalExplicit> {
  final String id;
  final String name;

  /// Create an instance of CpkHasManyParentBidirectionalExplicitModelIdentifier using [id] the primary key.
  /// And [name] the sort key.
  const CpkHasManyParentBidirectionalExplicitModelIdentifier(
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
      'CpkHasManyParentBidirectionalExplicitModelIdentifier(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkHasManyParentBidirectionalExplicitModelIdentifier &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
