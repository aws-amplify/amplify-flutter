// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/cpk_one_to_one_bidirectional/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Bidirectional one-one (child refers parent with implicit fields)', () {
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
      CpkOneToOneBidirectionalParentID(
        name: "the parent",
      )
    ];
    var associatedModels = [
      CpkOneToOneBidirectionalChildImplicitID(
        name: 'belongs to child (implicit)',
        belongsToParent: rootModels.first,
      )
    ];

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: CpkOneToOneBidirectionalParentID.classType,
      rootModels: rootModels,
      rootModelQueryIdentifier:
          CpkOneToOneBidirectionalParentID.MODEL_IDENTIFIER,
      associatedModelType: CpkOneToOneBidirectionalChildImplicitID.classType,
      associatedModels: associatedModels,
      associatedModelQueryIdentifier:
          CpkOneToOneBidirectionalChildImplicitID.MODEL_IDENTIFIER,
      supportCascadeDelete: true,
      enableCloudSync: enableCloudSync,
    );
  });
}
