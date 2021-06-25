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


/** This is an auto generated class representing the Post type in your schema. */
@immutable
class Post extends Model {
  static const classType = const _PostModelType();
  final String id;
  final String? _title;
  final int? _rating;
  final TemporalDateTime? _created;
  final Blog? _blog;
  final List<Comment>? _comments;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get title {
    return _title!;
  }
  
  int get rating {
    return _rating!;
  }
  
  TemporalDateTime get created {
    return _created!;
  }
  
  Blog? get blog {
    return _blog;
  }
  
  List<Comment>? get comments {
    return _comments;
  }
  
  const Post._internal({required this.id, required title, required rating, required created, blog, comments}): _title = title, _rating = rating, _created = created, _blog = blog, _comments = comments;
  
  factory Post({String? id, required String title, required int rating, required TemporalDateTime created, Blog? blog, List<Comment>? comments}) {
    return Post._internal(
      id: id == null ? UUID.getUUID() : id,
      title: title,
      rating: rating,
      created: created,
      blog: blog,
      comments: comments != null ? List.unmodifiable(comments) : comments);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
      id == other.id &&
      _title == other._title &&
      _rating == other._rating &&
      _created == other._created &&
      _blog == other._blog &&
      DeepCollectionEquality().equals(_comments, other._comments);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Post {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("rating=" + (_rating != null ? _rating!.toString() : "null") + ", ");
    buffer.write("created=" + (_created != null ? _created!.format() : "null") + ", ");
    buffer.write("blog=" + (_blog != null ? _blog!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Post copyWith({String? id, String? title, int? rating, TemporalDateTime? created, Blog? blog, List<Comment>? comments}) {
    return Post(
      id: id ?? this.id,
      title: title ?? this.title,
      rating: rating ?? this.rating,
      created: created ?? this.created,
      blog: blog ?? this.blog,
      comments: comments ?? this.comments);
  }
  
  Post.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _rating = json['rating'],
      _created = json['created'] != null ? TemporalDateTime.fromString(json['created']) : null,
      _blog = json['blog'] != null
        ? Blog.fromJson(new Map<String, dynamic>.from(json['blog']?['serializedData']))
        : null,
      _comments = json['comments'] is List
        ? (json['comments'] as List)
          .map((e) => Comment.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'rating': _rating, 'created': _created?.format(), 'blog': _blog?.toJson(), 'comments': _comments?.map((e) => e?.toJson())?.toList()
  };

  static final QueryField ID = QueryField(fieldName: "post.id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField RATING = QueryField(fieldName: "rating");
  static final QueryField CREATED = QueryField(fieldName: "created");
  static final QueryField BLOG = QueryField(
    fieldName: "blog",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Blog).toString()));
  static final QueryField COMMENTS = QueryField(
    fieldName: "comments",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Comment).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Post";
    modelSchemaDefinition.pluralName = "Posts";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.TITLE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.RATING,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Post.CREATED,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Post.BLOG,
      isRequired: false,
      targetName: "blogID",
      ofModelName: (Blog).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Post.COMMENTS,
      isRequired: false,
      ofModelName: (Comment).toString(),
      associatedKey: Comment.POST
    ));
  });
}

class _PostModelType extends ModelType<Post> {
  const _PostModelType();
  
  @override
  Post fromJson(Map<String, dynamic> jsonData) {
    return Post.fromJson(jsonData);
  }
}