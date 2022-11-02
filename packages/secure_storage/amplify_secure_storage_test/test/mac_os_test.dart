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

@TestOn('mac-os')

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:test/test.dart';
import 'package:amplify_secure_storage_dart/src/platforms/amplify_secure_storage_cupertino.dart';

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
