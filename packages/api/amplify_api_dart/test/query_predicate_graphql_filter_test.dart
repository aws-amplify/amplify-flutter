// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

import 'graphql_helpers_test.dart';
import 'test_models/ModelProvider.dart';
import 'util.dart';

enum Size { small, medium, large }

void main() {
  group('queryPredicateToGraphQLFilter()', () {
    setUpAll(() async {
      await Amplify.addPlugin(
        // needed to fetch the schema from within the helper
        MockAmplifyAPI(modelProvider: ModelProvider.instance),
      );
    });

    test('should be null safe', () {
      testQueryPredicateTranslation(null, null, modelType: Blog.classType);
    });

    test('simple query predicate converts to expected filter', () {
      const expectedTitle = 'Blog name ABC';
      const expectedFilter = {
        'name': {'eq': expectedTitle},
      };

      final queryPredicate = Blog.NAME.eq(expectedTitle);
      testQueryPredicateTranslation(
        queryPredicate,
        expectedFilter,
        modelType: Blog.classType,
      );
    });

    test('and query with string, and date', () {
      const dateString = '2019-11-23T02:06:50.689000000Z';
      final createdAt = TemporalDateTime(DateTime.parse(dateString));
      final queryPredicate = Post.ID.eq('id').and(Post.CREATED.eq(createdAt));
      const expectedFilter = {
        'and': [
          {
            'id': {'eq': 'id'},
          },
          {
            'created': {'eq': dateString},
          },
        ],
      };
      testQueryPredicateTranslation(
        queryPredicate,
        expectedFilter,
        modelType: Post.classType,
      );
    });

    test('not query converts to expected filter', () {
      final queryPredicate = not(Blog.ID.eq('id'));
      const expectedFilter = {
        'not': {
          'id': {'eq': 'id'},
        },
      };
      testQueryPredicateTranslation(
        queryPredicate,
        expectedFilter,
        modelType: Blog.classType,
      );
    });

    test(
        'query with with all possible string operators and-ed together converts to expected filter',
        () {
      // Note: this filter would not actually make sense for a real query.
      final queryPredicate = Blog.ID.ne('id') &
          Blog.ID.eq('id') &
          Blog.ID.lt('id') &
          Blog.ID.le('id') &
          Blog.ID.gt('id') &
          Blog.ID.ge('id') &
          Blog.ID.contains('id') &
          Blog.ID.between('id', 'id') &
          Blog.ID.beginsWith('id');

      const expectedFilter = {
        'and': [
          {
            'id': {'ne': 'id'},
          },
          {
            'id': {'eq': 'id'},
          },
          {
            'id': {'lt': 'id'},
          },
          {
            'id': {'le': 'id'},
          },
          {
            'id': {'gt': 'id'},
          },
          {
            'id': {'ge': 'id'},
          },
          {
            'id': {'contains': 'id'},
          },
          {
            'id': {
              'between': ['id', 'id'],
            },
          },
          {
            'id': {'beginsWith': 'id'},
          }
        ],
      };
      testQueryPredicateTranslation(
        queryPredicate,
        expectedFilter,
        modelType: Blog.classType,
      );
    });

    test('nested and(or()) operator converts to expected filter', () {
      final queryPredicate = Blog.ID.eq('id') &
          (Blog.NAME.beginsWith('Title') | Blog.NAME.contains('Turtles'));
      const expectedFilter = {
        'and': [
          {
            'id': {'eq': 'id'},
          },
          {
            'or': [
              {
                'name': {'beginsWith': 'Title'},
              },
              {
                'name': {'contains': 'Turtles'},
              }
            ],
          }
        ],
      };
      testQueryPredicateTranslation(
        queryPredicate,
        expectedFilter,
        modelType: Blog.classType,
      );
    });

    test('nested or(and()) operator converts to expected filter', () {
      final queryPredicate = Blog.ID.eq('id') |
          (Blog.NAME.beginsWith('Title') & Blog.NAME.contains('Turtles'));
      const expectedFilter = {
        'or': [
          {
            'id': {'eq': 'id'},
          },
          {
            'and': [
              {
                'name': {'beginsWith': 'Title'},
              },
              {
                'name': {'contains': 'Turtles'},
              }
            ],
          },
        ],
      };
      testQueryPredicateTranslation(
        queryPredicate,
        expectedFilter,
        modelType: Blog.classType,
      );
    });

    test('TemporalDateTime query converts to expected filter', () {
      const dateString = '2019-11-23T02:06:50.689000000Z';
      final exampleValue = TemporalDateTime(DateTime.parse(dateString));
      const expectedFilter = {
        'created': {'le': dateString},
      };
      final queryPredicate = Post.CREATED.le(exampleValue);

      testQueryPredicateTranslation(
        queryPredicate,
        expectedFilter,
        modelType: Post.classType,
      );
    });

    test('TemporalDate query converts to expected filter', () {
      const dateString = '2019-11-23';
      final exampleValue = TemporalDate(DateTime.parse(dateString));
      const expectedFilter = {
        'created': {'le': dateString},
      };
      final queryPredicate = Post.CREATED.le(exampleValue);

      testQueryPredicateTranslation(
        queryPredicate,
        expectedFilter,
        modelType: Post.classType,
      );
    });

    test('TemporalTime query converts to expected filter', () {
      const dateString = '02:06:50.689000000';
      final exampleValue = TemporalTime.fromString(dateString);
      const expectedFilter = {
        'created': {'le': dateString},
      };
      final queryPredicate = Post.CREATED.le(exampleValue);

      testQueryPredicateTranslation(
        queryPredicate,
        expectedFilter,
        modelType: Post.classType,
      );
    });

    test('DateTime converted to TemporalDateTime query', () {
      const dateString = '2019-11-23T02:06:50.689000000Z';
      final exampleValue = DateTime.parse(dateString);
      const expectedFilter = {
        'created': {'le': dateString},
      };
      final queryPredicate = Post.CREATED.le(exampleValue);

      testQueryPredicateTranslation(
        queryPredicate,
        expectedFilter,
        modelType: Post.classType,
      );
    });

    test('query child by parent ID', () {
      const blogId = 'blog-123';
      final queryPredicate = Post.BLOG.eq(blogId);
      final expectedFilter = {
        'blogID': {'eq': blogId},
      };

      testQueryPredicateTranslation(
        queryPredicate,
        expectedFilter,
        modelType: Post.classType,
      );
    });

    test('query with enum should serialize to string', () {
      // Note: enums are not actually in the codegen model. Nonetheless, we
      // expect this predicate to translate as follows.
      final queryPredicate = Post.TITLE.eq(Size.medium);
      final expectedFilter = {
        'title': {'eq': Size.medium.name},
      };

      testQueryPredicateTranslation(
        queryPredicate,
        expectedFilter,
        modelType: Post.classType,
      );
    });
  });
}
