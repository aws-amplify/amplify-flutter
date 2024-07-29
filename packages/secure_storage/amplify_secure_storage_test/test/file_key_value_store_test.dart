// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')

import 'dart:io';

import 'package:amplify_secure_storage_dart/src/utils/file_key_value_store.dart';
import 'package:file/local.dart';
import 'package:file/memory.dart';
import 'package:test/test.dart';

void main() {
  late FileKeyValueStore storage;

  final fileSystems = [MemoryFileSystem(), const LocalFileSystem()];

  for (final fileSystem in fileSystems) {
    group('FileKeyValueStore (${fileSystem.runtimeType})', () {
      setUp(() {
        storage = FileKeyValueStore(
          path: 'path',
          fileName: 'file',
          fs: fileSystem,
        );
      });

      tearDown(() async {
        await storage.file.delete();
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

      group('parallel operations', () {
        final items = List.generate(1000, ((i) => i));

        test('should occur in the order they are called', () async {
          final futures = items.map(
            (i) async => storage.writeKey(key: 'key', value: i),
          );
          await Future.wait(futures);
          final value = await storage.readKey(key: 'key');
          expect(value, items.last);
        });

        test('should not result in stale data written to the file', () async {
          final futures = items.map(
            (i) async => storage.writeKey(key: 'key_$i', value: i),
          );
          await Future.wait(futures);
          for (final i in items) {
            final value = await storage.readKey(key: 'key_$i');
            expect(value, items[i]);
          }
        });

        // Reference: https://github.com/aws-amplify/amplify-flutter/issues/5190
        test('should not corrupt the file', () async {
          final futures = items.map(
            (i) async {
              if (i % 5 == 1) {
                await storage.removeKey(key: 'key_${i - 1}');
              }
              return storage.writeKey(key: 'key_$i', value: 'value_$i');
            },
          );
          await Future.wait(futures);
        });
      });

      test('File is cleared when corrupted and can be re-written to', () async {
        await storage.writeKey(key: 'foo', value: 'value');
        final value1 = await storage.readKey(key: 'foo');
        expect(value1, 'value');
        await storage.file
            .writeAsString('{invalid json}', mode: FileMode.append);
        final value2 = await storage.readKey(key: 'foo');
        expect(value2, null);
        await storage.writeKey(key: 'foo', value: 'value');
        final value3 = await storage.readKey(key: 'foo');
        expect(value3, 'value');
      });
    });
  }
}
