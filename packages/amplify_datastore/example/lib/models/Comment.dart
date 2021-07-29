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

// ignore_for_file: public_member_api_docs

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Comment type in your schema. */
@immutable
class Comment extends Model {
  static const classType = const _CommentModelType();
  final String id;
  final Post? _post;
  final String? _content;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  Post? get post {
    return _post;
  }
  
  String get content {
    try {
      return _content!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const Comment._internal({required this.id, post, required content}): _post = post, _content = content;
  
  factory Comment({String? id, Post? post, required String content}) {
    return Comment._internal(
      id: id == null ? UUID.getUUID() : id,
      post: post,
      content: content);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
      id == other.id &&
      _post == other._post &&
      _content == other._content;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Comment {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("post=" + (_post != null ? _post!.toString() : "null") + ", ");
    buffer.write("content=" + "$_content");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Comment copyWith({String? id, Post? post, String? content}) {
    return Comment(
      id: id ?? this.id,
      post: post ?? this.post,
      content: content ?? this.content);
  }
  
  Comment.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _post = json['post']?['serializedData'] != null
        ? Post.fromJson(new Map<String, dynamic>.from(json['post']['serializedData']))
        : null,
      _content = json['content'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'post': _post?.toJson(), 'content': _content
  };

  static final QueryField ID = QueryField(fieldName: "comment.id");
  static final QueryField POST = QueryField(
    fieldName: "post",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Post).toString()));
  static final QueryField CONTENT = QueryField(fieldName: "content");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Comment";
    modelSchemaDefinition.pluralName = "Comments";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Comment.POST,
      isRequired: false,
      targetName: "postID",
      ofModelName: (Post).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Comment.CONTENT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _CommentModelType extends ModelType<Comment> {
  const _CommentModelType();
  
  @override
  Comment fromJson(Map<String, dynamic> jsonData) {
    return Comment.fromJson(jsonData);
  }
}