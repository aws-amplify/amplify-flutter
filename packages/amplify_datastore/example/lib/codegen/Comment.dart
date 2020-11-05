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
  static const classType = CommentType();

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
        post = json['post'] is Map<String, dynamic>
            ? Post.fromJson(json['post'] as Map<String, dynamic>)
            : null,
        content = json['content'];

  Map<String, dynamic> toJson() =>
      {'id': id, 'post': post?.toJson(), 'content': content};

  // Schema Section

  static final QueryField ID = QueryField(fieldName: "id");
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
