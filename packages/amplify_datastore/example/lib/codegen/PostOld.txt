import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

import 'Blog.dart';
import 'Comment.dart';

/*
type Post @model @key(name: "byBlog", fields: ["blogID"]) {
  id: ID!
  title: String!
  blogID: ID!
  blog: Blog @connection(fields: ["blogID"])
  comments: [Comment] @connection(keyName: "byPost", fields: ["id"])
}
 */

@immutable
class Post extends Model {
  static const classType = PostType();

  final String id;
  final String title;
  final Blog blog;
  final List<Comment> comments;

  @override
  String getId() {
    return id;
  }

  const Post._internal(
      {@required this.id, @required this.title, this.blog, this.comments});

  factory Post(
      {String id, @required String title, Blog blog, List<Comment> comments}) {
    return Post._internal(
        id: id == null ? UUID.getUUID() : id,
        title: title,
        blog: blog,
        comments: comments != null ? List.unmodifiable(comments) : null);
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
        blog == other.blog &&
        DeepCollectionEquality().equals(comments, other.comments);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Post {");
    buffer.write("id=" + id + ", ");
    buffer.write("title=" + title + ", ");
    buffer.write("blog=" + blog.toString());
    buffer.write("}");

    return buffer.toString();
  }

  Post copyWith(
      {@required String id,
      @required String title,
      Blog blog,
      List<Comment> comments}) {
    return Post(
        id: id ?? this.id,
        title: title ?? this.title,
        comments: comments ?? this.comments);
  }

  Post.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        blog = json['blog'] is Map<String, dynamic>
            ? Blog.fromJson(json['blog'] as Map<String, dynamic>)
            : null,
        comments = json['comments'] is List
            ? (json['comments'] as List)
                .map((e) => Comment.fromJson(e as Map<String, dynamic>))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'blog': blog.toJson(),
        'comments': comments.map((comment) => comment.toJson())
      };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField BLOG = new QueryField(
      fieldName: "blog",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Blog).toString()));
  static final QueryField COMMENTS = new QueryField(
      fieldName: "comments",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (Comment).toString()));

  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Post";
    modelSchemaDefinition.pluralName = "Posts";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Post.TITLE,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

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
