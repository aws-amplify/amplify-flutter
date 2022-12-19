// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';

/// This is an auto generated class representing the CpkPostTags type in your schema.
@immutable
class CpkPostTags extends Model {
  static const classType = _CpkPostTagsModelType();
  final String id;
  final CpkManyToManyPost? _cpkManyToManyPost;
  final CpkManyToManyTag? _cpkManyToManyTag;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  CpkPostTagsModelIdentifier get modelIdentifier {
    return CpkPostTagsModelIdentifier(id: id);
  }

  CpkManyToManyPost get cpkManyToManyPost {
    try {
      return _cpkManyToManyPost!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  CpkManyToManyTag get cpkManyToManyTag {
    try {
      return _cpkManyToManyTag!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const CpkPostTags._internal(
      {required this.id,
      required cpkManyToManyPost,
      required cpkManyToManyTag,
      createdAt,
      updatedAt})
      : _cpkManyToManyPost = cpkManyToManyPost,
        _cpkManyToManyTag = cpkManyToManyTag,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory CpkPostTags(
      {String? id,
      required CpkManyToManyPost cpkManyToManyPost,
      required CpkManyToManyTag cpkManyToManyTag}) {
    return CpkPostTags._internal(
        id: id == null ? UUID.getUUID() : id,
        cpkManyToManyPost: cpkManyToManyPost,
        cpkManyToManyTag: cpkManyToManyTag);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkPostTags &&
        id == other.id &&
        _cpkManyToManyPost == other._cpkManyToManyPost &&
        _cpkManyToManyTag == other._cpkManyToManyTag;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("CpkPostTags {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("cpkManyToManyPost=" +
        (_cpkManyToManyPost != null ? _cpkManyToManyPost!.toString() : "null") +
        ", ");
    buffer.write("cpkManyToManyTag=" +
        (_cpkManyToManyTag != null ? _cpkManyToManyTag!.toString() : "null") +
        ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  CpkPostTags copyWith(
      {CpkManyToManyPost? cpkManyToManyPost,
      CpkManyToManyTag? cpkManyToManyTag}) {
    return CpkPostTags._internal(
        id: id,
        cpkManyToManyPost: cpkManyToManyPost ?? this.cpkManyToManyPost,
        cpkManyToManyTag: cpkManyToManyTag ?? this.cpkManyToManyTag);
  }

  CpkPostTags.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _cpkManyToManyPost =
            json['cpkManyToManyPost']?['serializedData'] != null
                ? CpkManyToManyPost.fromJson(Map<String, dynamic>.from(
                    json['cpkManyToManyPost']['serializedData']))
                : null,
        _cpkManyToManyTag = json['cpkManyToManyTag']?['serializedData'] != null
            ? CpkManyToManyTag.fromJson(Map<String, dynamic>.from(
                json['cpkManyToManyTag']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'cpkManyToManyPost': _cpkManyToManyPost?.toJson(),
        'cpkManyToManyTag': _cpkManyToManyTag?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryModelIdentifier<CpkPostTagsModelIdentifier>
      MODEL_IDENTIFIER = QueryModelIdentifier<CpkPostTagsModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField CPKMANYTOMANYPOST = QueryField(
      fieldName: "cpkManyToManyPost",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (CpkManyToManyPost).toString()));
  static final QueryField CPKMANYTOMANYTAG = QueryField(
      fieldName: "cpkManyToManyTag",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (CpkManyToManyTag).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkPostTags";
    modelSchemaDefinition.pluralName = "CpkPostTags";

    modelSchemaDefinition.indexes = [
      ModelIndex(
          fields: const ["cpkManyToManyPostId"], name: "byCpkManyToManyPost"),
      ModelIndex(
          fields: const ["cpkManyToManyTagId", "cpkManyToManyTaglabel"],
          name: "byCpkManyToManyTag")
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: CpkPostTags.CPKMANYTOMANYPOST,
        isRequired: true,
        targetNames: ["cpkManyToManyPostId"],
        ofModelName: (CpkManyToManyPost).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: CpkPostTags.CPKMANYTOMANYTAG,
        isRequired: true,
        targetNames: ["cpkManyToManyTagId", "cpkManyToManyTaglabel"],
        ofModelName: (CpkManyToManyTag).toString()));

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

class _CpkPostTagsModelType extends ModelType<CpkPostTags> {
  const _CpkPostTagsModelType();

  @override
  CpkPostTags fromJson(Map<String, dynamic> jsonData) {
    return CpkPostTags.fromJson(jsonData);
  }
}

/// This is an auto generated class representing the model identifier
/// of [CpkPostTags] in your schema.
@immutable
class CpkPostTagsModelIdentifier implements ModelIdentifier<CpkPostTags> {
  final String id;

  /// Create an instance of CpkPostTagsModelIdentifier using [id] the primary key.
  const CpkPostTagsModelIdentifier({required this.id});

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
  String toString() => 'CpkPostTagsModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkPostTagsModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
