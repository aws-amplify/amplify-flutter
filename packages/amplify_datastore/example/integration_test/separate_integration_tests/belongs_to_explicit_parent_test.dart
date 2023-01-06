// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/belongs_to/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('BelongsTo (child refers to parent with explicit connection field)',
      () {
    // schema
    // type BelongsToParent @model {
    //   id: ID!
    //   name: String
    //   explicitChild: BelongsToChildExplicit @hasOne
    // }
    // type BelongsToChildExplicit @model {
    //   id: ID!
    //   name: String
    //   belongsToParentID: ID
    //   belongsToParent: BelongsToParent @belongsTo(fields: ["belongsToParentID"])
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var rootModels = [BelongsToParent(name: 'belongs to parent')];
    var associatedModels = [
      BelongsToChildExplicit(
        name: 'belongs to child (explicit)',
        belongsToParent: rootModels.first,
      )
    ];

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: BelongsToParent.classType,
      rootModels: rootModels,
      rootModelQueryIdentifier: BelongsToParent.MODEL_IDENTIFIER,
      associatedModelType: BelongsToChildExplicit.classType,
      associatedModels: associatedModels,
      associatedModelQueryIdentifier: BelongsToChildExplicit.MODEL_IDENTIFIER,
      supportCascadeDelete: true,
      enableCloudSync: enableCloudSync,
    );
  });
}
