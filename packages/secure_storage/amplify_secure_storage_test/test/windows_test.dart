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
@TestOn('windows')

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

import 'package:test/test.dart';

const key1 = 'key_1';
const value1 = 'value_1';
const value2 = 'value_2';

void main() {
  group('Windows', () {
    test(
      'keys should be shared when using the same storage path',
      () async {
        final storage1 = AmplifySecureStorageDart(
          config: AmplifySecureStorageConfig(
            scope: 'default',
            windowsOptions: WindowsSecureStorageOptions(
              storagePath: '/tmp/app',
            ),
          ),
        );

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
        final storage1 = AmplifySecureStorageDart(
          config: AmplifySecureStorageConfig(
            scope: 'default',
            windowsOptions: WindowsSecureStorageOptions(
              storagePath: '/tmp/app1',
            ),
          ),
        );

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
}
