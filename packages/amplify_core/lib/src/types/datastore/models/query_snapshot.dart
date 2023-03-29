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
    final sortedListCopy = SortedList<T>.from(_sortedList);
    SortedList<T>? updatedSortedList;

    final newItem = event.item;
    final newItemMatchesPredicate = where == null || where!.evaluate(newItem);
    final currentItemIndex =
        // TODO(HuiSF): remove the ignore when merging CPK feature commits
        // ignore: deprecated_member_use_from_same_package
        sortedListCopy.indexWhere((item) => item.getId() == newItem.getId());
    final currentItem =
        currentItemIndex == -1 ? null : sortedListCopy[currentItemIndex];
    final currentItemMatchesPredicate =
        currentItem != null && (where == null || where!.evaluate(currentItem));

    if (event.eventType == EventType.create &&
        newItemMatchesPredicate &&
        currentItem == null) {
      updatedSortedList = sortedListCopy..addSorted(newItem);
    } else if (event.eventType == EventType.delete && currentItem != null) {
      updatedSortedList = sortedListCopy..removeAt(currentItemIndex);
    } else if (event.eventType == EventType.update) {
      if (currentItemMatchesPredicate &&
          newItemMatchesPredicate &&
          currentItem != newItem) {
        updatedSortedList = sortedListCopy
          ..updateAtSorted(currentItemIndex, newItem);
      } else if (currentItemMatchesPredicate && !newItemMatchesPredicate) {
        updatedSortedList = sortedListCopy..removeAt(currentItemIndex);
      } else if (currentItem == null && newItemMatchesPredicate) {
        updatedSortedList = sortedListCopy..addSorted(newItem);
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
