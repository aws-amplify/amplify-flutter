// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_logging_cloudwatch_dart/src/path_provider/app_path_provider.dart';
import 'package:amplify_logging_cloudwatch_dart/src/queued_item_store/dart_queued_item_store.dart';
import 'package:amplify_logging_cloudwatch_dart/src/queued_item_store/in_memory_queued_item_store.dart';
import 'package:amplify_logging_cloudwatch_dart/src/queued_item_store/queued_item_store.dart';
import 'package:test/test.dart';

void main() {
  late QueuedItemStore db;

  group('InMemoryQueuedItemStore ', () {
    setUpAll(() {
      db = InMemoryQueuedItemStore();
    });

    tearDownAll(() async {
      await db.clear();
    });

    setUp(() async {
      await db.clear();
    });

    Future<Iterable<QueuedItem>> getAll() async {
      return db.getCount(100);
    }

    test('writes values to storage', () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      final readItems = await db.getCount(values.length);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, equals(values));
    });

    test('writes values to storage with queue rotation enabled', () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.addItem(
          value,
          DateTime.now().toIso8601String(),
          enableQueueRotation: true,
        );
      }

      final readItems = await db.getAll();
      expect(readItems.length, 1);
      expect(readItems.first.value, values.last);
    });

    test('returns first n items in storage', () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      final readItems = await db.getCount(3);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, equals(values.sublist(0, 3)));
    });

    test(
        'returns all stored items when get request size exceeds stored item count',
        () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      final readItems = await db.getCount(100);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values);
    });

    test('deletes all items in storage', () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      await db.deleteItems(await getAll());

      final readItems = await getAll();
      expect(readItems, isEmpty);
    });

    test('deletes first subset of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      await db.deleteItems(await db.getCount(3));

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values.sublist(3));
    });

    test('deletes middle subset of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      final itemsToDelete = (await getAll()).toList().sublist(3, 7);
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, const ['0', '1', '2', '7', '8', '9']);
    });

    test('deletes last subset of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      final itemsToDelete = (await getAll()).toList().sublist(7);
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values.sublist(0, 7));
    });

    test('deletes first, middle, and last subsets of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      const valuesToDelete = ['0', '1', '4', '5', '8', '9'];
      final itemsToDelete = (await getAll()).where((item) {
        return valuesToDelete.contains(item.value);
      });
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, const ['2', '3', '6', '7']);
    });

    test('deletes inner left and right subsets of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      const valuesToDelete = ['1', '2', '4', '5', '7', '8'];
      final itemsToDelete = (await getAll()).where((item) {
        return valuesToDelete.contains(item.value);
      });
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, const ['0', '3', '6', '9']);
    });

    test('deletes the first stored item', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      final itemsToDelete = (await getAll()).toList().sublist(0, 1);
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values.sublist(1));
    });

    test('deletes the last stored item', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      final itemsToDelete = (await getAll()).toList().sublist(9);
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values.sublist(0, 9));
    });

    test('throws no error when deleting all items twice', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      var readValues = await getAll();

      await db.deleteItems(readValues);
      await db.deleteItems(readValues);

      readValues = await getAll();

      expect(readValues, isEmpty);
    });

    test('returns all stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values);
    });

    test('returns empty list when no items are stored', () async {
      final readItems = await getAll();
      expect(readItems, isEmpty);
    });

    test(
      'checks if storage is full',
      () async {
        const capacityLimit = 1;

        for (var i = 0; i < 100; i++) {
          await db.addItem('0', DateTime.now().toIso8601String());
        }

        var result = await db.isFull(capacityLimit);
        expect(result, isFalse);

        // add enough items to exceed capacity limit of 1mb
        for (var i = 0; i < 50000; i++) {
          await db.addItem('0', DateTime.now().toIso8601String());
        }

        result = await db.isFull(capacityLimit);
        expect(result, isTrue);
      },
    );
  });

  group('DartQueuedItemStore ', () {
    setUpAll(() {
      db = DartQueuedItemStore(const DartAppPathProvider());
    });

    tearDownAll(() async {
      await db.clear();
    });

    setUp(() async {
      await db.clear();
    });

    Future<Iterable<QueuedItem>> getAll() async {
      return db.getCount(100);
    }

    test('writes values to storage', () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      final readItems = await db.getCount(values.length);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, equals(values));
    });

    test('writes values to storage with enable queue rotation', () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.addItem(
          value,
          DateTime.now().toIso8601String(),
          enableQueueRotation: true,
        );
      }

      final readItems = await getAll();
      expect(readItems.length, 1);
      expect(readItems.first.value, values.last);
    });

    test('returns first n items in storage', () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      final readItems = await db.getCount(3);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, equals(values.sublist(0, 3)));
    });

    test(
        'returns all stored items when get request size exceeds stored item count',
        () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      final readItems = await db.getCount(100);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values);
    });

    test('deletes all items in storage', () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      await db.deleteItems(await getAll());

      final readItems = await getAll();
      expect(readItems, isEmpty);
    });

    test('deletes first subset of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      await db.deleteItems(await db.getCount(3));

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values.sublist(3));
    });

    test('deletes middle subset of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      final itemsToDelete = (await getAll()).toList().sublist(3, 7);
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, const ['0', '1', '2', '7', '8', '9']);
    });

    test('deletes last subset of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      final itemsToDelete = (await getAll()).toList().sublist(7);
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values.sublist(0, 7));
    });

    test('deletes first, middle, and last subsets of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      const valuesToDelete = ['0', '1', '4', '5', '8', '9'];
      final itemsToDelete = (await getAll()).where((item) {
        return valuesToDelete.contains(item.value);
      });
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, const ['2', '3', '6', '7']);
    });

    test('deletes inner left and right subsets of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      const valuesToDelete = ['1', '2', '4', '5', '7', '8'];
      final itemsToDelete = (await getAll()).where((item) {
        return valuesToDelete.contains(item.value);
      });
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, const ['0', '3', '6', '9']);
    });

    test('deletes the first stored item', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      final itemsToDelete = (await getAll()).toList().sublist(0, 1);
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values.sublist(1));
    });

    test('deletes the last stored item', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      final itemsToDelete = (await getAll()).toList().sublist(9);
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values.sublist(0, 9));
    });

    test('throws no error when deleting all items twice', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      var readValues = await getAll();

      await db.deleteItems(readValues);
      await db.deleteItems(readValues);

      readValues = await getAll();

      expect(readValues, isEmpty);
    });

    test('returns all stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.addItem(value, DateTime.now().toIso8601String());
      }

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values);
    });

    test('returns empty list when no items are stored', () async {
      final readItems = await getAll();
      expect(readItems, isEmpty);
    });

    test(
      'checks if storage is full',
      () async {
        const capacityLimit = 1;

        final largeItem = '0' * 10240; // 10KB for example

        for (var i = 0; i < 5; i++) {
          await db.addItem(largeItem, DateTime.now().toIso8601String());
        }

        var result = await db.isFull(capacityLimit);
        expect(result, isFalse);

        for (var i = 0; i < 100; i++) {
          await db.addItem(largeItem, DateTime.now().toIso8601String());
        }

        result = await db.isFull(capacityLimit);
        expect(result, isTrue);
      },
    );
  });
}
