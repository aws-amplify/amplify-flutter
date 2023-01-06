// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('mac-os || ios')

import 'dart:io';

import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:amplify_secure_storage/src/messages.cupertino.g.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

const scope = 'test';
const key1 = 'key_1';
const key2 = 'key_2';
const value1 = 'value_1';
const value2 = 'value_2';

// Enabling useDataProtection requires that the app is
// added to at least one access group.
final macOSOptions = MacOSSecureStorageOptions(useDataProtection: false);

/// MacOS & iOS app uninstall & re-install tests.
///
/// These tests are only relevant for amplify_secure_storage
/// (not amplify_secure_storage_dart) as they use
/// NSUserDefaultsAPI via pigeon.
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('${Platform.operatingSystem} app uninstall & re-install', () {
    final userDefaults = NSUserDefaultsAPI();
    final storage = AmplifySecureStorage(
      config: AmplifySecureStorageConfig(
        scope: scope,
        macOSOptions: macOSOptions,
      ),
    );

    tearDown(() async {
      await storage.delete(key: key1);
      await storage.delete(key: key2);
    });
    test('Previous keys are cleared when a new scope is initialized', () async {
      // initialize storage and store a value

      await storage.write(key: key1, value: value1);
      await storage.write(key: key2, value: value2);

      // assert value IS NOT cleared when initializing a new instance with an existing scope
      final storage1 = AmplifySecureStorage(
        config: AmplifySecureStorageConfig(
          scope: scope,
          macOSOptions: macOSOptions,
        ),
      );
      expect(await storage1.read(key: key1), isNotNull);
      expect(await storage1.read(key: key2), isNotNull);

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
      expect(await storage2.read(key: key2), isNull);
    });
  });
}
