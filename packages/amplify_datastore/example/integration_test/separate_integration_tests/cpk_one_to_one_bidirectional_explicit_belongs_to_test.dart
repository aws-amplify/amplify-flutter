// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/cpk_one_to_one_bidirectional/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Bidirectional one-one (child refers parent with explicit fields)', () {
    // schema
    // type CpkOneToOneBidirectionalParent @model {
    //   id: ID! @primaryKey(sortKeyFields: ["name"])
    //   name: String!
    //   explicitChild: CpkOneToOneBidirectionalChildExplicit @hasOne
    // }
    //
    // type CpkOneToOneBidirectionalChildExplicit @model {
    //   id: ID! @primaryKey(sortKeyFields: ["name"])
    //   name: String!
    //   belongsToParentID: ID
    //   belongsToParentName: String
    //   belongsToParent: CpkOneToOneBidirectionalParent
    //     @belongsTo(fields: ["belongsToParentID", "belongsToParentName"])
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var rootModels = [
      CpkOneToOneBidirectionalParentID(
        name: "the parent",
      )
    ];
    var associatedModels = [
      CpkOneToOneBidirectionalChildExplicitID(
        name: 'belongs to child (explicit)',
        belongsToParent: rootModels.first,
      )
    ];

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: CpkOneToOneBidirectionalParentID.classType,
      rootModels: rootModels,
      rootModelQueryIdentifier:
          CpkOneToOneBidirectionalParentID.MODEL_IDENTIFIER,
      associatedModelType: CpkOneToOneBidirectionalChildExplicitID.classType,
      associatedModels: associatedModels,
      associatedModelQueryIdentifier:
          CpkOneToOneBidirectionalChildExplicitID.MODEL_IDENTIFIER,
      supportCascadeDelete: true,
      enableCloudSync: enableCloudSync,
    );
  });
}
