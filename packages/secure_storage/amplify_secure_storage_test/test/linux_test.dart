// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('linux')

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_dart/src/platforms/amplify_secure_storage_linux.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

const appId1 = 'com.example.test';
const appId2 = 'com.example.test2';
const testScope = 'test';
const accessGroup = 'test.access.group';
const accessGroup2 = 'test.access.group2';
const key1 = 'key_1';
const value1 = 'value_1';
const value2 = 'value_2';

void main() {
  /// A list of storage instances created during the test.
  final storageInstances = <AmplifySecureStorageLinux>[];

  /// create a storage instance and add it to the list of instances.
  AmplifySecureStorageLinux createStorageInstance({
    required String scope,
    required String appId,
    String? accessGroup,
  }) {
    final linuxOptions = accessGroup != null
        ? LinuxSecureStorageOptions(accessGroup: accessGroup)
        : LinuxSecureStorageOptions();
    final instance = AmplifySecureStorageLinux(
      config: AmplifySecureStorageConfig(
        scope: scope,
        linuxOptions: linuxOptions,
      ),
      packageId: appId,
    );
    storageInstances.add(instance);
    return instance;
  }

  tearDown(() async {
    for (final instance in storageInstances) {
      await instance.removeAll();
    }
    storageInstances.clear();
  });

  group('linux', () {
    test('Keys from two separate apps do not collide', () async {
      // initialize app 1 storage and store a value
      final appOneStorage = createStorageInstance(
        scope: testScope,
        appId: appId1,
      );
      await appOneStorage.write(key: key1, value: value1);

      // initialize app 2 storage
      final appTwoStorage = createStorageInstance(
        scope: testScope,
        appId: appId2,
      );

      // assert value is null for app 2
      expect(await appTwoStorage.read(key: key1), isNull);

      // write to app 2 storage
      await appTwoStorage.write(key: key1, value: value2);

      // assert value is updated for app 2
      expect(await appTwoStorage.read(key: key1), value2);

      // assert value is NOT updated for app 1
      expect(await appOneStorage.read(key: key1), value1);
    });

    test('Keys are shared when using the same accessGroup', () async {
      // initialize app 1 storage and store a value
      final appOneStorage = createStorageInstance(
        scope: testScope,
        accessGroup: accessGroup,
        appId: appId1,
      );
      await appOneStorage.write(key: key1, value: value1);

      // initialize app 2 storage
      final appTwoStorage = createStorageInstance(
        scope: testScope,
        accessGroup: accessGroup,
        appId: appId2,
      );

      // assert value is shared from app 1
      expect(await appTwoStorage.read(key: key1), value1);

      // write to app 2 storage
      await appTwoStorage.write(key: key1, value: value2);

      // assert value is updated for app 2
      expect(await appTwoStorage.read(key: key1), value2);

      // assert value is updated for app 1
      expect(await appOneStorage.read(key: key1), value2);
    });

    test('Keys from two separate access groups do not collide', () async {
      // initialize app 1 storage and store a value
      final appOneStorage = createStorageInstance(
        scope: testScope,
        accessGroup: accessGroup,
        appId: appId1,
      );
      await appOneStorage.write(key: key1, value: value1);

      // initialize app 2 storage
      final appTwoStorage = createStorageInstance(
        scope: testScope,
        accessGroup: accessGroup2,
        appId: appId2,
      );

      // assert value is null for app 2
      expect(await appTwoStorage.read(key: key1), isNull);

      // write to app 2 storage
      await appTwoStorage.write(key: key1, value: value2);

      // assert value is updated for app 2
      expect(await appTwoStorage.read(key: key1), value2);

      // assert value is NOT updated for app 1
      expect(await appOneStorage.read(key: key1), value1);
    });
  });
}
