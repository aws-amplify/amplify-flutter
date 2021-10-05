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

library model;

import 'package:amplify_datastore_plugin_interface/src/types/models/sorted_list.dart';
import 'package:amplify_datastore_plugin_interface/src/types/query/query_field.dart';

import 'model.dart';

import 'subscription_event.dart';

/// {@template query_snapshot}
/// A snapshot consisting of the [items] in the local store when the
/// snapshot was generated and a boolean value to indicate if
/// this model has finished syncing data over the network.
/// {@endtemplate}
class QuerySnapshot<T extends Model> {
  /// All model instances from the local store at the time that the snapshot was recieved
  final SortedList<T> _list;

  List<T> get items => _list.items;

  /// Indicates whether all sync queries for this model are complete
  final bool isSynced;

  /// A condition, or group of conditions, used to query data
  final QueryPredicate? where;

  /// A list of sortBy conditions, used to specify the order of results
  final List<QuerySortBy>? sortBy;

  const QuerySnapshot._({
    required SortedList<T> list,
    required this.isSynced,
    this.where,
    this.sortBy,
  }) : _list = list;

  /// {@macro query_snapshot}
  factory QuerySnapshot({
    required List<T> items,
    required bool isSynced,
    QueryPredicate? where,
    List<QuerySortBy>? sortBy,
  }) {
    var list = SortedList.fromPresortedList(
      items: items,
      compare: _createCompareFromSortBy(sortBy),
    );
    return QuerySnapshot._(
      list: list,
      isSynced: isSynced,
      where: where,
      sortBy: sortBy,
    );
  }

  /// Returns a new QuerySnapshot with the [status] applied
  QuerySnapshot<T> withSyncStatus(bool status) {
    return QuerySnapshot._(
      list: _list,
      isSynced: status,
      where: where,
      sortBy: sortBy,
    );
  }

  /// Returns a new QuerySnapshot with the [event] applied
  ///
  /// Takes the existing snapshots QueryPredicate and QuerySortBy
  /// into consideration when applying the event
  ///
  /// If the [event] does not result in a change the the QuerySnapshot,
  /// the current snapshot is returned
  QuerySnapshot<T> withSubscriptionEvent({
    required SubscriptionEvent<T> event,
  }) {
    SortedList<T> sortedList = this._list.copy();
    bool itemsHasBeenUpdated = false;

    bool eventItemMatchesPredicate =
        where == null || where!.evaluate(event.item);
    int currentItemIndex = sortedList.items
        .indexWhere((item) => item.getId() == event.item.getId());
    T? currentItem =
        currentItemIndex == -1 ? null : sortedList.items[currentItemIndex];
    bool currentItemMatchesPredicate =
        currentItem != null && (where == null || where!.evaluate(currentItem));

    if (event.eventType == EventType.create &&
        eventItemMatchesPredicate &&
        currentItem == null) {
      sortedList.add(event.item);
      itemsHasBeenUpdated = true;
    } else if (event.eventType == EventType.delete && currentItem != null) {
      sortedList.removeAt(currentItemIndex);
      itemsHasBeenUpdated = true;
    } else if (event.eventType == EventType.update) {
      if (currentItemMatchesPredicate &&
          eventItemMatchesPredicate &&
          currentItem != event.item) {
        sortedList[currentItemIndex] = event.item;
        itemsHasBeenUpdated = true;
      } else if (currentItemMatchesPredicate && !eventItemMatchesPredicate) {
        sortedList.removeAt(currentItemIndex);
        itemsHasBeenUpdated = true;
      } else if (!currentItemMatchesPredicate && eventItemMatchesPredicate) {
        sortedList.add(event.item);
        itemsHasBeenUpdated = true;
      }
    }
    if (itemsHasBeenUpdated) {
      var snapshot = QuerySnapshot._(
        list: sortedList,
        isSynced: isSynced,
        where: where,
        sortBy: sortBy,
      );
      return snapshot;
    }
    return this;
  }
}

int Function(T a, T b)? _createCompareFromSortBy<T extends Model>(
  List<QuerySortBy>? sortBy,
) {
  if (sortBy == null) {
    return null;
  }
  return (T a, T b) {
    int sortOrder = 0;
    List<QuerySortBy> _sortBy = List.from(sortBy);
    while (sortOrder == 0 && _sortBy.isNotEmpty) {
      QuerySortBy nextSortBy = _sortBy.removeAt(0);
      sortOrder = nextSortBy.compare<T>(a, b);
    }
    return sortOrder;
  };
}
