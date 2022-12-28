// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/cpk_one_to_one_unidirectional/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
      'One-to-one unidirectional (parent refers to child with explicit connection field)',
      () {
    // schema
    // type CpkHasOneUnidirectionalParent @model {
    //   id: ID! @primaryKey(sortKeyFields: ["name"])
    //   name: String!
    //   implicitChild: CpkHasOneUnidirectionalChild @hasOne
    // }
    //
    // type CpkHasOneUnidirectionalChild @model {
    //   id: ID! @primaryKey(sortKeyFields: ["name"])
    //   name: String!
    // }

    final enableCloudSync = shouldEnableCloudSync();
    var associatedModels = [CpkHasOneUnidirectionalChild(name: 'child')];
    // Currently with @hasOne, parent -> child relationship is created
    // by assign child.id to the connection field of the parent
    var rootModels = [
      CpkHasOneUnidirectionalParent(
        name: 'HasOne (explicit)',
        cpkHasOneUnidirectionalParentImplicitChildId: associatedModels.first.id,
        cpkHasOneUnidirectionalParentImplicitChildName:
            associatedModels.first.name,
      )
    ];

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: CpkHasOneUnidirectionalParent.classType,
      rootModels: rootModels,
      rootModelQueryIdentifier: CpkHasOneUnidirectionalParent.MODEL_IDENTIFIER,
      associatedModelType: CpkHasOneUnidirectionalChild.classType,
      associatedModels: associatedModels,
      associatedModelQueryIdentifier:
          CpkHasOneUnidirectionalChild.MODEL_IDENTIFIER,
      enableCloudSync: enableCloudSync,
    );
  });
}
