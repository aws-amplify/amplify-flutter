// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/has_one/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('HasOne (parent refers to child with implicit connection field)', () {
    // schema
    // type HasOneParent @model {
    //   id: ID!
    //   name: String
    //   implicitChild: HasOneChild @hasOne
    // }
    // type HasOneChild @model {
    //   id: ID!
    //   name: String
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var associatedModels = [HasOneChild(name: 'child')];
    // Currently with @hasOne, parent -> child relationship is created
    // by assign child.id to the connection field of the parent
    // the connection field is automatically generated when the child
    // is implicitly referred in the schema
    var rootModels = [
      HasOneParent(
        name: 'HasOne (implicit)',
        hasOneParentImplicitChildId: associatedModels.first.id,
      ),
    ];

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: HasOneParent.classType,
      rootModels: rootModels,
      rootModelQueryIdentifier: HasOneParent.MODEL_IDENTIFIER,
      associatedModelType: HasOneChild.classType,
      associatedModels: associatedModels,
      associatedModelQueryIdentifier: HasOneChild.MODEL_IDENTIFIER,
      enableCloudSync: enableCloudSync,
    );
  });
}
