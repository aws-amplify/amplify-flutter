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

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the CpkManyToManyTag type in your schema.
@immutable
class CpkManyToManyTag extends Model {
  static const classType = _CpkManyToManyTagModelType();
  final String id;
  final String? _label;
  final List<CpkPostTags>? _posts;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  CpkManyToManyTagModelIdentifier get modelIdentifier {
    try {
      return CpkManyToManyTagModelIdentifier(id: id, label: _label!);
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get label {
    try {
      return _label!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  List<CpkPostTags>? get posts {
    return _posts;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const CpkManyToManyTag._internal(
      {required this.id, required label, posts, createdAt, updatedAt})
      : _label = label,
        _posts = posts,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory CpkManyToManyTag(
      {String? id, required String label, List<CpkPostTags>? posts}) {
    return CpkManyToManyTag._internal(
        id: id == null ? UUID.getUUID() : id,
        label: label,
        posts: posts != null ? List<CpkPostTags>.unmodifiable(posts) : posts);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkManyToManyTag &&
        id == other.id &&
        _label == other._label &&
        DeepCollectionEquality().equals(_posts, other._posts);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("CpkManyToManyTag {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("label=" + "$_label" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  CpkManyToManyTag copyWith({List<CpkPostTags>? posts}) {
    return CpkManyToManyTag._internal(
        id: id, label: label, posts: posts ?? this.posts);
  }

  CpkManyToManyTag.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _label = json['label'],
        _posts = json['posts'] is List
            ? (json['posts'] as List)
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
        'label': _label,
        'posts': _posts?.map((CpkPostTags? e) => e?.toJson()).toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryModelIdentifier<CpkManyToManyTagModelIdentifier>
      MODEL_IDENTIFIER =
      QueryModelIdentifier<CpkManyToManyTagModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField LABEL = QueryField(fieldName: "label");
  static final QueryField POSTS = QueryField(
      fieldName: "posts",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (CpkPostTags).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkManyToManyTag";
    modelSchemaDefinition.pluralName = "CpkManyToManyTags";

    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["id", "label"], name: null)
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkManyToManyTag.LABEL,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: CpkManyToManyTag.POSTS,
        isRequired: false,
        ofModelName: (CpkPostTags).toString(),
        associatedKey: CpkPostTags.CPKMANYTOMANYTAG));

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

class _CpkManyToManyTagModelType extends ModelType<CpkManyToManyTag> {
  const _CpkManyToManyTagModelType();

  @override
  CpkManyToManyTag fromJson(Map<String, dynamic> jsonData) {
    return CpkManyToManyTag.fromJson(jsonData);
  }
}

/// This is an auto generated class representing the model identifier
/// of [CpkManyToManyTag] in your schema.
@immutable
class CpkManyToManyTagModelIdentifier
    implements ModelIdentifier<CpkManyToManyTag> {
  final String id;
  final String label;

  /// Create an instance of CpkManyToManyTagModelIdentifier using [id] the primary key.
  /// And [label] the sort key.
  const CpkManyToManyTagModelIdentifier(
      {required this.id, required this.label});

  @override
  Map<String, dynamic> serializeAsMap() =>
      (<String, dynamic>{'id': id, 'label': label});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
      .entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() =>
      'CpkManyToManyTagModelIdentifier(id: $id, label: $label)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkManyToManyTagModelIdentifier &&
        id == other.id &&
        label == other.label;
  }

  @override
  int get hashCode => id.hashCode ^ label.hashCode;
}
