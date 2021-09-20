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
/// A snapshot of the [items] from DataStore, the [events] since the last snapshot,
/// and whether this model has finished syncing and subscriptions are active.
/// {@endtemplate}
class QuerySnapshot<T extends Model> {
  /// All model instances from the local store at the time that the snapshot was recieved
  final SortedList<T> _list;

  List<T> get items => _list.items;

  /// The latest changes since last snapshot
  final List<SubscriptionEvent> events;

  /// Indicates whether all sync queries for this model are complete, and subscriptions are active
  final bool isSynced;

  final QueryPredicate? where;
  final List<QuerySortBy>? sortBy;

  const QuerySnapshot._({
    required SortedList<T> list,
    required this.events,
    required this.isSynced,
    this.where,
    this.sortBy,
  }) : _list = list;

  /// {@macro query_snapshot}
  factory QuerySnapshot({
    required List<T> items,
    required List<SubscriptionEvent> events,
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
      events: events,
      isSynced: isSynced,
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
    SortedList<T> updatedSortedList = this._list.copy();
    bool itemsHasBeenUpdated = false;

    bool eventItemMatchesPredicate =
        _matchesPredicate(model: event.item, where: where);
    int currentItemIndex = updatedSortedList.items
        .indexWhere((item) => item.getId() == event.item.getId());
    T? currentItem = currentItemIndex == -1
        ? null
        : updatedSortedList.items[currentItemIndex];
    bool currentItemMatchesPredicate = currentItem != null &&
        _matchesPredicate(
          model: currentItem,
          where: where,
        );

    if (event.eventType == EventType.create &&
        eventItemMatchesPredicate &&
        currentItem == null) {
      updatedSortedList.add(event.item);
      itemsHasBeenUpdated = true;
    } else if (event.eventType == EventType.delete && currentItem != null) {
      updatedSortedList.removeAt(currentItemIndex);
      itemsHasBeenUpdated = true;
    } else if (event.eventType == EventType.update) {
      if (currentItemMatchesPredicate &&
          eventItemMatchesPredicate &&
          // TODO: should a new snapshot be created for an
          // "update" event where the item does not change?
          // note: this is occurs frequently during sync updates
          currentItem != event.item) {
        updatedSortedList[currentItemIndex] = event.item;
        itemsHasBeenUpdated = true;
      } else if (currentItemMatchesPredicate && eventItemMatchesPredicate) {
        updatedSortedList.removeAt(currentItemIndex);
        itemsHasBeenUpdated = true;
      } else if (!currentItemMatchesPredicate && eventItemMatchesPredicate) {
        updatedSortedList.add(event.item);
        itemsHasBeenUpdated = true;
      }
    }
    if (itemsHasBeenUpdated) {
      var snapshot = QuerySnapshot._(
        list: updatedSortedList,
        events: [event],
        isSynced: isSynced,
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

bool _matchesPredicate<T extends Model>({
  required T model,
  QueryPredicate? where,
}) {
  if (where == null) {
    return true;
  }
  if (where is QueryPredicateOperation) {
    return where.evaluate(model);
  }
  return false;
}
