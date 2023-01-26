// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';

/// This is an auto generated class representing the CpkManyToManyPost type in your schema.
@immutable
class CpkManyToManyPost extends Model {
  static const classType = _CpkManyToManyPostModelType();
  final String id;
  final String? _title;
  final List<CpkPostTags>? _tags;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  CpkManyToManyPostModelIdentifier get modelIdentifier {
    return CpkManyToManyPostModelIdentifier(id: id);
  }

  String get title {
    try {
      return _title!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  List<CpkPostTags>? get tags {
    return _tags;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const CpkManyToManyPost._internal(
      {required this.id, required title, tags, createdAt, updatedAt})
      : _title = title,
        _tags = tags,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory CpkManyToManyPost(
      {String? id, required String title, List<CpkPostTags>? tags}) {
    return CpkManyToManyPost._internal(
        id: id == null ? UUID.getUUID() : id,
        title: title,
        tags: tags != null ? List<CpkPostTags>.unmodifiable(tags) : tags);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkManyToManyPost &&
        id == other.id &&
        _title == other._title &&
        DeepCollectionEquality().equals(_tags, other._tags);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("CpkManyToManyPost {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  CpkManyToManyPost copyWith({String? title, List<CpkPostTags>? tags}) {
    return CpkManyToManyPost._internal(
        id: id, title: title ?? this.title, tags: tags ?? this.tags);
  }

  CpkManyToManyPost.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _title = json['title'],
        _tags = json['tags'] is List
            ? (json['tags'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => CpkPostTags.fromJson(
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
        'title': _title,
        'tags': _tags?.map((CpkPostTags? e) => e?.toJson()).toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryModelIdentifier<CpkManyToManyPostModelIdentifier>
      MODEL_IDENTIFIER =
      QueryModelIdentifier<CpkManyToManyPostModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField TAGS = QueryField(
      fieldName: "tags",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (CpkPostTags).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkManyToManyPost";
    modelSchemaDefinition.pluralName = "CpkManyToManyPosts";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkManyToManyPost.TITLE,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: CpkManyToManyPost.TAGS,
        isRequired: false,
        ofModelName: (CpkPostTags).toString(),
        associatedKey: CpkPostTags.CPKMANYTOMANYPOST));

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

class _CpkManyToManyPostModelType extends ModelType<CpkManyToManyPost> {
  const _CpkManyToManyPostModelType();

  @override
  CpkManyToManyPost fromJson(Map<String, dynamic> jsonData) {
    return CpkManyToManyPost.fromJson(jsonData);
  }
}

/// This is an auto generated class representing the model identifier
/// of [CpkManyToManyPost] in your schema.
@immutable
class CpkManyToManyPostModelIdentifier
    implements ModelIdentifier<CpkManyToManyPost> {
  final String id;

  /// Create an instance of CpkManyToManyPostModelIdentifier using [id] the primary key.
  const CpkManyToManyPostModelIdentifier({required this.id});

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
  String toString() => 'CpkManyToManyPostModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkManyToManyPostModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
