/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_datastore_plugin_interface/src/types/models/sorted_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SortedList', () {
    group('add()', () {
      test('inserts a new item at the correct index', () {
        List<int> items = [1, 2, 3, 7, 10];
        SortedList<int> sortedList = SortedList.fromPresortedList(
          items: items,
          compare: (a, b) => a.compareTo(b),
        );
        sortedList.add(3);
        sortedList.add(8);
        sortedList.add(0);
        sortedList.add(11);

        var expectedItems = [0, 1, 2, 3, 3, 7, 8, 10, 11];
        expect(sortedList.items, orderedEquals(expectedItems));
      });

      test('inserts a new item at the end of the list if compare is omitted',
          () {
        List<int> items = [1, 2, 3, 7, 10];
        SortedList<int> sortedList = SortedList.fromPresortedList(items: items);
        sortedList.add(3);
        sortedList.add(8);
        sortedList.add(0);
        sortedList.add(11);

        var expectedItems = [1, 2, 3, 7, 10, 3, 8, 0, 11];
        expect(sortedList.items, orderedEquals(expectedItems));
      });
    });

    group('updateAt()', () {
      test('updates the item and maintains the sort order', () {
        List<int> items = [1, 2, 3, 7, 10];
        SortedList<int> sortedList = SortedList.fromPresortedList(
          items: items,
          compare: (a, b) => a.compareTo(b),
        );
        sortedList.updateAt(1, 5);
        sortedList.updateAt(4, 1);

        var expectedItems = [1, 1, 3, 5, 7];
        expect(sortedList.items, orderedEquals(expectedItems));
      });
      test(
          'updates the item without change the list order if compare is omitted',
          () {
        List<int> items = [1, 2, 3, 7, 10];
        SortedList<int> sortedList = SortedList.fromPresortedList(items: items);
        sortedList.updateAt(1, 5);
        sortedList.updateAt(4, 1);

        var expectedItems = [1, 5, 3, 7, 1];
        expect(sortedList.items, orderedEquals(expectedItems));
      });
    });

    group('removeAt()', () {
      test('remove the item at the index', () {
        List<int> items = [1, 2, 3, 7, 10];
        SortedList<int> sortedList = SortedList.fromPresortedList(
          items: items,
          compare: (a, b) => a.compareTo(b),
        );
        sortedList.removeAt(4);
        sortedList.removeAt(1);

        var expectedItems = [1, 3, 7];
        expect(sortedList.items, orderedEquals(expectedItems));
      });
    });

    group('indexWhere()', () {
      test('returns the index of the given item', () {
        List<int> items = [1, 2, 3, 7, 10];
        SortedList<int> sortedList = SortedList.fromPresortedList(
          items: items,
          compare: (a, b) => a.compareTo(b),
        );
        expect(sortedList.indexWhere((element) => element == 2), 1);
      });

      test('returns the -1 if the item is not in the list', () {
        List<int> items = [1, 2, 3, 7, 10];
        SortedList<int> sortedList = SortedList.fromPresortedList(
          items: items,
          compare: (a, b) => a.compareTo(b),
        );
        expect(sortedList.indexWhere((element) => element == 11), -1);
      });
    });
  });
}
