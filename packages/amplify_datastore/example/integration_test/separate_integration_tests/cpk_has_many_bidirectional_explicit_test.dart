// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/cpk_has_many_bidirectional/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('HasMany (bi-directional with implicit connection field', () {
    // schema
    // type HasManyParentBiDirectionalExplicit @model {
    //   id: ID!
    //   name: String
    //   biDirectionalExplicitChildren: [HasManyChildBiDirectionalExplicit]
    //     @hasMany(indexName: "byHasManyParent", fields: ["id"])
    // }

    // type HasManyChildBiDirectionalExplicit @model {
    //   id: ID!
    //   name: String
    //   hasManyParentId: ID! @index(name: "byHasManyParent", sortKeyFields: ["name"])
    //   hasManyParent: HasManyParentBiDirectionalExplicit
    //     @belongsTo(fields: ["hasManyParentId"])
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var rootModels = [
      CpkHasManyParentBidirectionalExplicit(name: 'has many parent (explicit)')
    ];
    var associatedModels = List.generate(
      5,
      (i) => CpkHasManyChildBidirectionalExplicit(
        name: 'has many child $i (explicit)',
        hasManyParent: rootModels.first,
      ),
    );

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: CpkHasManyParentBidirectionalExplicit.classType,
      rootModels: rootModels,
      rootModelQueryIdentifier:
          CpkHasManyParentBidirectionalExplicit.MODEL_IDENTIFIER,
      associatedModelType: CpkHasManyChildBidirectionalExplicit.classType,
      associatedModels: associatedModels,
      associatedModelQueryIdentifier:
          CpkHasManyChildBidirectionalExplicit.MODEL_IDENTIFIER,
      supportCascadeDelete: true,
      enableCloudSync: enableCloudSync,
    );
  });
}
