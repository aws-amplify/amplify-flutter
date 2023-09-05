// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: implementation_imports

import 'dart:async';

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_dart/src/worker/secure_storage_action.dart';
import 'package:amplify_secure_storage_dart/src/worker/secure_storage_request.dart';
import 'package:amplify_secure_storage_dart/src/worker/secure_storage_worker.dart';
import 'package:amplify_secure_storage_test/data/key_value_pairs.dart';
import 'package:test/test.dart';
import 'package:worker_bee/worker_bee.dart';

const key1 = 'key_1';

// Disabling `useDataProtection` for tests since it would require a MacOS
// app that has at least one app group
// ignore: invalid_use_of_visible_for_testing_member
final macOSOptions = MacOSSecureStorageOptions(useDataProtection: false);

typedef SecureStorageFactory = AmplifySecureStorageInterface Function({
  required AmplifySecureStorageConfig config,
});

/// A common set of integration-style tests that can be shared across
/// amplify_secure_storage & amplify_secure_storage_dart.
///
/// These tests should not have any dependency on flutter, or test
/// any functionality that depends on flutter, such as app uninstall &
/// re-install on certain platforms.
void runTests(SecureStorageFactory storageFactory) {
  group(
    'read, write, delete - ',
    () => runStandardTests(
      storageFactory,
      webPersistenceOption: WebPersistenceOption.indexedDB,
    ),
  );

  group(
    'read, write, delete (web in memory) -',
    testOn: 'browser',
    () => runStandardTests(
      storageFactory,
      webPersistenceOption: WebPersistenceOption.inMemory,
    ),
  );

  group(
    'scope and namespace - ',
    () => runScopeAndNamespaceTests(storageFactory),
  );
}

/// basic test suite that applies to all platforms and config options
void runStandardTests(
  SecureStorageFactory storageFactory, {
  required WebPersistenceOption webPersistenceOption,
}) {
  late AmplifySecureStorageInterface storage;

  Future<void> clearAll() async {
    await storage.delete(key: key1);
  }

  setUp(() async {
    final webOptions = WebSecureStorageOptions(
      persistenceOption: webPersistenceOption,
    );
    storage = storageFactory(
      config: AmplifySecureStorageConfig(
        scope: 'default',
        macOSOptions: macOSOptions,
        webOptions: webOptions,
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

  group('read/write/delete can handle key value pairs of varying length', () {
    for (final entry in keyValuePairs.entries) {
      final key = entry.key;
      final value = entry.value;
      final testName = key.substring(0, 20);
      test('read/write/delete key starting with: $testName', () async {
        // write value
        await storage.write(key: key, value: value);
        // confirm value was written
        final readValue = await storage.read(key: key);
        expect(readValue, value);

        // delete value
        await storage.delete(key: key);

        // confirm value was removed
        final readValue2 = await storage.read(key: key);
        expect(readValue2, isNull);
      });
    }
  });

  group('SecureStorageWorker', () {
    test('Throws before init is called', () async {
      final worker = SecureStorageWorker.create();
      await worker.spawn();
      worker.add(
        SecureStorageRequest(
          (b) => b
            ..action = SecureStorageAction.read
            ..key = 'key',
        ),
      );
      expect(
        worker.result,
        completion(
          isA<ErrorResult>().having(
            (res) => res.error.toString(),
            'error',
            contains('Must call init'),
          ),
        ),
      );
      await expectLater(
        worker.stream,
        emitsError(
          isA<WorkerBeeException>().having(
            (res) => res.error,
            'error',
            contains('Must call init'),
          ),
        ),
      );
      unawaited(worker.close());
    });
  });
}

/// platform specific tests and tests that do not apply for all config
/// options, such as inMemory for web.
void runScopeAndNamespaceTests(SecureStorageFactory storageFactory) {
  final webOptions = WebSecureStorageOptions(
    persistenceOption: WebPersistenceOption.indexedDB,
  );
  late AmplifySecureStorageInterface storage;

  Future<void> clearAll() async {
    await storage.delete(key: key1);
  }

  setUp(() async {
    storage = storageFactory(
      config: AmplifySecureStorageConfig(
        scope: 'default',
        macOSOptions: macOSOptions,
        webOptions: webOptions,
      ),
    );

    await clearAll();
  });

  tearDownAll(() async {
    await clearAll();
  });

  group('scope', () {
    test('The same key with different scopes should not collide', () async {
      final storageScope = storageFactory(
        config: AmplifySecureStorageConfig(
          scope: 'other',
          macOSOptions: macOSOptions,
          webOptions: webOptions,
        ),
      );
      await storageScope.delete(key: key1);

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
        final storageWeb = storageFactory(
          config: AmplifySecureStorageConfig(
            scope: 'default',
            webOptions: WebSecureStorageOptions(
              databaseName: 'com.example.test',
              persistenceOption: WebPersistenceOption.indexedDB,
            ),
            macOSOptions: macOSOptions,
          ),
        );
        await storageWeb.delete(key: key1);

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
  });
}
