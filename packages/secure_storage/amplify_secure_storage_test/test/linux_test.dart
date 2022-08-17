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
import 'package:amplify_secure_storage_dart/src/utils/file_key_value_store.dart';
import 'package:amplify_secure_storage_dart/src/ffi/utils/linux_utils.dart';

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test(
    'Previous keys are cleared when a new scope is initialized',
    testOn: 'linux',
    () async {
      // initialize storage and store a value
      final storage = AmplifySecureStorageDart(
        config: AmplifySecureStorageConfig(scope: 'test'),
      );
      await storage.write(key: 'key_1', value: 'value_1');

      // assert value IS NOT cleared when initializing a new instance with an existing scope
      final storage1 = AmplifySecureStorageDart(
        config: AmplifySecureStorageConfig(scope: 'test'),
      );
      final value1 = await storage1.read(key: 'key_1');
      expect(value1, isNotNull);

      // clear the scope from file storage, simulating an app uninstall on linux
      final appId = await getApplicationId();
      final appDirectory = await getApplicationSupportPath(appId);
      final fileStore = FileKeyValueStore(
        directory: appDirectory,
        fileName: 'amplify_secure_storage_scopes.json',
      );
      fileStore.writeAll({});

      // assert value IS cleared when initializing a new instance with a new scope
      final storage2 = AmplifySecureStorageDart(
        config: AmplifySecureStorageConfig(scope: 'test'),
      );
      final value2 = await storage2.read(key: 'key_1');
      expect(value2, isNull);
    },
  );
}
