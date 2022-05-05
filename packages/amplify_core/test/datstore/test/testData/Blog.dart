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

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code, implicit_dynamic_map_literal, implicit_dynamic_parameter, implicit_dynamic_type

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the Blog type in your schema. */
@immutable
class Blog extends Model {
  static const classType = const _BlogModelType();
  final String id;
  final String? _name;
  final List<Post>? _posts;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
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

  List<Post>? get posts {
    return _posts;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const Blog._internal(
      {required this.id, required name, posts, createdAt, updatedAt})
      : _name = name,
        _posts = posts,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory Blog({String? id, required String name, List<Post>? posts}) {
    return Blog._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        posts: posts != null ? List<Post>.unmodifiable(posts) : posts);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Blog &&
        id == other.id &&
        _name == other._name &&
        DeepCollectionEquality().equals(_posts, other._posts);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Blog {");
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

  Blog copyWith({String? id, String? name, List<Post>? posts}) {
    return Blog._internal(
        id: id ?? this.id, name: name ?? this.name, posts: posts ?? this.posts);
  }

  Blog.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _posts = json['posts'] is List
            ? (json['posts'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => Post.fromJson(
                    new Map<String, dynamic>.from(e['serializedData'])))
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
        'posts': _posts?.map((Post? e) => e?.toJson()).toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID = QueryField(fieldName: "blog.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField POSTS = QueryField(
      fieldName: "posts",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Post).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Blog";
    modelSchemaDefinition.pluralName = "Blogs";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Blog.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: Blog.POSTS,
        isRequired: false,
        ofModelName: (Post).toString(),
        associatedKey: Post.BLOGID));

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

class _BlogModelType extends ModelType<Blog> {
  const _BlogModelType();

  @override
  Blog fromJson(Map<String, dynamic> jsonData) {
    return Blog.fromJson(jsonData);
  }
}
