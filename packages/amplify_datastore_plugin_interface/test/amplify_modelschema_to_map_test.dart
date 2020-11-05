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

import 'package:flutter_test/flutter_test.dart';

import './testData/index.dart';

void main() {
  test('Blog codegen model generates modelschema with proper fields', () async {
    ModelSchema blogSchema = Blog.schema;
    Map<String, dynamic> map = blogSchema.toMap();

    expect(map, {
      'name': "Blog",
      'pluralName': "Blogs",
      'authRules': const [],
      'fields': {
        'id': {
          'name': "id",
          'type': {'fieldType': 0, 'ofModelName': ""},
          'isRequired': true,
          'isArray': false,
          'association': const {},
          'authRules': const [],
        },
        'name': {
          'name': "name",
          'type': {'fieldType': 0, 'ofModelName': ""},
          'isRequired': true,
          'isArray': false,
          'association': const {},
          'authRules': const []
        },
        'posts': {
          'name': "posts",
          'type': {'fieldType': 10, 'ofModelName': "Post"},
          'isRequired': false,
          'isArray': true,
          'association': const {
            'associationType': 0,
            'targetName': "",
            'associatedName': "blog",
            'associatedType': "Blog"
          },
          'authRules': const []
        },
      }
    });
  });

  test('Comment codegen model generates modelschema with proper fields',
      () async {
    ModelSchema commentSchema = Comment.schema;
    Map<String, dynamic> map = commentSchema.toMap();

    expect(map, {});

    expect(map, {
      'name': 'Comment',
      'pluralName': 'Comments',
      'authRules': [],
      'fields': {
        'id': {
          'name': 'id',
          'type': {'fieldType': 0, 'ofModelName': ''},
          'isRequired': true,
          'isArray': false,
          'association': {},
          'authRules': []
        },
        'post': {
          'name': 'post',
          'type': {'fieldType': 9, 'ofModelName': 'Post'},
          'isRequired': false,
          'isArray': false,
          'association': {
            'associationType': 2,
            'targetName': 'postID',
            'associatedName': null,
            'associatedType': null
          },
          'authRules': []
        },
        'content': {
          'name': 'content',
          'type': {'fieldType': 0, 'ofModelName': ''},
          'isRequired': true,
          'isArray': false,
          'association': {},
          'authRules': []
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
      'authRules': [],
      'fields': {
        'id': {
          'name': 'id',
          'type': {'fieldType': 0, 'ofModelName': ''},
          'isRequired': true,
          'isArray': false,
          'association': {},
          'authRules': []
        },
        'title': {
          'name': 'title',
          'type': {'fieldType': 0, 'ofModelName': ''},
          'isRequired': true,
          'isArray': false,
          'association': {},
          'authRules': []
        },
        'blog': {
          'name': 'blog',
          'type': {'fieldType': 9, 'ofModelName': 'Blog'},
          'isRequired': false,
          'isArray': false,
          'association': {
            'associationType': 2,
            'targetName': 'blogID',
            'associatedName': null,
            'associatedType': null
          },
          'authRules': []
        },
        'comments': {
          'name': 'comments',
          'type': {'fieldType': 10, 'ofModelName': 'Comment'},
          'isRequired': false,
          'isArray': true,
          'association': {
            'associationType': 0,
            'targetName': '',
            'associatedName': 'post',
            'associatedType': 'Post'
          },
          'authRules': []
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
          'authStrategy': 0,
          'ownerField': 'owner',
          'identityClaim': 'cognito:username',
          'groupClaim': '',
          'groups': null,
          'groupsField': '',
          'operations': [0, 1, 2, 3]
        }
      ],
      'fields': {
        'id': {
          'name': 'id',
          'type': {'fieldType': 0, 'ofModelName': ''},
          'isRequired': true,
          'isArray': false,
          'association': {},
          'authRules': []
        },
        'title': {
          'name': 'title',
          'type': {'fieldType': 0, 'ofModelName': ''},
          'isRequired': true,
          'isArray': false,
          'association': {},
          'authRules': []
        },
        'owner': {
          'name': 'owner',
          'type': {'fieldType': 0, 'ofModelName': ''},
          'isRequired': false,
          'isArray': false,
          'association': {},
          'authRules': []
        }
      }
    });
  });
}
