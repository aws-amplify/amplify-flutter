import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

import 'Post.dart';

/*
type Blog @model {
  id: ID!
  name: String!
  posts: [Post] @connection(keyName: "byBlog", fields: ["id"])
}
 */

@immutable
class Blog extends Model {
  static const classType = BlogType();

  final String id;
  final String name;
  final List<Post> posts;

  @override
  String getId() {
    return id;
  }

  const Blog._internal({@required this.id, @required this.name, this.posts});

  factory Blog({String id, @required String name, List<Post> posts}) {
    return Blog._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        posts: posts != null ? List.unmodifiable(posts) : posts);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Blog &&
        id == other.id &&
        name == other.name &&
        DeepCollectionEquality().equals(posts, other.posts);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Blog {");
    buffer.write("id=" + id + ", ");
    buffer.write("name=" + name);
    buffer.write("}");

    return buffer.toString();
  }

  Blog copyWith(
      {@required String id, @required String name, List<Post> posts}) {
    return Blog(
        id: id ?? this.id, name: name ?? this.name, posts: posts ?? this.posts);
  }

  Blog.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        posts = json['posts'] is List
            ? (json['posts'] as List)
                .map((e) => Post.fromJson(e as Map<String, dynamic>))
                .toList()
            : null;

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'posts': posts.map((post) => post.toJson())};

  static final QueryField ID = QueryField(fieldName: "id");
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
        associatedKey: Post.BLOG));
  });
}

class BlogType extends ModelType<Blog> {
  const BlogType();

  @override
  Blog fromJson(Map<String, dynamic> jsonData) {
    return Blog.fromJson(jsonData);
  }
}
