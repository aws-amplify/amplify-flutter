// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

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
