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

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart';
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
      blogSchema.fields!["id"],
      ModelField(
        name: "id",
        type: const SchemaType.scalar(
          AppSyncScalar.string,
          isRequired: true,
        ),
      ),
    );

    expect(
      blogSchema.fields!["name"],
      ModelField(
        name: "name",
        type: const SchemaType.scalar(
          AppSyncScalar.string,
          isRequired: true,
        ),
      ),
    );

    expect(
      blogSchema.fields!["posts"],
      ModelField(
        name: "posts",
        type: const SchemaType.list(SchemaType.model('Post')),
        association: ModelAssociation(
          associationType: ModelAssociationType.hasMany,
          associatedName: Post.BLOG.fieldName,
          associatedType: 'Post',
        ),
      ),
    );
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
      commentSchema.fields!["id"],
      ModelField(
        name: "id",
        type: const SchemaType.scalar(
          AppSyncScalar.string,
          isRequired: true,
        ),
      ),
    );

    expect(
      commentSchema.fields["post"],
      ModelField(
        name: "post",
        type: const SchemaType.model('Post'),
        association: ModelAssociation(
          associationType: ModelAssociationType.belongsTo,
          associatedType: 'Post',
          targetNames: ["postID"],
        ),
      ),
    );

    expect(
      commentSchema.fields!["content"],
      ModelField(
        name: "content",
        type: const SchemaType.scalar(
          AppSyncScalar.string,
          isRequired: true,
        ),
      ),
    );
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
      postSchema.fields!["id"],
      ModelField(
        name: "id",
        type: const SchemaType.scalar(
          AppSyncScalar.string,
          isRequired: true,
        ),
      ),
    );

    expect(
      postSchema.fields!["title"],
      ModelField(
        name: "title",
        type: const SchemaType.scalar(
          AppSyncScalar.string,
          isRequired: true,
        ),
      ),
    );

    expect(
      postSchema.fields["blog"],
      ModelField(
        name: "blog",
        type: const SchemaType.model('Blog'),
        association: ModelAssociation(
          associationType: ModelAssociationType.belongsTo,
          associatedType: 'Blog',
          targetNames: ["blogID"],
        ),
      ),
    );
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
          authStrategy: AuthStrategy.owner,
          ownerField: "owner",
          identityClaim: "cognito:username",
          operations: [
            ModelOperation.create,
            ModelOperation.update,
            ModelOperation.delete,
            ModelOperation.read
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
        type: const SchemaType.scalar(
          AppSyncScalar.string,
          isRequired: true,
        ),
      ),
      'name': ModelField(
        name: "name",
        type: const SchemaType.scalar(
          AppSyncScalar.string,
          isRequired: true,
        ),
      ),
      'contact': ModelField(
        name: 'contact',
        type: const SchemaType.nonModel(
          'Contact',
          isRequired: true,
        ),
      ),
      'propertiesAddresses': ModelField(
        name: 'propertiesAddresses',
        type: const SchemaType.list(
          SchemaType.nonModel('Address'),
        ),
      ),
      'createdAt': ModelField(
        name: 'createdAt',
        isReadOnly: true,
        type: const SchemaType.scalar(
          AppSyncScalar.awsDateTime,
          isRequired: false,
        ),
      ),
      'updatedAt': ModelField(
        name: 'updatedAt',
        isReadOnly: true,
        type: const SchemaType.scalar(
          AppSyncScalar.awsDateTime,
          isRequired: false,
        ),
      )
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
