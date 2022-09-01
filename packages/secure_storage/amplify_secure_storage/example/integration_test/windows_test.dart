// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

@TestOn('windows')

import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils.dart';

const scope = 'test';
const key1 = 'key_1';
const value1 = 'value_1';

/// Windows app uninstall & re-install tests.
///
/// These tests are only relevant for amplify_secure_storage. They are
/// not relevant for amplify_secure_storage_dart.
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Windows app uninstall & re-install', () {
    test('Previous keys are cleared after uninstalling the app', () async {
      // initialize storage and store a value
      final storage = AmplifySecureStorage(
        config: AmplifySecureStorageConfig(scope: scope),
      );
      await storage.write(key: key1, value: value1);

      // assert value IS NOT cleared prior to an app uninstall
      final storage1 = AmplifySecureStorage(
        config: AmplifySecureStorageConfig(scope: scope),
      );
      expect(await storage1.read(key: key1), isNotNull);

      // uninstall app
      await uninstall();

      // assert value IS cleared after an app uninstall
      final storage2 = AmplifySecureStorage(
        config: AmplifySecureStorageConfig(scope: scope),
      );
      expect(await storage2.read(key: key1), isNull);
    });
  });
}
