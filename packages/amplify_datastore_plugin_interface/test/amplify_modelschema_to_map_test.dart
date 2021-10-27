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
        },
        'name': {
          'name': "name",
          'type': {'fieldType': 'string'},
          'isRequired': true,
          'isArray': false,
        },
        'posts': {
          'name': "posts",
          'type': {'fieldType': 'collection', 'ofModelName': "Post"},
          'isRequired': false,
          'isArray': true,
          'association': const {
            'associationType': 'HasMany',
            'associatedName': "blog",
            'associatedType': "Post"
          }
        },
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
        },
        'post': {
          'name': 'post',
          'type': {'fieldType': 'model', 'ofModelName': 'Post'},
          'isRequired': false,
          'isArray': false,
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
        },
        'title': {
          'name': 'title',
          'type': {'fieldType': 'string'},
          'isRequired': true,
          'isArray': false,
        },
        'rating': {
          'name': 'rating',
          'type': {'fieldType': 'int'},
          'isRequired': true,
          'isArray': false,
        },
        'created': {
          'name': 'created',
          'type': {'fieldType': 'dateTime'},
          'isRequired': true,
          'isArray': false,
        },
        'blog': {
          'name': 'blog',
          'type': {'fieldType': 'model', 'ofModelName': 'Blog'},
          'isRequired': false,
          'isArray': false,
          'association': {
            'associationType': 'BelongsTo',
            'targetName': 'blogID',
            'associatedType': 'Blog'
          },
        },
        'comments': {
          'name': 'comments',
          'type': {'fieldType': 'collection', 'ofModelName': 'Comment'},
          'isRequired': false,
          'isArray': true,
          'association': {
            'associationType': 'HasMany',
            'associatedName': 'post',
            'associatedType': 'Comment'
          },
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
        },
        'title': {
          'name': 'title',
          'type': {'fieldType': 'string'},
          'isRequired': true,
          'isArray': false,
        },
        'owner': {
          'name': 'owner',
          'type': {'fieldType': 'string'},
          'isRequired': false,
          'isArray': false,
        }
      }
    });
  });
}
