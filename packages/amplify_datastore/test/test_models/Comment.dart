/*
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

import 'package:flutter/foundation.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

import 'Post.dart';

/*
type Comment @model @key(name: "byPost", fields: ["postID", "content"]) {
  id: ID!
  postID: ID!
  post: Post @connection(fields: ["postID"])
  content: String!
}
 */

@immutable
class Comment extends Model {
  static const classType = const CommentType();

  @override
  getInstanceType() => classType;

  final String id;
  final Post post;
  final String content;

  @override
  String getId() {
    return id;
  }

  const Comment._internal(
      {@required this.id, this.post, @required this.content});

  factory Comment({String id, Post post, @required String content}) {
    return Comment._internal(
        id: id == null ? UUID.getUUID() : id, post: post, content: content);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
        id == other.id &&
        post == other.post &&
        content == other.content;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Comment {");
    buffer.write("id=" + id + ", ");
    buffer.write("post=" + post.toString() + ", ");
    buffer.write("content=" + content.toString());
    buffer.write("}");

    return buffer.toString();
  }

  Comment copyWith({@required String id, Post post, @required String content}) {
    return Comment(
        id: id ?? this.id,
        post: post ?? this.post,
        content: content ?? this.content);
  }

  Comment.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        post = json['post'] != null
            ? Post.fromJson(new Map<String, dynamic>.from(json['post']))
            : null,
        content = json['content'];

  Map<String, dynamic> toJson() =>
      {'id': id, 'post': post?.toJson(), 'content': content};

  // Schema Section

  static final QueryField ID = QueryField(fieldName: "comment.id");
  static final QueryField POST = QueryField(
      fieldName: "post",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Post).toString()));
  static final QueryField CONTENT = QueryField(fieldName: "content");

  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Comment";
    modelSchemaDefinition.pluralName = "Comments";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: Comment.POST,
        isRequired: false,
        targetName: "postID",
        ofModelName: (Post).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Comment.CONTENT,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class CommentType extends ModelType<Comment> {
  const CommentType();

  @override
  Comment fromJson(Map<String, dynamic> jsonData) {
    return Comment.fromJson(jsonData);
  }
}
