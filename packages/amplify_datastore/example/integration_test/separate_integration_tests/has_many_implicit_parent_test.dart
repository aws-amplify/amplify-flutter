// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/has_many/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('HasMany (parent refers to children with implicit connection field)',
      () {
    // schema
    // type HasManyParent @model {
    //   id: ID!
    //   name: String
    //   implicitChildren: [HasManyChild] @hasMany
    // }
    // type HasManyChildImplicit @model {
    //   id: ID!
    //   name: String
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var rootModels = [HasManyParent(name: 'has many parent (implicit)')];
    var associatedModels = List.generate(
      5,
      (i) => HasManyChildImplicit(
        name: 'has many child $i (implicit)',
        hasManyParentImplicitChildrenId: rootModels.first.id,
      ),
    );

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: HasManyParent.classType,
      rootModels: rootModels,
      rootModelQueryIdentifier: HasManyParent.MODEL_IDENTIFIER,
      associatedModelType: HasManyChildImplicit.classType,
      associatedModels: associatedModels,
      associatedModelQueryIdentifier: HasManyChildImplicit.MODEL_IDENTIFIER,
      enableCloudSync: enableCloudSync,
    );
  });
}
