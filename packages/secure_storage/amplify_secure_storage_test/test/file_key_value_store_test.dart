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

@TestOn('vm')

import 'package:amplify_secure_storage_dart/src/utils/file_key_value_store.dart';
import 'package:file/memory.dart';
import 'package:test/test.dart';

void main() {
  late FileKeyValueStore storage;
  group('FileKeyValueStore', () {
    setUp(() {
      storage = FileKeyValueStore(
        path: 'path',
        fileName: 'file',
        fs: MemoryFileSystem(),
      );
    });

    test('readKey & writeKey', () async {
      // assert initial state is null
      final value1 = await storage.readKey(key: 'key');
      expect(value1, isNull);

      // write key-value pair
      await storage.writeKey(key: 'key', value: 'value');

      // assert value is updated
      final value2 = await storage.readKey(key: 'key');
      expect(value2, 'value');
    });

    test('removeKey', () async {
      // seed storage & assert value is present
      await storage.writeKey(key: 'key', value: 'value');
      final value1 = await storage.readKey(key: 'key');
      expect(value1, 'value');

      // remove key
      await storage.removeKey(key: 'key');

      // assert key is removed
      final value2 = await storage.readKey(key: 'key');
      expect(value2, isNull);
    });

    test('readAll', () async {
      // write key-value pairs
      await storage.writeKey(key: 'key1', value: 'value1');
      await storage.writeKey(key: 'key2', value: 'value2');

      // assert values are updated
      final data = await storage.readAll();
      expect(data['key1'], 'value1');
      expect(data['key2'], 'value2');
    });

    test('writeAll', () async {
      // write key-value pairs
      await storage.writeAll({
        'key1': 'value1',
        'key2': 'value2',
      });

      // assert values are updated
      final data = await storage.readAll();
      expect(data['key1'], 'value1');
      expect(data['key2'], 'value2');
    });

    test('includes', () async {
      // write key-value pair
      await storage.writeKey(key: 'key1', value: 'value1');

      // assert that existing key returns true
      final includesKey1 = await storage.containsKey(key: 'key1');
      expect(includesKey1, isTrue);

      // assert that a non existing key returns false
      final includesKey2 = await storage.containsKey(key: 'key2');
      expect(includesKey2, isFalse);
    });
  });
}
