/*
*
* Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';

import 'Blog.dart';
import 'Comment.dart';

/*
type Post @model @key(name: "byBlog", fields: ["blogID"]) {
  id: ID!
  title: String!
  rating: Int!
  created: AWSDate!
  blogID: ID!
  blog: Blog @connection(fields: ["blogID"])
  comments: [Comment] @connection(keyName: "byPost", fields: ["id"])
}
 */

@immutable
class Post extends Model {
  static const classType = const PostType();

  @override
  getInstanceType() => classType;

  final String id;
  final String title;
  final int rating;
  final DateTime created;

  final Blog blog;
  final List<Comment> comments;

  @override
  String getId() {
    return id;
  }

// Constructors
  const Post._internal(
      {@required this.id,
      @required this.title,
      this.rating,
      this.created,
      this.blog,
      this.comments});

  factory Post(
      {String id,
      @required String title,
      int rating,
      DateTime created,
      Blog blog,
      List<Comment> comments}) {
    return Post._internal(
        id: id == null ? UUID.getUUID() : id,
        title: title,
        rating: rating,
        created: created,
        blog: blog,
        comments: comments);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
        id == other.id &&
        title == other.title &&
        rating == other.rating &&
        created == other.created &&
        blog == other.blog &&
        DeepCollectionEquality().equals(comments, other.comments);
  }

  @override
  int get hashCode => super.hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Post {");
    buffer.write("id=" + id + ", ");
    buffer.write("title=" + title + ", ");
    buffer.write("rating=" + rating.toString() + ", ");
    buffer
        .write("created=" + created.toIso8601String()); // created.toString());
    buffer.write("blog=" + blog.toString());
    buffer.write("}");

    return buffer.toString();
  }

// Utility methods for immutability
  Post copyWith(
      {@required String id,
      @required String title,
      int rating,
      DateTime created,
      Blog blog,
      List<Comment> comments}) {
    return Post(
        id: id ?? this.id,
        title: title ?? this.title,
        rating: rating ?? this.rating,
        created: created ?? this.created,
        blog: blog ?? this.blog,
        comments: comments ?? this.comments);
  }

// De/serialization methods
  Post.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        rating = json['rating'],
        created =
            json['created'] != null ? DateTime.parse(json['created']) : null,
        blog = json['blog'] != null
            ? Blog.fromJson(new Map<String, dynamic>.from(json['blog']))
            : null,
        comments = json['comments'] is List
            ? (json['comments'] as List)
                .map((e) => Comment.fromJson(new Map<String, dynamic>.from(e)))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'rating': rating,
        'created': formatDateToISO8601(created),
        'blog': blog?.toJson(),
        'comments': comments?.map((comment) => comment.toJson())
      };

  // Schema Section

  static final QueryField ID = new QueryField(fieldName: "post.id");
  static final QueryField TITLE = new QueryField(fieldName: "title");
  static final QueryField RATING = new QueryField(fieldName: "rating");
  static final QueryField CREATED = new QueryField(fieldName: "created");
  static final QueryField BLOG = new QueryField(
      fieldName: "blog",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: "Blog"));
  static final QueryField COMMENTS = new QueryField(
      fieldName: "comments",
      fieldType:
          ModelFieldType(ModelFieldTypeEnum.model, ofModelName: "Comment"));

  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Post";
    modelSchemaDefinition.pluralName = "Posts";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Post.TITLE,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Post.RATING,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Post.CREATED,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: Post.BLOG,
        isRequired: false,
        targetName: "blogID",
        ofModelName: (Blog).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Post.COMMENTS,
      isRequired: false,
      ofModelName: (Comment).toString(),
      associatedKey: Comment.POST,
    ));
  });
}

class PostType extends ModelType<Post> {
  const PostType();

  @override
  Post fromJson(Map<String, dynamic> jsonData) {
    return Post.fromJson(jsonData);
  }
}
