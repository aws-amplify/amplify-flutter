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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SortedList', () {
    group('addSorted()', () {
      test('inserts a new item at the correct index', () {
        List<int> items = [1, 2, 3, 7, 10];
        SortedList<int> sortedList = SortedList.fromPresortedList(
          items: items,
          compare: (a, b) => a.compareTo(b),
        );
        sortedList.addSorted(3);
        sortedList.addSorted(8);
        sortedList.addSorted(0);
        sortedList.addSorted(11);

        var expectedItems = [0, 1, 2, 3, 3, 7, 8, 10, 11];
        expect(sortedList.toList(), orderedEquals(expectedItems));
      });

      test('inserts a new item at the end of the list if compare is omitted',
          () {
        List<int> items = [1, 2, 3, 7, 10];
        SortedList<int> sortedList = SortedList.fromPresortedList(items: items);
        sortedList.addSorted(3);
        sortedList.addSorted(8);
        sortedList.addSorted(0);
        sortedList.addSorted(11);

        var expectedItems = [1, 2, 3, 7, 10, 3, 8, 0, 11];
        expect(sortedList.toList(), orderedEquals(expectedItems));
      });
    });

    group('updateAt()', () {
      test('updates the item and maintains the sort order', () {
        List<int> items = [1, 2, 3, 7, 10];
        SortedList<int> sortedList = SortedList.fromPresortedList(
          items: items,
          compare: (a, b) => a.compareTo(b),
        );
        sortedList.updateAtSorted(1, 5);
        sortedList.updateAtSorted(4, 1);

        var expectedItems = [1, 1, 3, 5, 7];
        expect(sortedList.toList(), orderedEquals(expectedItems));
      });
      test(
          'updates the item without change the list order if compare is omitted',
          () {
        List<int> items = [1, 2, 3, 7, 10];
        SortedList<int> sortedList = SortedList.fromPresortedList(items: items);
        sortedList.updateAtSorted(1, 5);
        sortedList.updateAtSorted(4, 1);

        var expectedItems = [1, 5, 3, 7, 1];
        expect(sortedList.toList(), orderedEquals(expectedItems));
      });
    });
  });
}
