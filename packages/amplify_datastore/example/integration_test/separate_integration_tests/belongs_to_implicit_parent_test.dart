// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/belongs_to/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('BelongsTo (child refers to parent with implicit connection field)',
      () {
    // schema
    // type BelongsToParent @model {
    //   id: ID!
    //   name: String
    //   implicitChild: BelongsToChildImplicit @hasOne
    // }
    // type BelongsToChildImplicit @model {
    //   id: ID!
    //   name: String
    //   belongsToParent: BelongsToParent @belongsTo
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var rootModels = [BelongsToParent(name: 'belongs to parent')];
    var associatedModels = [
      BelongsToChildImplicit(
        name: 'belongs to child (implicit)',
        belongsToParent: rootModels.first,
      )
    ];

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: BelongsToParent.classType,
      rootModels: rootModels,
      rootModelQueryIdentifier: BelongsToParent.MODEL_IDENTIFIER,
      associatedModelType: BelongsToChildImplicit.classType,
      associatedModels: associatedModels,
      associatedModelQueryIdentifier: BelongsToChildImplicit.MODEL_IDENTIFIER,
      supportCascadeDelete: true,
      enableCloudSync: enableCloudSync,
    );
  });
}
