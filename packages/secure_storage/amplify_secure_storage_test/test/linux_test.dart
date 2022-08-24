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
import 'package:amplify_secure_storage_dart/src/platforms/amplify_secure_storage_linux.dart';
import 'package:amplify_secure_storage_dart/src/utils/file_key_value_store.dart';
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

/// Mimics an app uninstall on Linux by removing the
/// scopes file for the given app
Future<void> uninstall(String appId) async {
  final fileStore = FileKeyValueStore(
    path: '/tmp/apps/$appId',
    fileName: AmplifySecureStorageLinux.scopeFileName,
  );
  await fileStore.removeFile();
}

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
        : null;
    final instance = AmplifySecureStorageLinux(
      config: AmplifySecureStorageConfig(
        scope: scope,
        linuxOptions: linuxOptions,
      ),
      appId: appId,
      appSupportPathProvider: () async => '/tmp/apps/$appId',
    );
    storageInstances.add(instance);
    return instance;
  }

  tearDown(() async {
    // remove all keys for all storage instances created during the test
    storageInstances.forEach((instance) => instance.removeAll());
    storageInstances.clear();

    // uninstall test apps
    await uninstall(appId1);
    await uninstall(appId2);
  });

  group('linux', testOn: 'linux', () {
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

    test('Previous keys are cleared when a new scope is initialized', () async {
      // initialize storage and store a value
      final storage = createStorageInstance(
        scope: testScope,
        appId: appId1,
      );
      await storage.write(key: key1, value: value1);

      // assert value IS NOT cleared when initializing a new instance with an existing scope
      final storage1 = createStorageInstance(
        scope: testScope,
        appId: appId1,
      );
      expect(await storage1.read(key: key1), isNotNull);

      // uninstall app
      await uninstall(appId1);

      // assert value IS cleared when initializing a new scope after an app uninstall
      final storage2 = createStorageInstance(
        scope: testScope,
        appId: appId1,
      );
      expect(await storage2.read(key: key1), isNull);
    });

    test('Previous keys are NOT cleared on init when using an accessGroup',
        () async {
      // initialize storage and store a value
      final storage = createStorageInstance(
        scope: testScope,
        accessGroup: accessGroup,
        appId: appId1,
      );
      await storage.write(key: key1, value: value1);

      // uninstall app
      await uninstall(appId1);

      // re-initialize storage
      final storage2 = createStorageInstance(
        scope: testScope,
        accessGroup: accessGroup,
        appId: appId1,
      );

      // assert value is NOT cleared
      expect(await storage2.read(key: key1), value1);
    });
  });
}
