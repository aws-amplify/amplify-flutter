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

import 'dart:io';

import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:amplify_secure_storage_dart/src/platforms/amplify_secure_storage_linux.dart';
import 'package:amplify_secure_storage_dart/src/utils/file_key_value_store.dart';
import 'package:amplify_secure_storage_test/amplify_secure_storage_test.dart';
import 'package:aws_common/aws_common.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:path_provider/path_provider.dart';

AmplifySecureStorage storageFactory({
  required AmplifySecureStorageConfig config,
}) {
  return AmplifySecureStorage(config: config);
}

AmplifySecureStorageInterface remoteStorageFactory({
  required AmplifySecureStorageConfig config,
}) {
  return AmplifySecureStorageWorker(config: config);
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('local', () {
    runTests(storageFactory);
    runAppUninstallTests(storageFactory);
  });
  group(
    'remote',
    () {
      runTests(remoteStorageFactory);
      runAppUninstallTests(remoteStorageFactory);
    },
    // Android is already run on a background thread via pigeon
    skip: !zIsWeb && Platform.isAndroid,
  );
}

/// Run app uninstall & re-install tests.
///
/// These tests are only relevant for amplify_secure_storage. They are
/// not relevant for amplify_secure_storage_dart.
///
/// Note: Because these tests are not shared, they are located in
/// amplify_secure_storage/integration_test rather than
/// amplify_secure_storage_test.
void runAppUninstallTests(SecureStorageFactory storageFactory) {
  group('linux app uninstall & re-install', () {
    Future<void> uninstall() async {
      final fileStore = FileKeyValueStore(
        path: (await getApplicationSupportDirectory()).path,
        fileName: AmplifySecureStorageLinux.scopeFileName,
      );
      await fileStore.removeFile();
    }

    const accessGroup = 'test.access.group';
    const scope = 'test';
    const key1 = 'key_1';
    const value1 = 'value_1';
    test(
      'Previous keys are cleared when a new scope is initialized',
      testOn: 'linux',
      () async {
        // initialize storage and store a value
        final storage = storageFactory(
          config: AmplifySecureStorageConfig(scope: scope),
        );
        await storage.write(key: key1, value: value1);

        // assert value IS NOT cleared when initializing a new instance with an existing scope
        final storage1 = storageFactory(
          config: AmplifySecureStorageConfig(scope: scope),
        );
        expect(await storage1.read(key: key1), isNotNull);

        // uninstall app
        await uninstall();

        // assert value IS cleared when initializing a new scope after an app uninstall
        final storage2 = storageFactory(
          config: AmplifySecureStorageConfig(scope: scope),
        );
        expect(await storage2.read(key: key1), isNull);
      },
    );

    test(
      'Previous keys are NOT cleared on init when using an accessGroup',
      testOn: 'linux',
      () async {
        // initialize storage and store a value
        final storage = storageFactory(
            config: AmplifySecureStorageConfig(
          scope: scope,
          linuxOptions: LinuxSecureStorageOptions(
            accessGroup: accessGroup,
          ),
        ));
        await storage.write(key: key1, value: value1);

        // uninstall app
        await uninstall();

        // re-initialize storage
        final storage2 = storageFactory(
          config: AmplifySecureStorageConfig(
            scope: scope,
            linuxOptions: LinuxSecureStorageOptions(
              accessGroup: accessGroup,
            ),
          ),
        );

        // assert value is NOT cleared
        expect(await storage2.read(key: key1), value1);
      },
    );
  });
}
