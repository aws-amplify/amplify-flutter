// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/cpk_has_many_unidirectional/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
      'HasMany (parent refers to children with explicit connection field and indexName)',
      () {
    // schema
    // type CpkHasManyUnidirectionalParent @model {
    //   id: ID! @primaryKey(sortKeyFields: ["name"])
    //   name: String!
    //   implicitChildren: [CpkHasManyUnidirectionalChildImplicit] @hasMany
    // }

    // type CpkHasManyUnidirectionalChildImplicit @model {
    //   id: ID! @primaryKey(sortKeyFields: ["name"])
    //   name: String!
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var rootModels = [
      CpkHasManyUnidirectionalParent(name: 'has many parent (implicit)')
    ];
    var associatedModels = List.generate(
      5,
      (i) => CpkHasManyUnidirectionalChildImplicit(
        name: 'has many child $i (implicit)',
        cpkHasManyUnidirectionalParentImplicitChildrenId: rootModels.first.id,
        cpkHasManyUnidirectionalParentImplicitChildrenName:
            rootModels.first.name,
      ),
    );

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: CpkHasManyUnidirectionalParent.classType,
      rootModels: rootModels,
      rootModelQueryIdentifier: CpkHasManyUnidirectionalParent.MODEL_IDENTIFIER,
      associatedModelType: CpkHasManyUnidirectionalChildImplicit.classType,
      associatedModels: associatedModels,
      associatedModelQueryIdentifier:
          CpkHasManyUnidirectionalChildImplicit.MODEL_IDENTIFIER,
      enableCloudSync: enableCloudSync,
    );
  });
}
