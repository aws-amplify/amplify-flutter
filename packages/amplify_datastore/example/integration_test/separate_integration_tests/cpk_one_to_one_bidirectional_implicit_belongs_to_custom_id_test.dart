// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/cpk_one_to_one_bidirectional_custom_id/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
      'Bidirectional one-one (child refers parent with implicit fields, parent has custom id)',
      () {
    // schema
    // type CpkOneToOneBidirectionalParent @model {
    //   id: ID! @primaryKey(sortKeyFields: ["name"])
    //   name: String!
    //   implicitChild: CpkOneToOneBidirectionalChildImplicit @hasOne
    // }
    //
    // type CpkOneToOneBidirectionalChildImplicit @model {
    //   id: ID! @primaryKey(sortKeyFields: ["name"])
    //   name: String!
    //   belongsToParent: CpkOneToOneBidirectionalParent @belongsTo
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var rootModels = [
      CpkOneToOneBidirectionalParentCD(
        customId: UUID.getUUID(),
        name: "the parent",
      )
    ];
    var associatedModels = [
      CpkOneToOneBidirectionalChildImplicitCD(
        name: 'belongs to child (explicit)',
        belongsToParent: rootModels.first,
      )
    ];
    var associatedModelQueryPredicates = [
      CpkOneToOneBidirectionalChildImplicitCD.NAME.eq(
        associatedModels.first.name,
      ),
    ];
    var associatedModelNeQueryPredicates = [
      CpkOneToOneBidirectionalChildImplicitCD.NAME.ne(
        associatedModels.first.name,
      ),
    ];

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: CpkOneToOneBidirectionalParentCD.classType,
      rootModels: rootModels,
      rootModelQueryIdentifier:
          CpkOneToOneBidirectionalParentCD.MODEL_IDENTIFIER,
      associatedModelType: CpkOneToOneBidirectionalChildImplicitCD.classType,
      associatedModels: associatedModels,
      associatedModelQueryIdentifier:
          CpkOneToOneBidirectionalChildImplicitCD.MODEL_IDENTIFIER,
      supportCascadeDelete: true,
      enableCloudSync: enableCloudSync,
      associatedModelQueryPredicates: associatedModelQueryPredicates,
      associatedModelQueryNePredicates: associatedModelNeQueryPredicates,
      verifyBelongsToPopulating: true,
      testNeOperationOnBelongsTo: true,
    );
  });
}
