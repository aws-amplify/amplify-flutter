// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
@TestOn('windows')

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_dart/src/ffi/win32/data_protection.dart';
import 'package:amplify_secure_storage_test/data/key_value_pairs.dart';
import 'package:test/test.dart';

const key1 = 'key_1';
const value1 = 'value_1';
const value2 = 'value_2';

void main() {
  group('Windows', () {
    test(
      'keys should be shared when using the same storage path',
      () async {
        // ignore: invalid_use_of_internal_member
        final storage1 = AmplifySecureStorageDart(
          config: AmplifySecureStorageConfig(
            scope: 'default',
            windowsOptions: WindowsSecureStorageOptions(
              storagePath: '/tmp/app',
            ),
          ),
        );

        // ignore: invalid_use_of_internal_member
        final storage2 = AmplifySecureStorageDart(
          config: AmplifySecureStorageConfig(
            scope: 'default',
            windowsOptions: WindowsSecureStorageOptions(
              storagePath: '/tmp/app',
            ),
          ),
        );

        // write to storage 1
        await storage1.write(key: key1, value: value1);

        // confirm value is shared with storage 2
        expect(await storage2.read(key: key1), value1);
      },
    );
    test(
      'keys should not collide when using different storage paths',
      () async {
        // ignore: invalid_use_of_internal_member
        final storage1 = AmplifySecureStorageDart(
          config: AmplifySecureStorageConfig(
            scope: 'default',
            windowsOptions: WindowsSecureStorageOptions(
              storagePath: '/tmp/app1',
            ),
          ),
        );

        // ignore: invalid_use_of_internal_member
        final storage2 = AmplifySecureStorageDart(
          config: AmplifySecureStorageConfig(
            scope: 'default',
            windowsOptions: WindowsSecureStorageOptions(
              storagePath: '/tmp/app2',
            ),
          ),
        );

        // write to both storage instances
        await storage1.write(key: key1, value: value1);
        await storage2.write(key: key1, value: value2);

        // confirm value was written to both storage instances
        // without conflict
        expect(await storage1.read(key: key1), value1);
        expect(await storage2.read(key: key1), value2);
      },
    );
  });
  group(
      'CryptProtect/CryptUnprotect can encrypt and decrypt keys of various lengths and chars',
      () {
    for (final value in keyValuePairs.values) {
      final testName = value.substring(0, 20);
      test('encrypt / decrypt value starting with: $testName', () {
        final encrypted = encryptString(value);
        final decrypted = decryptString(encrypted);
        expect(decrypted, value);
      });
    }
  });
}
