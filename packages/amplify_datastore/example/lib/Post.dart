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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

var uuid = Uuid();

class Post extends Model {
  static final QueryField ID = new QueryField("id");
  static final QueryField TITLE = new QueryField("title");
  static final QueryField RATING = new QueryField("rating");
  static final QueryField CREATED = new QueryField("created");

  @override
  @ModelField(targetType: 'ID', isRequired: true)
  final String id;

  @ModelField(targetType: 'String', isRequired: true)
  final String title;

  @ModelField(targetType: 'Integer', isRequired: false)
  final int rating;

  @ModelField(targetType: 'Date', isRequired: false)
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
        id: id == null ? uuid.v4() : id,
        title: title,
        rating: rating,
        created: created);
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

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'rating': rating,
        'created': formatDateToISO8601(created),
      };

  // Equals and toString() and hash()
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

  bool equals(Object other) {
    return this == other;
  }

  // Type metadata
  static const classType = PostType();
  @override
  final ModelType instanceType = const PostType();
}

class PostType extends ModelType<Post> {
  const PostType();

  @override
  Post fromJson(Map<String, dynamic> jsonData) {
    return Post.fromJson(jsonData);
  }
}
