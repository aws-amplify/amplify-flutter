// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:test/test.dart';

import 'common.dart';

// Follows the tests found in amplify-codegen:
// https://github.com/aws-amplify/amplify-category-api/blob/main/packages/amplify-graphql-relational-transformer/src/__tests__/amplify-graphql-belongs-to-transformer.test.ts
void main() {
  group('belongsTo', () {
    test('implicit fields', () {
      const schema = '''
      type Test @model {
        id: ID! 
        email: String!
        otherHalf: Test1 @hasOne
      }

      type Test1 @model {
        id: ID!
        friendID: ID!
        email: String!
        otherHalf2: Test @belongsTo 
      }
      ''';

      final models = parseModels(schema);
      expect(
        models['Test']!.fields.keys,
        containsAll([
          'id',
          'email',
          'testOtherHalfId',
        ]),
      );
      expect(
        models['Test1']!.fields.keys,
        containsAll([
          'id',
          'friendID',
          'email',
          'test1OtherHalf2Id',
        ]),
      );
    });

    test('bidi @hasMany', () {
      const schema = '''
      type Blog @model {
        id: ID!
        postsField: [Post] @hasMany
      }

      type Post @model {
        id: ID!
        blogField: Blog @belongsTo
      }
      ''';

      final models = parseModels(schema);
      expect(
        models['Post']!.fields.keys,
        allOf([
          isNot(contains('postBlogFieldId')),
          contains('blogPostsFieldId'),
        ]),
        reason: 'Should not generate extra connecting field for @hasMany',
      );
    });
  });
}
