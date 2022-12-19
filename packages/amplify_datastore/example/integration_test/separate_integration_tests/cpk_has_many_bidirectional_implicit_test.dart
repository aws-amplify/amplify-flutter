// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/cpk_has_many_bidirectional/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('HasMany (bi-directional with implicit connection field', () {
    // schema
    // type CpkHasManyParentBidirectionalImplicit @model {
    //   id: ID! @primaryKey(sortKeyFields: ["name"])
    //   name: String!
    //   bidirectionalImplicitChildren: [CpkHasManyChildBidirectionalImplicit] @hasMany
    // }

    // type CpkHasManyChildBidirectionalImplicit @model {
    //   id: ID! @primaryKey(sortKeyFields: ["name"])
    //   name: String!
    //   hasManyParent: CpkHasManyParentBidirectionalImplicit @belongsTo
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var rootModels = [
      CpkHasManyParentBidirectionalImplicit(name: 'has many parent (explicit)')
    ];
    var associatedModels = List.generate(
      5,
      (i) => CpkHasManyChildBidirectionalImplicit(
        name: 'has many child $i (explicit)',
        hasManyParent: rootModels.first,
      ),
    );
    var associatedModelQueryPredicates = associatedModels
        .map(
          (associatedModel) => CpkHasManyChildBidirectionalImplicit.NAME
              .eq(associatedModel.name),
        )
        .toList();
    var associatedModelNeQueryPredicates = associatedModels
        .map(
          (associatedModel) =>
              CpkHasManyChildBidirectionalImplicit.MODEL_IDENTIFIER.ne(
            associatedModel.modelIdentifier,
          ),
        )
        .toList();

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: CpkHasManyParentBidirectionalImplicit.classType,
      rootModels: rootModels,
      rootModelQueryIdentifier:
          CpkHasManyParentBidirectionalImplicit.MODEL_IDENTIFIER,
      associatedModelType: CpkHasManyChildBidirectionalImplicit.classType,
      associatedModels: associatedModels,
      associatedModelQueryIdentifier:
          CpkHasManyChildBidirectionalImplicit.MODEL_IDENTIFIER,
      associatedModelQueryPredicates: associatedModelQueryPredicates,
      associatedModelQueryNePredicates: associatedModelNeQueryPredicates,
      supportCascadeDelete: true,
      enableCloudSync: enableCloudSync,
      verifyBelongsToPopulating: true,
      testNeOperationOnBelongsTo: true,
    );
  });
}
