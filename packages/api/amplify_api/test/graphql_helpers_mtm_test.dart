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

import 'package:amplify_api/src/api_plugin_impl.dart';
import 'package:amplify_api/src/graphql/helpers/graphql_response_decoder.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_test/test_models/many_to_many/MtmModelProvider.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';

final _deepEquals = const DeepCollectionEquality().equals;

class MockAmplifyAPI extends AmplifyAPIDart {
  MockAmplifyAPI({
    super.modelProvider,
  });
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('with ModelProvider manyToMany', () {
    setUpAll(() async {
      await Amplify.reset();
      await Amplify.addPlugin(
// needed to fetch the schema from within the helper
        MockAmplifyAPI(modelProvider: MtmModelProvider.instance),
      );
    });

    const manyToManyPrimarySelectionSet =
        'manyToManyPrimary { id name createdAt updatedAt }';
    const manyToManySecondarySelectionSet =
        'manyToManySecondary { id name createdAt updatedAt }';

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
          'manyToManyPrimaryID': 'mtmPrimaryId',
          'manyToManySecondaryID': 'mtmSecondaryId'
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
          'manyToManyPrimaryID': 'mtmPrimaryId',
          'manyToManySecondaryID': 'mtmSecondaryId'
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
