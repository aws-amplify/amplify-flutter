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

@TestOn('mac-os || ios')

import 'dart:io';

import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:amplify_secure_storage/src/messages.cupertino.g.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

const scope = 'test';
const key1 = 'key_1';
const value1 = 'value_1';

// Enabling useDataProtection requires that the app is
// added to at least one access group.
final macOSOptions = MacOSSecureStorageOptions(useDataProtection: true);

/// MacOS & iOS app uninstall & re-install tests.
///
/// These tests are only relevant for amplify_secure_storage
/// (not amplify_secure_storage_dart) as they use
/// NSUserDefaultsAPI via pigeon.
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('${Platform.operatingSystem} app uninstall & re-install', () {
    final userDefaults = NSUserDefaultsAPI();
    test('Previous keys are cleared when a new scope is initialized', () async {
      // initialize storage and store a value
      final storage = AmplifySecureStorage(
        config: AmplifySecureStorageConfig(
          scope: scope,
          macOSOptions: macOSOptions,
        ),
      );
      await storage.write(key: key1, value: value1);

      // assert value IS NOT cleared when initializing a new instance with an existing scope
      final storage1 = AmplifySecureStorage(
        config: AmplifySecureStorageConfig(
          scope: scope,
          macOSOptions: macOSOptions,
        ),
      );
      expect(await storage1.read(key: key1), isNotNull);

      // Sets the current scope to an uninitialized state, similar to
      // an app uninstall
      await userDefaults.setBool(
        '${AmplifySecureStorage.scopeStoragePrefix}.$scope.isKeychainConfigured',
        false,
      );

      // assert value IS cleared when initializing a new scope after an app uninstall
      final storage2 = AmplifySecureStorage(
        config: AmplifySecureStorageConfig(
          scope: scope,
          macOSOptions: macOSOptions,
        ),
      );
      expect(await storage2.read(key: key1), isNull);
    });
  });
}
