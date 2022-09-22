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

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/graphql/graphql_response_decoder.dart';
import 'package:amplify_api/src/graphql/utils.dart';
import 'package:amplify_api/src/method_channel_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:amplify_test/test_models/many_to_many/MtmModelProvider.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';

final _deepEquals = const DeepCollectionEquality().equals;

class MockAmplifyAPI extends AmplifyAPIMethodChannel {
  MockAmplifyAPI({
    ModelProviderInterface? modelProvider,
  }) : super(modelProvider: modelProvider);

  @override
  void registerAuthProvider(APIAuthProvider authProvider) {}

  @override
  Future<void> addPlugin() async {}
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Amplify = MethodChannelAmplify();

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
      String id = UUID.getUUID();
      const expectedDoc = 'query getFirstMtmRelation(\$id: ID!) { '
          'getFirstMtmRelation(id: \$id) { '
          '$mtmRelationSelectionSet } }';

      GraphQLRequest<FirstMtmRelation> req =
          ModelQueries.get<FirstMtmRelation>(FirstMtmRelation.classType, id);

      expect(req.document, expectedDoc);
      expect(_deepEquals(req.variables, {'id': id}), isTrue);
      expect(req.modelType, FirstMtmRelation.classType);
      expect(req.decodePath, 'getFirstMtmRelation');
    });

    test(
        'ModelMutations.create() on mtmRelationModel should have both relationships',
        () {
      const expectedDoc = 'mutation createFirstMtmRelation('
          '\$input: CreateFirstMtmRelationInput!, '
          '\$condition:  ModelFirstMtmRelationConditionInput) { '
          'createFirstMtmRelation(input: \$input, condition: \$condition) '
          '{ $mtmRelationSelectionSet } }';
      final expectedVars = {
        'input': {
          'id': 'firstMtmRelationId',
          'manyToManyPrimaryID': 'mtmPrimaryId',
          'manyToManySecondaryID': 'mtmSecondaryId'
        }
      };

      ManyToManyPrimary primary = ManyToManyPrimary(
        id: 'mtmPrimaryId',
        name: 'first',
      );
      ManyToManySecondary secondary =
          ManyToManySecondary(id: 'mtmSecondaryId', name: 'second');

      FirstMtmRelation relation = FirstMtmRelation(
          id: 'firstMtmRelationId',
          manyToManyPrimary: primary,
          manyToManySecondary: secondary);
      GraphQLRequest<FirstMtmRelation> req =
          ModelMutations.create<FirstMtmRelation>(relation);

      expect(req.document, expectedDoc);
      expect(_deepEquals(req.variables, expectedVars), isTrue);
      expect(req.modelType, FirstMtmRelation.classType);
      expect(req.decodePath, 'createFirstMtmRelation');
    });

    test(
        'ModelMutations.update() on mtmRelationModel should have both relationships',
        () {
      const expectedDoc = 'mutation updateFirstMtmRelation('
          '\$input: UpdateFirstMtmRelationInput!, '
          '\$condition:  ModelFirstMtmRelationConditionInput) { '
          'updateFirstMtmRelation(input: \$input, condition: \$condition) '
          '{ $mtmRelationSelectionSet } }';
      final expectedVars = {
        'input': {
          'id': 'firstMtmRelationId',
          'manyToManyPrimaryID': 'mtmPrimaryId',
          'manyToManySecondaryID': 'mtmSecondaryId'
        },
        'condition': null
      };

      ManyToManyPrimary primary = ManyToManyPrimary(
        id: 'mtmPrimaryId',
        name: 'first',
      );
      ManyToManySecondary secondary =
          ManyToManySecondary(id: 'mtmSecondaryId', name: 'second');

      FirstMtmRelation relation = FirstMtmRelation(
          id: 'firstMtmRelationId',
          manyToManyPrimary: primary,
          manyToManySecondary: secondary);
      GraphQLRequest<FirstMtmRelation> req =
          ModelMutations.update<FirstMtmRelation>(relation);

      expect(req.document, expectedDoc);
      expect(_deepEquals(req.variables, expectedVars), isTrue);
      expect(req.modelType, FirstMtmRelation.classType);
      expect(req.decodePath, 'updateFirstMtmRelation');
    });

    test('Multiple belongsTo children of FirstMtmRelation properly decoded',
        () {
      GraphQLRequest<PaginatedResult<FirstMtmRelation>> req =
          ModelQueries.list<FirstMtmRelation>(FirstMtmRelation.classType,
              limit: 2);

      List<GraphQLResponseError> errors = [];
      String data = '''{
          "listFirstMtmRelations": {
            "items": [
              {
                "id": "id-first-mtm-relation",
                "manyToManyPrimary": {
                  "id": "id-mtm-primary",
                  "name": "mtm primary"
                },
                "manyToManySecondary": {
                  "id": "id-mtm-secondary",
                  "name": "mtm secondary"
                }                
              }
            ]
          }
        }''';

      GraphQLResponse<PaginatedResult<FirstMtmRelation>> response =
          GraphQLResponseDecoder.instance
              .decode<PaginatedResult<FirstMtmRelation>>(
                  request: req, data: data, errors: errors);

      expect(response.data, isA<PaginatedResult<FirstMtmRelation>>());
      expect(response.data?.items, isA<List<FirstMtmRelation?>>());
      expect(response.data?.items.length, 1);

      ManyToManyPrimary mtmPrimary =
          (response.data!.items[0] as FirstMtmRelation).manyToManyPrimary;
      expect(mtmPrimary.id, 'id-mtm-primary');
      expect(mtmPrimary.name, 'mtm primary');

      ManyToManySecondary mtmSecondary =
          (response.data!.items[0] as FirstMtmRelation).manyToManySecondary;
      expect(mtmSecondary.id, 'id-mtm-secondary');
      expect(mtmSecondary.name, 'mtm secondary');
    });
  });
}
