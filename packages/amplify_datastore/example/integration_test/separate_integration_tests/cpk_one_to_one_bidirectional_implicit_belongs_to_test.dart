/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
import 'models/cpk_one_to_one_bidirectional/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Bidirectional one-one (child refers parent with implicit fields)', () {
    // schema
    // type CpkOneToOneBidirectionalParent @model {
    //   id: ID! @primaryKey(sortKeyFields: ["name"])
    //   name: String!
    //   implicitChild: CpkOneToOneBidirectionalChildImplicit @hasOne
    // }
    //
    // type CpkOneToOneBidirectionalChildImplicit @model {
    //   id: ID! @primaryKey(sortKeyFields: ["name"])
    //   name: String!
    //   belongsToParent: CpkOneToOneBidirectionalParent @belongsTo
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var rootModels = [
      CpkOneToOneBidirectionalParentID(
        name: "the parent",
      )
    ];
    var associatedModels = [
      CpkOneToOneBidirectionalChildImplicitID(
        name: 'belongs to child (implicit)',
        belongsToParent: rootModels.first,
      )
    ];

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: CpkOneToOneBidirectionalParentID.classType,
      rootModels: rootModels,
      associatedModelType: CpkOneToOneBidirectionalChildImplicitID.classType,
      associatedModels: associatedModels,
      supportCascadeDelete: true,
      enableCloudSync: enableCloudSync,
    );
  });
}
