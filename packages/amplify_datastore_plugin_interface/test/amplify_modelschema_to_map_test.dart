// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Blog codegen model generates modelschema with proper fields', () async {
    ModelSchema blogSchema = Blog.schema;
    Map<String, dynamic> map = blogSchema.toMap();

    expect(map, {
      'name': "Blog",
      'pluralName': "Blogs",
      'indexes': [
        {
          'name': null,
          'fields': ['id']
        }
      ],
      'fields': {
        'id': {
          'name': "id",
          'type': {'fieldType': 'string'},
          'isRequired': true,
          'isArray': false,
          'isReadOnly': false,
        },
        'name': {
          'name': "name",
          'type': {'fieldType': 'string'},
          'isRequired': true,
          'isArray': false,
          'isReadOnly': false,
        },
        'file': {
          'name': 'file',
          'type': {'fieldType': 'embedded', 'ofCustomTypeName': 'S3Object'},
          'isRequired': false,
          'isArray': false,
          'isReadOnly': false
        },
        'files': {
          'name': 'files',
          'type': {
            'fieldType': 'embeddedCollection',
            'ofCustomTypeName': 'S3Object'
          },
          'isRequired': false,
          'isArray': true,
          'isReadOnly': false
        },
        'posts': {
          'name': "posts",
          'type': {'fieldType': 'collection', 'ofModelName': "Post"},
          'isRequired': false,
          'isArray': true,
          'isReadOnly': false,
          'association': const {
            'associationType': 'HasMany',
            'associatedName': "blog",
            'associatedType': "Post"
          }
        },
        'createdAt': {
          'name': 'createdAt',
          'type': {'fieldType': 'dateTime'},
          'isRequired': false,
          'isArray': false,
          // Note that the testing overrides the readonly field createdAt
          'isReadOnly': false
        },
        'updatedAt': {
          'name': 'updatedAt',
          'type': {'fieldType': 'dateTime'},
          'isRequired': false,
          'isArray': false,
          'isReadOnly': true
        }
      }
    });
  });

  test('Comment codegen model generates modelschema with proper fields',
      () async {
    ModelSchema commentSchema = Comment.schema;
    Map<String, dynamic> map = commentSchema.toMap();

    expect(map, {
      'name': 'Comment',
      'pluralName': 'Comments',
      'indexes': [
        {
          'name': 'byPost',
          'fields': ['postID', 'content']
        }
      ],
      'fields': {
        'id': {
          'name': 'id',
          'type': {'fieldType': 'string'},
          'isRequired': true,
          'isArray': false,
          'isReadOnly': false,
        },
        'post': {
          'name': 'post',
          'type': {'fieldType': 'model', 'ofModelName': 'Post'},
          'isRequired': false,
          'isArray': false,
          'isReadOnly': false,
          'association': {
            'associationType': 'BelongsTo',
            'targetNames': ['postID'],
            'associatedType': 'Post'
          },
        },
        'content': {
          'name': 'content',
          'type': {'fieldType': 'string'},
          'isRequired': true,
          'isArray': false,
          'isReadOnly': false,
        },
        'createdAt': {
          'name': 'createdAt',
          'type': {'fieldType': 'dateTime'},
          'isRequired': false,
          'isArray': false,
          'isReadOnly': true
        },
        'updatedAt': {
          'name': 'updatedAt',
          'type': {'fieldType': 'dateTime'},
          'isRequired': false,
          'isArray': false,
          'isReadOnly': true
        }
      }
    });
  });

  test('Post codegen model generates modelschema with proper fields', () async {
    ModelSchema postSchema = Post.schema;
    Map<String, dynamic> map = postSchema.toMap();

    expect(map, {
      'name': 'Post',
      'pluralName': 'Posts',
      'indexes': [
        {
          'name': 'byBlog',
          'fields': ['blogID']
        }
      ],
      'fields': {
        'id': {
          'name': 'id',
          'type': {'fieldType': 'string'},
          'isRequired': true,
          'isArray': false,
          'isReadOnly': false
        },
        'title': {
          'name': 'title',
          'type': {'fieldType': 'string'},
          'isRequired': true,
          'isArray': false,
          'isReadOnly': false
        },
        'rating': {
          'name': 'rating',
          'type': {'fieldType': 'int'},
          'isRequired': true,
          'isArray': false,
          'isReadOnly': false
        },
        'created': {
          'name': 'created',
          'type': {'fieldType': 'dateTime'},
          'isRequired': false,
          'isArray': false,
          'isReadOnly': false
        },
        'likeCount': {
          'name': 'likeCount',
          'type': {'fieldType': 'int'},
          'isRequired': false,
          'isArray': false,
          'isReadOnly': false
        },
        'blog': {
          'name': 'blog',
          'type': {'fieldType': 'model', 'ofModelName': 'Blog'},
          'isRequired': false,
          'isArray': false,
          'isReadOnly': false,
          'association': {
            'associationType': 'BelongsTo',
            'targetNames': ['blogID'],
            'associatedType': 'Blog'
          }
        },
        'comments': {
          'name': 'comments',
          'type': {'fieldType': 'collection', 'ofModelName': 'Comment'},
          'isRequired': false,
          'isArray': true,
          'isReadOnly': false,
          'association': {
            'associationType': 'HasMany',
            'associatedName': 'post',
            'associatedType': 'Comment'
          }
        },
        'createdAt': {
          'name': 'createdAt',
          'type': {'fieldType': 'dateTime'},
          'isRequired': false,
          'isArray': false,
          'isReadOnly': true
        },
        'updatedAt': {
          'name': 'updatedAt',
          'type': {'fieldType': 'dateTime'},
          'isRequired': false,
          'isArray': false,
          'isReadOnly': true
        }
      }
    });
  });

  test('PostAuthComplex codegen model generates modelschema with proper fields',
      () async {
    ModelSchema postAuthComplexSchema = PostWithAuthRules.schema;
    Map<String, dynamic> map = postAuthComplexSchema.toMap();

    expect(map, {
      'name': 'PostWithAuthRules',
      'pluralName': 'PostWithAuthRules',
      'authRules': [
        {
          'authStrategy': 'OWNER',
          'ownerField': 'owner',
          'identityClaim': 'cognito:username',
          'provider': 'USERPOOLS',
          'operations': ['CREATE', 'UPDATE', 'DELETE', 'READ']
        }
      ],
      'fields': {
        'id': {
          'name': 'id',
          'type': {'fieldType': 'string'},
          'isRequired': true,
          'isArray': false,
          'isReadOnly': false,
        },
        'title': {
          'name': 'title',
          'type': {'fieldType': 'string'},
          'isRequired': true,
          'isArray': false,
          'isReadOnly': false,
        },
        'owner': {
          'name': 'owner',
          'type': {'fieldType': 'string'},
          'isRequired': false,
          'isArray': false,
          'isReadOnly': false,
        },
        'createdAt': {
          'name': 'createdAt',
          'type': {'fieldType': 'dateTime'},
          'isRequired': false,
          'isArray': false,
          'isReadOnly': true
        },
        'updatedAt': {
          'name': 'updatedAt',
          'type': {'fieldType': 'dateTime'},
          'isRequired': false,
          'isArray': false,
          'isReadOnly': true
        }
      }
    });
  });
}
