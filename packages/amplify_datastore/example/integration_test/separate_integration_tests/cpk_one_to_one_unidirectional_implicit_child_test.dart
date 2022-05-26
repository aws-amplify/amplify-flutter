/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

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
      associatedModelType: CpkHasOneUnidirectionalChild.classType,
      associatedModels: associatedModels,
      enableCloudSync: enableCloudSync,
    );
  });
}
