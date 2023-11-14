// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

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
class SortedList<E> with ListMixin<E> {
  /// creates a SortedList from a pre-sorted list of items
  ///
  /// This requires that the provided items are sorted according to the
  /// compare function, otherwise the sort order of the list will not be
  /// maintained
  const SortedList.fromPresortedList({
    required List<E> items,
    int Function(E a, E b)? compare,
  })  : _items = items,
        _compare = compare;

  // Required for ListMixin
  @override
  set length(int newLength) {
    _items.length = newLength;
  }

  // Required for ListMixin
  @override
  int get length => _items.length;

  // Required for ListMixin
  @override
  E operator [](int index) => _items[index];

  // Required for ListMixin
  @override
  void operator []=(int index, E value) {
    _items[index] = value;
  }

  // ListMixin add() only works for lists that accept null
  @override
  void add(E element) => _items.add(element);

  // items in the list
  final List<E> _items;

  // comparision function used to maintain list sort
  final int Function(E a, E b)? _compare;

  /// adds a new item to the list, maintaining the sort order
  void addSorted(E item) {
    if (_compare == null || _items.isEmpty) {
      add(item);
      return;
    }
    final insertIndex = _findInsertionIndex(item);
    insert(insertIndex, item);
  }

  /// Updates an item in the list, maintaining the sort order
  void updateAtSorted(int index, E item) {
    if (_compare == null) {
      this[index] = item;
    } else {
      removeAt(index);
      addSorted(item);
    }
  }

  /// Returns a copy of the object
  SortedList<E> copy() {
    return SortedList.fromPresortedList(
      items: List.from(_items),
      compare: _compare,
    );
  }

  /// Finds the index to insert the [item] at
  ///
  /// O(log(n)) time complexity
  int _findInsertionIndex(E item) {
    var low = 0;
    var high = _items.length;

    while (low < high) {
      final mid = (low + high) >> 1;
      if (_compare!(item, _items[mid]) > 0) {
        low = mid + 1;
      } else {
        high = mid;
      }
    }
    return low;
  }
}
