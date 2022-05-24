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
  late AmplifySecureStorageInterface storagePackageID;
  late AmplifySecureStorageInterface storageScope;
  setUp(() async {
    storage = storageFactory(
      config: AmplifySecureStorageConfig(
        packageId: 'com.example.test',
        scope: 'default',
      ),
    );
    storagePackageID = storageFactory(
      config: AmplifySecureStorageConfig(
        packageId: 'com.example.test2',
        scope: 'default',
      ),
    );
    storageScope = storageFactory(
      config: AmplifySecureStorageConfig(
        packageId: 'com.example.test',
        scope: 'other',
      ),
    );
    await storage.delete(key: key1);
    await storagePackageID.delete(key: key1);
    await storageScope.delete(key: key1);
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

  group('packageId', () {
    test('The same key with different package IDs should not collide',
        () async {
      // write to both storage instances
      await storage.write(key: key1, value: 'test_write_1');
      await storagePackageID.write(key: key1, value: 'test_write_2');

      // confirm value was written to both storage instances
      final value1 = await storage.read(key: key1);
      expect(value1, 'test_write_1');
      final value2 = await storagePackageID.read(key: key1);
      expect(value2, 'test_write_2');
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
}
