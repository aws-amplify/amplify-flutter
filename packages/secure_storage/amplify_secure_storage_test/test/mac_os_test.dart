// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('mac-os')

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_dart/src/platforms/amplify_secure_storage_cupertino.dart';
import 'package:test/test.dart';

const key1 = 'key_1';
const key2 = 'key_2';
const value1 = 'value1';
const value2 = 'value2';

void main() {
  group('macos removeAll', () {
    final storage = AmplifySecureStorageCupertino(
      config: AmplifySecureStorageConfig(
        scope: 'test',
        macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
      ),
    );

    final storage2 = AmplifySecureStorageCupertino(
      config: AmplifySecureStorageConfig(
        scope: 'test2',
        macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
      ),
    );

    setUp((() {
      storage.removeAll();
      storage2.removeAll();
    }));

    tearDown(() {
      storage.removeAll();
      storage2.removeAll();
    });

    test(
      'removes all keys from storage',
      () {
        // seed storage and confirm values are present
        storage.write(key: key1, value: value1);
        storage.write(key: key2, value: value2);
        expect(storage.read(key: key1), value1);
        expect(storage.read(key: key2), value2);

        // remove all
        storage.removeAll();

        // assert all data was removed
        expect(storage.read(key: key1), isNull);
        expect(storage.read(key: key2), isNull);
      },
    );

    test(
      'does not remove keys from other scopes',
      () {
        // seed storage and confirm values are present
        storage.write(key: key1, value: value1);
        storage2.write(key: key2, value: value2);
        expect(storage.read(key: key1), value1);
        expect(storage2.read(key: key2), value2);

        // remove all
        storage.removeAll();

        // assert all data was removed
        expect(storage.read(key: key1), isNull);
        expect(storage2.read(key: key2), value2);
      },
    );

    test(
      'does not throw when called with no data present',
      () {
        expect(() => storage.removeAll(), returnsNormally);
      },
    );
  });
}
