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

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:test/test.dart';

typedef SecureStorageFactory = AmplifySecureStorageInterface Function({
  required AmplifySecureStorageConfig config,
});

void runTests(SecureStorageFactory storageFactory) {
  const key1 = 'key_1';
  late AmplifySecureStorageInterface storage;
  late AmplifySecureStorageInterface storageScope;
  late AmplifySecureStorageInterface storageWeb;
  late AmplifySecureStorageInterface storageLinux;
  late AmplifySecureStorageInterface storageWindows;

  Future<void> clearAll() async {
    await storage.delete(key: key1);
    await storageScope.delete(key: key1);
    await storageWeb.delete(key: key1);
    await storageLinux.delete(key: key1);
    await storageWindows.delete(key: key1);
  }

  setUp(() async {
    // Disabling `useDataProtection` for tests since it would require a MacOS
    // app that has at least one app group
    final macOSOptions = MacOSSecureStorageOptions(useDataProtection: false);
    storage = storageFactory(
      config: AmplifySecureStorageConfig(
        scope: 'default',
        macOSOptions: macOSOptions,
      ),
    );
    storageScope = storageFactory(
      config: AmplifySecureStorageConfig(
        scope: 'other',
        macOSOptions: macOSOptions,
      ),
    );
    storageWeb = storageFactory(
      config: AmplifySecureStorageConfig(
        scope: 'default',
        webOptions: WebSecureStorageOptions(databaseNamePrefix: 'com.test'),
        macOSOptions: macOSOptions,
      ),
    );
    storageLinux = storageFactory(
      config: AmplifySecureStorageConfig(
        scope: 'default',
        linuxOptions: LinuxSecureStorageOptions(schemaName: 'com.test'),
        macOSOptions: macOSOptions,
      ),
    );
    storageWindows = storageFactory(
      config: AmplifySecureStorageConfig(
        scope: 'default',
        windowsOptions: WindowsSecureStorageOptions(
          targetNamePrefix: 'com.test',
        ),
        macOSOptions: macOSOptions,
      ),
    );
    await clearAll();
  });

  tearDownAll(() async {
    await clearAll();
  });

  group('write', () {
    test('writes a new key-value pair to storage', () async {
      // write value
      await storage.write(key: key1, value: 'test_write');

      // confirm value was written
      final value1 = await storage.read(key: key1);
      expect(value1, 'test_write');
    });

    test('updates the value for an existing key', () async {
      // write value
      await storage.write(key: key1, value: 'test_write');

      // confirm value was written
      final value1 = await storage.read(key: key1);
      expect(value1, 'test_write');

      // write new value to the existing key
      await storage.write(key: key1, value: 'test_update');

      // confirm new value was written
      final value2 = await storage.read(key: key1);
      expect(value2, 'test_update');
    });
  });

  group('read', () {
    test('reads a value from storage', () async {
      // write value
      await storage.write(key: key1, value: 'test_read');

      // read value
      final value1 = await storage.read(key: key1);
      expect(value1, 'test_read');
    });

    test('returns null if the key does not exist', () async {
      // read value and confirm null
      final value1 = await storage.read(key: key1);
      expect(value1, isNull);
    });
  });

  group('delete', () {
    test('removes the key if it exists', () async {
      // write value
      await storage.write(key: key1, value: 'delete_test');

      // confirm value was written
      final value1 = await storage.read(key: key1);
      expect(value1, 'delete_test');

      // delete value
      await storage.delete(key: key1);

      // confirm value was removed
      final value2 = await storage.read(key: key1);
      expect(value2, isNull);
    });

    test('does nothing if the key does not exist', () async {
      // attempt to delete a key multiple times
      await storage.delete(key: key1);
      await storage.delete(key: key1);
      await storage.delete(key: key1);
    });
  });

  group('write', () {
    test('writes a new key-value pair to storage', () async {
      // write value
      await storage.write(key: key1, value: 'test_write');

      // confirm value was written
      final value1 = await storage.read(key: key1);
      expect(value1, 'test_write');
    });

    test('updates the value for an existing key', () async {
      // write value
      await storage.write(key: key1, value: 'test_write');

      // confirm value was written
      final value1 = await storage.read(key: key1);
      expect(value1, 'test_write');

      // write new value to the existing key
      await storage.write(key: key1, value: 'test_update');

      // confirm new value was written
      final value2 = await storage.read(key: key1);
      expect(value2, 'test_update');
    });
  });

  group('scope', () {
    test('The same key with different scopes should not collide', () async {
      // write to both storage instances
      await storage.write(key: key1, value: 'test_write_1');
      await storageScope.write(key: key1, value: 'test_write_2');

      // confirm value was written to both storage instances
      final value1 = await storage.read(key: key1);
      expect(value1, 'test_write_1');
      final value2 = await storageScope.read(key: key1);
      expect(value2, 'test_write_2');
    });
  });

  group('namespace', () {
    test(
      'The same key with different db names should not collide',
      testOn: 'browser',
      () async {
        // write to both storage instances
        await storage.write(key: key1, value: 'test_write_1');
        await storageWeb.write(key: key1, value: 'test_write_2');

        // confirm value was written to both storage instances
        final value1 = await storage.read(key: key1);
        expect(value1, 'test_write_1');
        final value2 = await storageWeb.read(key: key1);
        expect(value2, 'test_write_2');
      },
    );

    test(
      'The same key with different schema names should not collide',
      testOn: 'linux',
      () async {
        // write to both storage instances
        await storage.write(key: key1, value: 'test_write_1');
        await storageLinux.write(key: key1, value: 'test_write_2');

        // confirm value was written to both storage instances
        final value1 = await storage.read(key: key1);
        expect(value1, 'test_write_1');
        final value2 = await storageLinux.read(key: key1);
        expect(value2, 'test_write_2');
      },
    );

    test(
      'The same key with different schema target name prefixes should not collide',
      testOn: 'windows',
      () async {
        // write to both storage instances
        await storage.write(key: key1, value: 'test_write_1');
        await storageWindows.write(key: key1, value: 'test_write_2');

        // confirm value was written to both storage instances
        final value1 = await storage.read(key: key1);
        expect(value1, 'test_write_1');
        final value2 = await storageWindows.read(key: key1);
        expect(value2, 'test_write_2');
      },
    );
  });
}
