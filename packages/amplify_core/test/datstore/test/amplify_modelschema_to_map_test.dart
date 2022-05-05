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

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';

import 'testData/ModelProvider.dart';

void main() {
  test('Blog codegen model generates modelschema with proper fields', () async {
    ModelSchema blogSchema = Blog.schema;
    Map<String, dynamic> map = blogSchema.toMap();

    expect(map, {
      'name': "Blog",
      'pluralName': "Blogs",
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

  test('Comment codegen model generates modelschema with proper fields',
      () async {
    ModelSchema commentSchema = Comment.schema;
    Map<String, dynamic> map = commentSchema.toMap();

    expect(map, {
      'name': 'Comment',
      'pluralName': 'Comments',
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
            'targetName': 'postID',
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
            'targetName': 'blogID',
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
    ModelSchema postAuthComplexSchema = PostAuthComplex.schema;
    Map<String, dynamic> map = postAuthComplexSchema.toMap();

    expect(map, {
      'name': 'PostAuthComplex',
      'pluralName': 'PostAuthComplexes',
      'authRules': [
        {
          'authStrategy': 'OWNER',
          'ownerField': 'owner',
          'identityClaim': 'cognito:username',
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
