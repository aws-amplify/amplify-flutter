// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api_dart/amplify_api_dart.dart';
import 'package:amplify_api_dart/src/graphql/helpers/graphql_response_decoder.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:test/test.dart';

import 'test_models/many_to_many/MtmModelProvider.dart';

final _deepEquals = const DeepCollectionEquality().equals;

class MockAmplifyAPI extends AmplifyAPIDart {
  MockAmplifyAPI({
    super.modelProvider,
  });
}

void main() {
  group('with ModelProvider manyToMany', () {
    setUpAll(() async {
      await Amplify.reset();
      await Amplify.addPlugin(
// needed to fetch the schema from within the helper
        MockAmplifyAPI(modelProvider: MtmModelProvider.instance),
      );
    });

    const manyToManyPrimarySelectionSet =
        'manyToManyPrimary { id name createdAt updatedAt } manyToManyPrimaryId';
    const manyToManySecondarySelectionSet =
        'manyToManySecondary { id name createdAt updatedAt } manyToManySecondaryId';

    const mtmRelationSelectionSet = 'id createdAt updatedAt '
        '$manyToManyPrimarySelectionSet '
        '$manyToManySecondarySelectionSet';

    test(
        'ModelMutations.get() on firstMtmRelationModel should get both relationships',
        () {
      final id = UUID.getUUID();
      const expectedDoc = r'query getFirstMtmRelation($id: ID!) { '
          r'getFirstMtmRelation(id: $id) { '
          '$mtmRelationSelectionSet } }';

      final req =
          ModelQueries.get<FirstMtmRelation>(FirstMtmRelation.classType, id);

      expect(req.document, expectedDoc);
      expect(_deepEquals(req.variables, {'id': id}), isTrue);
      expect(req.modelType, FirstMtmRelation.classType);
      expect(req.decodePath, 'getFirstMtmRelation');
    });

    test(
        'ModelMutations.create() on mtmRelationModel should have both relationships',
        () {
      //ignore: missing_whitespace_between_adjacent_strings
      const expectedDoc = 'mutation createFirstMtmRelation('
          r'$input: CreateFirstMtmRelationInput!, '
          r'$condition:  ModelFirstMtmRelationConditionInput) { '
          r'createFirstMtmRelation(input: $input, condition: $condition) '
          '{ $mtmRelationSelectionSet } }';
      final expectedVars = {
        'input': {
          'id': 'firstMtmRelationId',
          'manyToManyPrimaryId': 'mtmPrimaryId',
          'manyToManySecondaryId': 'mtmSecondaryId'
        }
      };

      final primary = ManyToManyPrimary(
        id: 'mtmPrimaryId',
        name: 'first',
      );
      final secondary =
          ManyToManySecondary(id: 'mtmSecondaryId', name: 'second');

      final relation = FirstMtmRelation(
        id: 'firstMtmRelationId',
        manyToManyPrimary: primary,
        manyToManySecondary: secondary,
      );
      final req = ModelMutations.create<FirstMtmRelation>(relation);

      expect(req.document, expectedDoc);
      expect(_deepEquals(req.variables, expectedVars), isTrue);
      expect(req.modelType, FirstMtmRelation.classType);
      expect(req.decodePath, 'createFirstMtmRelation');
    });

    test(
        'ModelMutations.update() on mtmRelationModel should have both relationships',
        () {
      //ignore: missing_whitespace_between_adjacent_strings
      const expectedDoc = 'mutation updateFirstMtmRelation('
          r'$input: UpdateFirstMtmRelationInput!, '
          r'$condition:  ModelFirstMtmRelationConditionInput) { '
          r'updateFirstMtmRelation(input: $input, condition: $condition) '
          '{ $mtmRelationSelectionSet } }';
      final expectedVars = {
        'input': {
          'id': 'firstMtmRelationId',
          'manyToManyPrimaryId': 'mtmPrimaryId',
          'manyToManySecondaryId': 'mtmSecondaryId'
        },
        'condition': null
      };

      final primary = ManyToManyPrimary(
        id: 'mtmPrimaryId',
        name: 'first',
      );
      final secondary =
          ManyToManySecondary(id: 'mtmSecondaryId', name: 'second');

      final relation = FirstMtmRelation(
        id: 'firstMtmRelationId',
        manyToManyPrimary: primary,
        manyToManySecondary: secondary,
      );
      final req = ModelMutations.update<FirstMtmRelation>(relation);

      expect(req.document, expectedDoc);
      expect(_deepEquals(req.variables, expectedVars), isTrue);
      expect(req.modelType, FirstMtmRelation.classType);
      expect(req.decodePath, 'updateFirstMtmRelation');
    });

    test('Multiple belongsTo children of FirstMtmRelation properly decoded',
        () {
      final req = ModelQueries.list<FirstMtmRelation>(
        FirstMtmRelation.classType,
        limit: 2,
      );

      const data = {
        'listFirstMtmRelations': {
          'items': [
            {
              'id': 'id-first-mtm-relation',
              'manyToManyPrimary': {
                'id': 'id-mtm-primary',
                'name': 'mtm primary'
              },
              'manyToManySecondary': {
                'id': 'id-mtm-secondary',
                'name': 'mtm secondary'
              }
            }
          ]
        }
      };

      final response = GraphQLResponseDecoder.instance
          .decode<PaginatedResult<FirstMtmRelation>>(
        request: req,
        response: {
          'data': data,
          'errors': null,
        },
      );

      expect(response.data, isA<PaginatedResult<FirstMtmRelation>>());
      expect(response.data?.items, isA<List<FirstMtmRelation?>>());
      expect(response.data?.items.length, 1);

      final mtmPrimary =
          (response.data!.items[0] as FirstMtmRelation).manyToManyPrimary;
      expect(mtmPrimary.id, 'id-mtm-primary');
      expect(mtmPrimary.name, 'mtm primary');

      final mtmSecondary =
          (response.data!.items[0] as FirstMtmRelation).manyToManySecondary;
      expect(mtmSecondary.id, 'id-mtm-secondary');
      expect(mtmSecondary.name, 'mtm secondary');
    });
  });
}
