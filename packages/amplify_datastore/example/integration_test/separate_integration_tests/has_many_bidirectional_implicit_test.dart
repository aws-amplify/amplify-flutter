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
    // type HasManyParentBiDirectionalImplicit @model {
    //   id: ID!
    //   name: String
    //   biDirectionalImplicitChildren: [HasManyChildBiDirectionalImplicit] @hasMany
    // }

    // type HasManyChildBiDirectionalImplicit @model {
    //   id: ID!
    //   name: String
    //   hasManyParent: HasManyParentBiDirectionalImplicit @belongsTo
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var rootModels = [
      HasManyParentBiDirectionalImplicit(
        name: 'has many parent (explicit)',
      )
    ];
    var associatedModels = List.generate(
      5,
      (i) => HasManyChildBiDirectionalImplicit(
        name: 'has many child $i (explicit)',
        hasManyParent: rootModels.first,
      ),
    );
    var associatedModelQueryPredicates = associatedModels
        .map(
          (associatedModel) =>
              HasManyChildBiDirectionalImplicit.NAME.eq(associatedModel.name),
        )
        .toList();

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: HasManyParentBiDirectionalImplicit.classType,
      rootModels: rootModels,
      rootModelQueryIdentifier:
          HasManyParentBiDirectionalImplicit.MODEL_IDENTIFIER,
      associatedModelType: HasManyChildBiDirectionalImplicit.classType,
      associatedModels: associatedModels,
      associatedModelQueryIdentifier:
          HasManyChildBiDirectionalImplicit.MODEL_IDENTIFIER,
      associatedModelQueryPredicates: associatedModelQueryPredicates,
      supportCascadeDelete: true,
      enableCloudSync: enableCloudSync,
      verifyBelongsToPopulating: true,
    );
  });
}
