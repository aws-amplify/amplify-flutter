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

/*
CodegenModel -> ModelSchema -> Map

We need to verify that each conversion step (->) is done correctly and each state retains the proper information
 */

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_datastore_plugin_interface/src/types/models/model_association.dart';

import 'package:flutter_test/flutter_test.dart';

import 'testData/ModelProvider.dart';

void main() {
  test('Blog codegen model generates modelschema with proper fields', () async {
    /*
    type Blog @model {
      id: ID!
      name: String!
      posts: [Post] @connection(keyName: "byBlog", fields: ["id"])
    }
    */

    ModelSchema blogSchema = Blog.schema;

    expect(blogSchema.name, "Blog");
    expect(blogSchema.pluralName, "Blogs");
    expect(blogSchema.authRules, null);

    expect(
        blogSchema.fields["id"],
        ModelField(
            name: "id",
            type: const ModelFieldType(ModelFieldTypeEnum.string),
            isRequired: true,
            isArray: false));

    expect(
        blogSchema.fields["name"],
        ModelField(
            name: "name",
            type: const ModelFieldType(ModelFieldTypeEnum.string),
            isRequired: true,
            isArray: false));

    expect(
        blogSchema.fields["posts"],
        ModelField(
            name: "posts",
            type: const ModelFieldType(ModelFieldTypeEnum.collection,
                ofModelName: "Post"),
            isRequired: false,
            isArray: true,
            association: ModelAssociation(
                associationType: ModelAssociationEnum.HasMany,
                associatedName: Post.BLOG.fieldName,
                associatedType: Post.BLOG.fieldType.ofModelName)));
  });

  test('Comment codegen model generates modelschema with proper fields',
      () async {
    /*
    type Comment @model @key(name: "byPost", fields: ["postID", "content"]) {
      id: ID!
      postID: ID!
      post: Post @connection(fields: ["postID"])
      content: String!
    }
     */

    ModelSchema commentSchema = Comment.schema;

    expect(commentSchema.name, "Comment");
    expect(commentSchema.pluralName, "Comments");
    expect(commentSchema.authRules, null);

    expect(
        commentSchema.fields["id"],
        ModelField(
            name: "id",
            type: const ModelFieldType(ModelFieldTypeEnum.string),
            isRequired: true,
            isArray: false));

    expect(
        commentSchema.fields["post"],
        ModelField(
            name: "post",
            type: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: "Post"),
            isRequired: false,
            isArray: false,
            association: ModelAssociation(
                associationType: ModelAssociationEnum.BelongsTo,
                targetName: "postID")));

    expect(
        commentSchema.fields["content"],
        ModelField(
            name: "content",
            type: ModelFieldType(ModelFieldTypeEnum.string),
            isRequired: true,
            isArray: false));
  });

  test('Post codegen model generates modelschema with proper fields', () async {
    /*
    type Post @model @key(name: "byBlog", fields: ["blogID"]) {
      id: ID!
      title: String!
      blogID: ID!
      blog: Blog @connection(fields: ["blogID"])
      comments: [Comment] @connection(keyName: "byPost", fields: ["id"])
    }
     */

    ModelSchema postSchema = Post.schema;

    expect(postSchema.name, "Post");
    expect(postSchema.pluralName, "Posts");
    expect(postSchema.authRules, null);

    expect(
        postSchema.fields["id"],
        ModelField(
            name: "id",
            type: const ModelFieldType(ModelFieldTypeEnum.string),
            isRequired: true,
            isArray: false));

    expect(
        postSchema.fields["title"],
        ModelField(
            name: "title",
            type: ModelFieldType(ModelFieldTypeEnum.string),
            isRequired: true,
            isArray: false));

    expect(
        postSchema.fields["blog"],
        ModelField(
            name: "blog",
            type: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: "Blog"),
            isRequired: false,
            isArray: false,
            association: ModelAssociation(
                associationType: ModelAssociationEnum.BelongsTo,
                targetName: "blogID")));
  });

  test('PostAuthComplex codegen model generates modelschema with proper fields',
      () async {
    /*
    type PostAuthComplex
      @model
      @auth(
        rules: [
          { allow: owner, ownerField: "owner", operations: [create, update, delete, read] },
        ])
    {
      id: ID!
      title: String!
      owner: String
    }
     */

    ModelSchema postSchema = PostAuthComplex.schema;

    expect(postSchema.name, "PostAuthComplex");
    expect(postSchema.pluralName, "PostAuthComplexes");
    expect(postSchema.authRules, [
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
    ]);
  });
}
