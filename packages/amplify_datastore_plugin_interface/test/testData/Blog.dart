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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Blog type in your schema. */
@immutable
class Blog extends Model {
  static const classType = const _BlogModelType();
  final String id;
  final String? _name;
  final List<Post>? _posts;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get name {
    return _name!;
  }
  
  List<Post>? get posts {
    return _posts;
  }
  
  const Blog._internal({required this.id, required name, posts}): _name = name, _posts = posts;
  
  factory Blog({String? id, required String name, List<Post>? posts}) {
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
    buffer.write("name=" + "$_name");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Blog copyWith({String? id, String? name, List<Post>? posts}) {
    return Blog(
      id: id ?? this.id,
      name: name ?? this.name,
      posts: posts ?? this.posts);
  }
  
  Blog.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _posts = json['posts'] is List
        ? (json['posts'] as List)
          .map((e) => Post.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'posts': _posts?.map((e) => e?.toJson())?.toList()
  };

  static final QueryField ID = QueryField(fieldName: "blog.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField POSTS = QueryField(
    fieldName: "posts",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Post).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Blog";
    modelSchemaDefinition.pluralName = "Blogs";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Blog.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Blog.POSTS,
      isRequired: false,
      ofModelName: (Post).toString(),
      associatedKey: Post.BLOG
    ));
  });
}

class _BlogModelType extends ModelType<Blog> {
  const _BlogModelType();
  
  @override
  Blog fromJson(Map<String, dynamic> jsonData) {
    return Blog.fromJson(jsonData);
  }
}