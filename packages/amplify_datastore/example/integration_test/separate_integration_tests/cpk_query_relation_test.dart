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

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import '../utils/setup_utils.dart';
import 'models/cpk_has_many_bidirectional/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

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

  group('Query child models by the parent model', () {
    setUpAll(() async {
      await configureDataStore(
          enableCloudSync: false, modelProvider: ModelProvider.instance);

      for (var parent in rootModels) await Amplify.DataStore.save(parent);
      for (var child in associatedModels) await Amplify.DataStore.save(child);
    });

    test('query child models by parent model identifier', () async {
      var queriedModels = await Amplify.DataStore.query(
        CpkHasManyChildBidirectionalExplicit.classType,
        where: CpkHasManyChildBidirectionalExplicit.HASMANYPARENT.eq(
          rootModels.first.modelIdentifier,
        ),
      );

      expect(queriedModels, containsAll(associatedModels));
    });

    tearDownAll(() async {
      await clearDataStore();
    });
  });
}
