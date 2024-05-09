// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template query_snapshot}
/// A snapshot consisting of the [items] in the local store when the
/// snapshot was generated and a boolean value to indicate if
/// this model has finished syncing data over the network.
/// {@endtemplate}
class QuerySnapshot<T extends Model> {
  /// {@macro query_snapshot}
  factory QuerySnapshot({
    required List<T> items,
    required bool isSynced,
    QueryPredicate? where,
    List<QuerySortBy>? sortBy,
  }) {
    final sortedList = SortedList.fromPresortedList(
      items: items,
      compare: _createCompareFromSortBy(sortBy),
    );
    return QuerySnapshot._(
      sortedList: sortedList,
      isSynced: isSynced,
      where: where,
      sortBy: sortBy,
    );
  }

  const QuerySnapshot._({
    required SortedList<T> sortedList,
    required this.isSynced,
    this.where,
    this.sortBy,
  }) : _sortedList = sortedList;

  // A list of models sorted according to the value provided for sortBy
  final SortedList<T> _sortedList;

  /// A list of models from the local store at the time that the snapshot was generated
  List<T> get items => _sortedList.toList();

  /// Indicates whether all sync queries for this model are complete
  final bool isSynced;

  /// A condition, or group of conditions, used to query data
  final QueryPredicate? where;

  /// A list of [QuerySortBy] conditions, used to specify the order of results
  final List<QuerySortBy>? sortBy;

  /// Returns a new QuerySnapshot with the [status] applied
  // ignore: avoid_positional_boolean_parameters
  QuerySnapshot<T> withSyncStatus(bool status) {
    return QuerySnapshot._(
      sortedList: _sortedList,
      isSynced: status,
      where: where,
      sortBy: sortBy,
    );
  }

  /// Returns a new QuerySnapshot with the [event] applied
  ///
  /// Takes the existing snapshots [QueryPredicate] and [QuerySortBy]
  /// conditions into consideration when applying the event
  ///
  /// If the [event] does not result in a change to the QuerySnapshot,
  /// the current snapshot is returned
  QuerySnapshot<T> withSubscriptionEvent({
    required SubscriptionEvent<T> event,
  }) {
    SortedList<T>? updatedSortedList;

    final newItem = event.item;
    final matchesPredicate = where == null || where!.evaluate(newItem);
    final currentIndex = _sortedList.indexWhere(
      (item) => item.modelIdentifier == newItem.modelIdentifier,
    );
    final currentItem = currentIndex == -1 ? null : _sortedList[currentIndex];

    switch (event.eventType) {
      case EventType.create:
        // Skip any new item that doesn't match the predicate.
        if (!matchesPredicate) break;
        if (currentItem == null) {
          // Add the item to the list. This is a new item and matches the
          // predicate, it should be added.
          updatedSortedList = _sortedList.copy()..addSorted(newItem);
        } else if (currentItem != newItem) {
          // Update the item in the list. This is a "new" item, but it already
          // exists in the list with a different value. This is the result of
          // the item being created on this device and App Sync returning an
          // updated item during the create mutation. This can happen when using
          // custom resolvers.
          updatedSortedList = _sortedList.copy()
            ..updateAtSorted(
              currentIndex,
              newItem,
            );
        }
      case EventType.update:
        if (currentItem == null && matchesPredicate) {
          // Add the item to the list. This is an existing item that matches the
          // predicate but is not yet in the list.
          updatedSortedList = _sortedList.copy()..addSorted(newItem);
        } else if (currentItem != newItem && matchesPredicate) {
          // Update the item in the list. This item exists in the list but the
          // value of the item has changed.
          updatedSortedList = _sortedList.copy()
            ..updateAtSorted(
              currentIndex,
              newItem,
            );
        } else if (currentItem != null && !matchesPredicate) {
          // Remove the item from the list. The item exist in the list but no
          // longer matches the predicate.
          updatedSortedList = _sortedList.copy()..removeAt(currentIndex);
        }
      case EventType.delete:
        if (currentItem != null) {
          // Remove the item from the list. The item exists in the list but was
          // just deleted.
          updatedSortedList = _sortedList.copy()..removeAt(currentIndex);
        }
    }
    if (updatedSortedList != null) {
      return QuerySnapshot._(
        sortedList: updatedSortedList,
        isSynced: isSynced,
        where: where,
        sortBy: sortBy,
      );
    }
    return this;
  }
}

// Sort orders are compared one at a time starting with the
// sort order at index 0, which has the highest priority
// and ending with the last sort order in the list, which has the
// lowest priority.
//
// As soon as a sort order is reached that results in a non 0 value,
// that value is returned and the remaining sort orders are not considered.
//
// if sortBy is null, than null is returned to indicate that there is
// no specified sort order
int Function(T a, T b)? _createCompareFromSortBy<T extends Model>(
  List<QuerySortBy>? sortBy,
) {
  if (sortBy == null) {
    return null;
  }
  return (T a, T b) {
    var sortOrder = 0;
    for (final nextSortBy in sortBy) {
      sortOrder = nextSortBy.compare<T>(a, b);
      if (sortOrder != 0) return sortOrder;
    }
    return sortOrder;
  };
}
