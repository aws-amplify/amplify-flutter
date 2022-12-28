// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/has_many_bidirectional/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('HasMany (bi-directional with implicit connection field', () {
    // schema
    // type HasManyParentBiDirectionalExplicit @model {
    //   id: ID!
    //   name: String
    //   biDirectionalExplicitChildren: [HasManyChildBiDirectionalExplicit]
    //     @hasMany(indexName: "byHasManyParent", fields: ["id"])
    // }

    // type HasManyChildBiDirectionalExplicit @model {
    //   id: ID!
    //   name: String
    //   hasManyParentId: ID! @index(name: "byHasManyParent", sortKeyFields: ["name"])
    //   hasManyParent: HasManyParentBiDirectionalExplicit
    //     @belongsTo(fields: ["hasManyParentId"])
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var rootModels = [
      HasManyParentBiDirectionalExplicit(name: 'has many parent (explicit)')
    ];
    var associatedModels = List.generate(
      5,
      (i) => HasManyChildBiDirectionalExplicit(
        name: 'has many child $i (explicit)',
        hasManyParent: rootModels.first,
      ),
    );
    var associatedModelQueryPredicates = associatedModels
        .map(
          (associatedModel) =>
              HasManyChildBiDirectionalExplicit.NAME.eq(associatedModel.name),
        )
        .toList();

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: HasManyParentBiDirectionalExplicit.classType,
      rootModels: rootModels,
      rootModelQueryIdentifier:
          HasManyParentBiDirectionalExplicit.MODEL_IDENTIFIER,
      associatedModelType: HasManyChildBiDirectionalExplicit.classType,
      associatedModels: associatedModels,
      associatedModelQueryIdentifier:
          HasManyChildBiDirectionalExplicit.MODEL_IDENTIFIER,
      associatedModelQueryPredicates: associatedModelQueryPredicates,
      supportCascadeDelete: true,
      enableCloudSync: enableCloudSync,
      verifyBelongsToPopulating: true,
    );
  });
}
