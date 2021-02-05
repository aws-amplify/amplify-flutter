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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the PostAuthComplex type in your schema. */
@immutable
class PostAuthComplex extends Model {
  static const classType = const PostAuthComplexType();
  final String id;
  final String title;
  final String owner;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const PostAuthComplex._internal(
      {@required this.id, @required this.title, this.owner});

  factory PostAuthComplex(
      {@required String id, @required String title, String owner}) {
    return PostAuthComplex._internal(
        id: id == null ? UUID.getUUID() : id, title: title, owner: owner);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostAuthComplex &&
        id == other.id &&
        title == other.title &&
        owner == other.owner;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("PostAuthComplex {");
    buffer.write("id=" + id + ", ");
    buffer.write("title=" + title + ", ");
    buffer.write("owner=" + owner);
    buffer.write("}");

    return buffer.toString();
  }

  PostAuthComplex copyWith(
      {@required String id, @required String title, String owner}) {
    return PostAuthComplex(
        id: id ?? this.id,
        title: title ?? this.title,
        owner: owner ?? this.owner);
  }

  PostAuthComplex.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        owner = json['owner'];

  Map<String, dynamic> toJson() => {'id': id, 'title': title, 'owner': owner};

  static final QueryField ID = QueryField(fieldName: "postAuthComplex.id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField OWNER = QueryField(fieldName: "owner");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PostAuthComplex";
    modelSchemaDefinition.pluralName = "PostAuthComplexes";

    modelSchemaDefinition.authRules = [
      AuthRule(
          authStrategy: AuthStrategy.OWNER,
          ownerField: "owner",
          identityClaim: "cognito:username",
          operations: [
            ModelOperation.CREATE,
            ModelOperation.UPDATE,
            ModelOperation.DELETE,
            ModelOperation.READ
          ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: PostAuthComplex.TITLE,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: PostAuthComplex.OWNER,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class PostAuthComplexType extends ModelType<PostAuthComplex> {
  const PostAuthComplexType();

  @override
  PostAuthComplex fromJson(Map<String, dynamic> jsonData) {
    return PostAuthComplex.fromJson(jsonData);
  }
}
