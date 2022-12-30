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
    //   explicitChildren: [CpkHasManyUnidirectionalChildExplicit]
    //     @hasMany(indexName: "byHasManyParentCpk", fields: ["id", "name"])
    // }
    // type CpkHasManyUnidirectionalChildExplicit @model {
    //   id: ID! @primaryKey(sortKeyFields: ["name"])
    //   name: String!
    //   hasManyParentID: ID!
    //     @index(name: "byHasManyParentCpk", sortKeyFields: ["hasManyParentName"])
    //   hasManyParentName: String!
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var rootModels = [
      CpkHasManyUnidirectionalParent(name: 'has many parent (explicit)')
    ];
    var associatedModels = List.generate(
      5,
      (i) => CpkHasManyUnidirectionalChildExplicit(
        name: 'has many child $i (explicit)',
        hasManyParentID: rootModels.first.id,
        hasManyParentName: rootModels.first.name,
      ),
    );

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: CpkHasManyUnidirectionalParent.classType,
      rootModels: rootModels,
      rootModelQueryIdentifier: CpkHasManyUnidirectionalParent.MODEL_IDENTIFIER,
      associatedModelType: CpkHasManyUnidirectionalChildExplicit.classType,
      associatedModels: associatedModels,
      associatedModelQueryIdentifier:
          CpkHasManyUnidirectionalChildExplicit.MODEL_IDENTIFIER,
      enableCloudSync: enableCloudSync,
    );
  });
}
