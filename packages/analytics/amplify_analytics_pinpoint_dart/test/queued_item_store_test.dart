// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/dart_queued_item_store.dart';

import 'package:test/test.dart';

void main() {
  late DartQueuedItemStore db;

  group('DartQueuedItemStore ', () {
    setUpAll(() {
      db = DartQueuedItemStore('/tmp');
    });

    tearDownAll(() async {
      await db.clear();
    });

    setUp(() async {
      await db.clear();
    });

    test('writes values to storage', () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.add(value);
      }

      final readItems = await db.get(values.length);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, equals(values));
    });

    test('returns first n items in storage', () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.add(value);
      }

      final readItems = await db.get(3);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, equals(values.sublist(0, 3)));
    });

    test(
        'returns all stored items when get request size exceeds stored item count',
        () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.add(value);
      }

      final readItems = await db.get(100);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values);
    });

    test('deletes all items in storage', () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.add(value);
      }

      await db.deleteItems(await db.get(100));

      final readItems = await db.get(100);
      expect(readItems, isEmpty);
    });

    test('deletes first subset of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.add(value);
      }

      await db.deleteItems(await db.get(3));

      final readItems = await db.get(100);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values.sublist(3));
    });

    test('deletes middle subset of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.add(value);
      }

      final itemsToDelete = (await db.get(100)).toList().sublist(3, 7);
      await db.deleteItems(itemsToDelete);

      final readItems = await db.get(100);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, const ['0', '1', '2', '7', '8', '9']);
    });

    test('deletes last subset of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.add(value);
      }

      final itemsToDelete = (await db.get(100)).toList().sublist(7);
      await db.deleteItems(itemsToDelete);

      final readItems = await db.get(100);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values.sublist(0, 7));
    });

    test('deletes first, middle, and last subsets of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.add(value);
      }

      const valuesToDelete = ['0', '1', '4', '5', '8', '9'];
      final itemsToDelete = (await db.get(100)).where((item) {
        return valuesToDelete.contains(item.value);
      });
      await db.deleteItems(itemsToDelete);

      final readItems = await db.get(100);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, const ['2', '3', '6', '7']);
    });

    test('deletes inner left and right subsets of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.add(value);
      }

      const valuesToDelete = ['1', '2', '4', '5', '7', '8'];
      final itemsToDelete = (await db.get(100)).where((item) {
        return valuesToDelete.contains(item.value);
      });
      await db.deleteItems(itemsToDelete);

      final readItems = await db.get(100);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, const ['0', '3', '6', '9']);
    });

    test('deletes the first stored item', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.add(value);
      }

      final itemsToDelete = (await db.get(100)).toList().sublist(0, 1);
      await db.deleteItems(itemsToDelete);

      final readItems = await db.get(100);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values.sublist(1));
    });

    test('deletes the last stored item', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.add(value);
      }

      final itemsToDelete = (await db.get(100)).toList().sublist(9);
      await db.deleteItems(itemsToDelete);

      final readItems = await db.get(100);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values.sublist(0, 9));
    });

    test('throws no error when deleting all items twice', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.add(value);
      }

      var readValues = await db.get(100);

      await db.deleteItems(readValues);
      await db.deleteItems(readValues);

      readValues = await db.get(100);

      expect(readValues, isEmpty);
    });
  });
}
