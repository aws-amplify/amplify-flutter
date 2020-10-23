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
import 'package:meta/meta.dart';

class Post extends Model {
  static const classType = PostType();

  final String id;
  final String title;
  final int rating;
  final DateTime created;

  @override
  String getId() {
    return id;
  }

// Constructors
  const Post._internal(
      {@required this.id, @required this.title, this.rating, this.created});

  factory Post(
      {String id, @required String title, int rating, DateTime created}) {
    return Post._internal(
        id: id, title: title, rating: rating, created: created);
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
        created == other.created;
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
    buffer.write("created=" + formatDateToISO8601(created));
    buffer.write("}");

    return buffer.toString();
  }

// Utility methods for immutability
  Post copyWith({@required String id, @required String title}) {
    return Post(
        id: id ?? this.id,
        title: title ?? this.title,
        rating: rating ?? this.rating,
        created: created ?? this.created);
  }

// De/serialization methods
  Post.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        rating = json['rating'],
        created =
            json['created'] != null ? DateTime.parse(json['created']) : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'rating': rating,
        'created': formatDateToISO8601(created),
      };

  // Schema Section

  static final QueryField ID = new QueryField(fieldName: "id");
  static final QueryField TITLE = new QueryField(fieldName: "title");
  static final QueryField RATING = new QueryField(fieldName: "rating");
  static final QueryField CREATED = new QueryField(fieldName: "created");

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
  });
}

class PostType extends ModelType<Post> {
  const PostType();

  @override
  Post fromJson(Map<String, dynamic> jsonData) {
    return Post.fromJson(jsonData);
  }
}
