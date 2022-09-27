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

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the Tag type in your schema.
@immutable
class Tag extends Model {
  static const classType = _TagModelType();
  final String id;
  final String? _label;
  final List<PostTags>? _posts;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  String get label {
    try {
      return _label!;
    } catch (e) {
      throw DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  List<PostTags>? get posts {
    return _posts;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const Tag._internal(
      {required this.id, required label, posts, createdAt, updatedAt})
      : _label = label,
        _posts = posts,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory Tag({String? id, required String label, List<PostTags>? posts}) {
    return Tag._internal(
        id: id == null ? UUID.getUUID() : id,
        label: label,
        posts: posts != null ? List<PostTags>.unmodifiable(posts) : posts);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tag &&
        id == other.id &&
        _label == other._label &&
        DeepCollectionEquality().equals(_posts, other._posts);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("Tag {");
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

  Tag copyWith({String? id, String? label, List<PostTags>? posts}) {
    return Tag._internal(
        id: id ?? this.id,
        label: label ?? this.label,
        posts: posts ?? this.posts);
  }

  Tag.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _label = json['label'],
        _posts = json['posts'] is List
            ? (json['posts'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => PostTags.fromJson(
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
        'posts': _posts?.map((PostTags? e) => e?.toJson()).toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID = QueryField(fieldName: "tag.id");
  static final QueryField LABEL = QueryField(fieldName: "label");
  static final QueryField POSTS = QueryField(
      fieldName: "posts",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (PostTags).toString()));
  static var schema = Model.defineSchema(
      define: (ModelTypeDefinitionBuilder modelSchemaDefinition) {
    modelSchemaDefinition.name = "Tag";
    modelSchemaDefinition.pluralName = "Tags";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Tag.LABEL,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: Tag.POSTS,
        isRequired: false,
        ofModelName: (PostTags).toString(),
        associatedKey: PostTags.TAG));

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

class _TagModelType extends ModelType<Tag> {
  const _TagModelType();

  @override
  Tag fromJson(Map<String, dynamic> jsonData) {
    return Tag.fromJson(jsonData);
  }
}
