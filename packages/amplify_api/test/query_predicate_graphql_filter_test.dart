import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/graphql/graphql_request_factory.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('queryPredicateToGraphQLFilter()', () {
    // needed to fetch the schema from within the helper
    AmplifyAPI(modelProvider: ModelProvider.instance);

    // helper method for all the tests
    void _testQueryPredicateTranslation(
        QueryPredicate? queryPredicate, Map<String, dynamic>? expectedFilter) {
      final resultFilter = GraphQLRequestFactory.instance
          .queryPredicateToGraphQLFilter(queryPredicate, Blog.classType);
      expect(resultFilter, expectedFilter);
    }

    test('should be null safe', () {
      _testQueryPredicateTranslation(null, null);
    });

    test('simple query predicate converts to expected filter', () {
      const expectedTitle = 'Blog name ABC';
      const expectedFilter = {
        'name': {'eq': expectedTitle}
      };

      final queryPredicate = Blog.NAME.eq(expectedTitle);
      _testQueryPredicateTranslation(queryPredicate, expectedFilter);
    });

    test('and query with string, and date', () {
      const dateString = '2019-11-23T02:06:50.689000000Z';
      final createdAt = TemporalDateTime(DateTime.parse(dateString));
      final queryPredicate = Blog.ID.eq('id').and(Blog.CREATEDAT.eq(createdAt));
      const expectedFilter = {
        'and': [
          {
            'id': {'eq': 'id'}
          },
          {
            'createdAt': {'eq': dateString}
          },
        ]
      };
      _testQueryPredicateTranslation(queryPredicate, expectedFilter);
    });

    test('not query converts to expected filter', () {
      final queryPredicate = not(Blog.ID.eq('id'));
      const expectedFilter = {
        'not': {
          'id': {'eq': 'id'}
        }
      };
      _testQueryPredicateTranslation(queryPredicate, expectedFilter);
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
            'id': {'ne': 'id'}
          },
          {
            'id': {'eq': 'id'}
          },
          {
            'id': {'lt': 'id'}
          },
          {
            'id': {'le': 'id'}
          },
          {
            'id': {'gt': 'id'}
          },
          {
            'id': {'ge': 'id'}
          },
          {
            'id': {'contains': 'id'}
          },
          {
            'id': {
              'between': ['id', 'id']
            }
          },
          {
            'id': {'beginsWith': 'id'}
          }
        ]
      };
      _testQueryPredicateTranslation(queryPredicate, expectedFilter);
    });

    test('nested and(or()) operator converts to expected filter', () {
      final queryPredicate = Blog.ID.eq('id') &
          (Blog.NAME.beginsWith('Title') | Blog.NAME.contains('Turtles'));
      const expectedFilter = {
        'and': [
          {
            'id': {'eq': 'id'}
          },
          {
            'or': [
              {
                'name': {'beginsWith': 'Title'}
              },
              {
                'name': {'contains': 'Turtles'}
              }
            ]
          }
        ]
      };
      _testQueryPredicateTranslation(queryPredicate, expectedFilter);
    });

    test('nested or(and()) operator converts to expected filter', () {
      final queryPredicate = Blog.ID.eq('id') |
          (Blog.NAME.beginsWith('Title') & Blog.NAME.contains('Turtles'));
      const expectedFilter = {
        'or': [
          {
            'id': {'eq': 'id'}
          },
          {
            'and': [
              {
                'name': {'beginsWith': 'Title'}
              },
              {
                'name': {'contains': 'Turtles'}
              }
            ]
          },
        ]
      };
      _testQueryPredicateTranslation(queryPredicate, expectedFilter);
    });

    test('TemporalDateTime query converts to expected filter', () {
      const dateString = '2019-11-23T02:06:50.689000000Z';
      final exampleValue = TemporalDateTime(DateTime.parse(dateString));
      const expectedFilter = {
        'createdAt': {'le': dateString}
      };
      final queryPredicate = Blog.CREATEDAT.le(exampleValue);

      _testQueryPredicateTranslation(queryPredicate, expectedFilter);
    });

    test('TemporalDate query converts to expected filter', () {
      const dateString = '2019-11-23';
      final exampleValue = TemporalDate(DateTime.parse(dateString));
      const expectedFilter = {
        'createdAt': {'le': dateString}
      };
      final queryPredicate = Blog.CREATEDAT.le(exampleValue);

      _testQueryPredicateTranslation(queryPredicate, expectedFilter);
    });

    test('TemporalTime query converts to expected filter', () {
      const dateString = '02:06:50.689000000';
      final exampleValue = TemporalTime.fromString(dateString);
      const expectedFilter = {
        'createdAt': {'le': dateString}
      };
      final queryPredicate = Blog.CREATEDAT.le(exampleValue);

      _testQueryPredicateTranslation(queryPredicate, expectedFilter);
    });

    test('DateTime converted to TemporalDateTime query', () {
      const dateString = '2019-11-23T02:06:50.689000000Z';
      final exampleValue = DateTime.parse(dateString);
      const expectedFilter = {
        'createdAt': {'le': dateString}
      };
      final queryPredicate = Blog.CREATEDAT.le(exampleValue);

      _testQueryPredicateTranslation(queryPredicate, expectedFilter);
    });
  });
}
