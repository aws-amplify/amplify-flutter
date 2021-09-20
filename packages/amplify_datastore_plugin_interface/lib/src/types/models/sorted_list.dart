/// An Object that holds a list that maintains a specifc sort order
///
/// methods that modify the list of items will respect the sort order
/// and mutate the list in an efficient manor for sorted lists, generally
/// O(n) time complexity at worst
///
/// if no compare function is provided, the list behaves like an unsorted list
class SortedList<T> {
  // items in the list
  List<T> _items;

  // comparision function used to maintain list sort
  final int Function(T a, T b)? _compare;

  /// creates a SortedList from a pre-sorted list of items
  ///
  /// This requires that the provided items are sorted according to the
  /// compare function, otherwise the sort order of the list will not be
  /// maintained
  SortedList.fromPresortedList({
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
    removeAt(index);
    add(item);
  }

  void operator []=(int index, T item) => updateAt(index, item);

  /// Removes the object at position [index] from this list.
  void removeAt(int index) {
    _items.removeAt(index);
  }

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
