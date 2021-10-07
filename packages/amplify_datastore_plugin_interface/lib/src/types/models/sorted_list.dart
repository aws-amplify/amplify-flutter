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

/// An Object that holds a list that maintains a specifc sort order
///
/// methods that modify the list of items will respect the sort order
/// and mutate the list in an efficient manor for sorted lists, generally
/// O(n) time complexity at worst
///
/// if no compare function is provided, the list behaves like an unsorted list
///
/// Note: this is intended for use in observeQuery and is not intended to be
/// part of the public API
class SortedList<T> {
  // items in the list
  final List<T> _items;

  // comparision function used to maintain list sort
  final int Function(T a, T b)? _compare;

  /// creates a SortedList from a pre-sorted list of items
  ///
  /// This requires that the provided items are sorted according to the
  /// compare function, otherwise the sort order of the list will not be
  /// maintained
  const SortedList.fromPresortedList({
    required List<T> items,
    int Function(T a, T b)? compare,
  })  : _items = items,
        _compare = compare;

  /// adds a new item to the list, maintaining the sort order
  void add(T item) {
    if (this._compare == null || _items.length == 0) {
      _items.add(item);
      return;
    }
    int insertIndex = _findInsertionIndex(item);
    if (insertIndex < 0 || insertIndex > _items.length) {
      print('out of range');
    }
    _items.insert(insertIndex, item);
  }

  /// Updates an item in the list, maintaining the sort order
  void updateAt(int index, T item) {
    if (this._compare == null) {
      _items[index] = item;
    } else {
      removeAt(index);
      add(item);
    }
  }

  void operator []=(int index, T item) => updateAt(index, item);

  /// Removes the object at position [index] from this list.
  void removeAt(int index) {
    _items.removeAt(index);
  }

  int indexWhere(bool test(T element)) {
    return _items.indexWhere(test);
  }

  T elementAt(int index) => _items.elementAt(index);

  T operator [](int index) => elementAt(index);

  List<T> get items => List<T>.from(_items);

  SortedList<T> copy() =>
      SortedList.fromPresortedList(items: items, compare: _compare);

  /// Finds the index to insert the [item] at
  ///
  /// O(log(n)) time complexity
  int _findInsertionIndex(T item) {
    int low = 0;
    int high = _items.length;

    while (low < high) {
      var mid = (low + high) >> 1;
      if (_compare!(item, _items[mid]) > 0)
        low = mid + 1;
      else
        high = mid;
    }
    return low;
  }
}
