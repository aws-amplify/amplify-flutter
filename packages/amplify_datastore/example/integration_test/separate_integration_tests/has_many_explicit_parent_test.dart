// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/has_many/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
      'HasMany (parent refers to children with explicit connection field and indexName)',
      () {
    // schema
    // type HasManyParent @model {
    //   id: ID!
    //   name: String
    //   explicitChildren: [HasManyChildExplicit]
    //     @hasMany(indexName: "byHasManyParent", fields: ["id"])
    // }
    // type HasManyChildExplicit @model {
    //   id: ID!
    //   name: String
    //   hasManyParentID: ID! @index(name: "byHasManyParent", sortKeyFields: ["name"])
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var rootModels = [HasManyParent(name: 'has many parent (explicit)')];
    var associatedModels = List.generate(
      5,
      (i) => HasManyChildExplicit(
        name: 'has many child $i (explicit)',
        hasManyParentID: rootModels.first.id,
      ),
    );

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: HasManyParent.classType,
      rootModels: rootModels,
      rootModelQueryIdentifier: HasManyParent.MODEL_IDENTIFIER,
      associatedModelType: HasManyChildExplicit.classType,
      associatedModels: associatedModels,
      associatedModelQueryIdentifier: HasManyChildExplicit.MODEL_IDENTIFIER,
      enableCloudSync: enableCloudSync,
    );
  });
}
