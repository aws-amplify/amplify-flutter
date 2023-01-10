// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/*
CodegenModel -> ModelSchema -> Map

We need to verify that each conversion step (->) is done correctly and each state retains the proper information
 */

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Blog codegen model generates modelschema with proper fields', () async {
    /*
    type Blog @model {
      id: ID! @primaryKey
      name: String!
      createdAt: AWSDateTime
      file: S3Object
      files: [S3Object]
      posts: [Post] @hasMany(indexName: "byBlog", fields: ["id"])
    }
    */

    ModelSchema blogSchema = Blog.schema;

    expect(blogSchema.name, "Blog");
    expect(blogSchema.pluralName, "Blogs");
    expect(blogSchema.authRules, null);

    expect(
        blogSchema.fields!["id"],
        ModelField(
            name: "id",
            type: const ModelFieldType(ModelFieldTypeEnum.string),
            isRequired: true,
            isArray: false));

    expect(
        blogSchema.fields!["name"],
        ModelField(
            name: "name",
            type: const ModelFieldType(ModelFieldTypeEnum.string),
            isRequired: true,
            isArray: false));

    expect(
        blogSchema.fields!["posts"],
        ModelField(
            name: "posts",
            type: const ModelFieldType(ModelFieldTypeEnum.collection,
                ofModelName: "Post"),
            isRequired: false,
            isArray: true,
            association: ModelAssociation(
                associationType: ModelAssociationEnum.HasMany,
                associatedName: Post.BLOG.fieldName,
                associatedType: Post.BLOG.fieldType!.ofModelName)));
  });

  test('Comment codegen model generates modelschema with proper fields',
      () async {
    /*
    type Comment @model {
      id: ID!
      postID: ID! @index(name: "byPost", sortKeyFields: ["content"])
      post: Post @belongsTo(fields: ["postID"])
      content: String!
    }
    */

    ModelSchema commentSchema = Comment.schema;

    expect(commentSchema.name, "Comment");
    expect(commentSchema.pluralName, "Comments");
    expect(commentSchema.authRules, null);

    expect(
        commentSchema.fields!["id"],
        ModelField(
            name: "id",
            type: const ModelFieldType(ModelFieldTypeEnum.string),
            isRequired: true,
            isArray: false));

    expect(
        commentSchema.fields!["post"],
        ModelField(
            name: "post",
            type: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: "Post"),
            isRequired: false,
            isArray: false,
            association: ModelAssociation(
                associationType: ModelAssociationEnum.BelongsTo,
                targetName: "postID")));

    expect(
        commentSchema.fields!["content"],
        ModelField(
            name: "content",
            type: ModelFieldType(ModelFieldTypeEnum.string),
            isRequired: true,
            isArray: false));
  });

  test('Post codegen model generates modelschema with proper fields', () async {
    /*
    type Post @model {
      id: ID!
      title: String!
      rating: Int!
      created: AWSDateTime
      likeCount: Int
      blogID: ID! @index(name: "byBlog")
      blog: Blog @belongsTo(fields: ["blogID"])
      comments: [Comment] @hasMany(indexName: "byPost", fields: ["id"])
    }
    */

    ModelSchema postSchema = Post.schema;

    expect(postSchema.name, "Post");
    expect(postSchema.pluralName, "Posts");
    expect(postSchema.authRules, null);

    expect(
        postSchema.fields!["id"],
        ModelField(
            name: "id",
            type: const ModelFieldType(ModelFieldTypeEnum.string),
            isRequired: true,
            isArray: false));

    expect(
        postSchema.fields!["title"],
        ModelField(
            name: "title",
            type: ModelFieldType(ModelFieldTypeEnum.string),
            isRequired: true,
            isArray: false));

    expect(
        postSchema.fields!["blog"],
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
    type PostWithAuthRules
      @model
      @auth(
        rules: [
          {
            allow: owner
            ownerField: "owner"
            operations: [create, update, delete, read]
          }
        ]
      ) {
      id: ID!
      title: String!
      owner: String
    }
    */

    ModelSchema postSchema = PostWithAuthRules.schema;

    expect(postSchema.name, "PostWithAuthRules");
    expect(postSchema.pluralName, "PostWithAuthRules");
    expect(postSchema.authRules, [
      AuthRule(
          authStrategy: AuthStrategy.OWNER,
          ownerField: "owner",
          identityClaim: "cognito:username",
          provider: AuthRuleProvider.USERPOOLS,
          operations: [
            ModelOperation.CREATE,
            ModelOperation.UPDATE,
            ModelOperation.DELETE,
            ModelOperation.READ
          ])
    ]);
  });

  test(
      'Generated dart class Person should provide correct schema with nested CustomType',
      () {
    /*
      type Person @model {
        id: ID!
        name: String!
        propertiesAddresses: [Address]
        contact: Contact!
      }
      type Address {
        line1: String!
        line2: String
        city: String!
        state: String!
        postalCode: String!
      }
      type Contact {
        email: String!
        phone: Phone!
        mailingAddresses: [Address]
      }
    */
    final expectedPersonFields = {
      'id': ModelField(
          name: "id",
          type: const ModelFieldType(ModelFieldTypeEnum.string),
          isRequired: true,
          isArray: false),
      'name': ModelField(
          name: "name",
          type: const ModelFieldType(ModelFieldTypeEnum.string),
          isRequired: true,
          isArray: false),
      'contact': ModelField(
          name: 'contact',
          isRequired: true,
          type: ModelFieldType(ModelFieldTypeEnum.embedded,
              ofCustomTypeName: 'Contact')),
      'propertiesAddresses': ModelField(
          name: 'propertiesAddresses',
          isRequired: false,
          isArray: true,
          type: ModelFieldType(ModelFieldTypeEnum.embeddedCollection,
              ofCustomTypeName: 'Address')),
      'createdAt': ModelField(
          name: 'createdAt',
          isRequired: false,
          isArray: false,
          isReadOnly: true,
          type: ModelFieldType(ModelFieldTypeEnum.dateTime)),
      'updatedAt': ModelField(
          name: 'updatedAt',
          isRequired: false,
          isArray: false,
          isReadOnly: true,
          type: ModelFieldType(ModelFieldTypeEnum.dateTime))
    };
    final personSchema = Person.schema;
    expect(personSchema.name, 'Person');
    expect(personSchema.pluralName, 'People');
    expect(personSchema.authRules, null);
    expect(personSchema.fields is Map, true);

    final fields = personSchema.fields!;

    fields.forEach((fieldName, field) {
      expect(field, expectedPersonFields[fieldName]);
    });
  });
}
