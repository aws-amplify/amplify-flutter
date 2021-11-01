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
  // A list of models sorted according to the value provided for sortBy
  final SortedList<T> _sortedList;

  // A map of models in the sorted list, used to effeciently perform
  // lookups on the list by model id
  final Map<String, T> _models;

  /// A list of models from the local store at the time that the snapshot was generated
  List<T> get items => _sortedList.toList();

  /// Indicates whether all sync queries for this model are complete
  final bool isSynced;

  /// A condition, or group of conditions, used to query data
  final QueryPredicate? where;

  /// A list of [QuerySortBy] conditions, used to specify the order of results
  final List<QuerySortBy>? sortBy;

  const QuerySnapshot._({
    required SortedList<T> sortedList,
    required Map<String, T> models,
    required this.isSynced,
    this.where,
    this.sortBy,
  })  : _sortedList = sortedList,
        _models = models;

  /// {@macro query_snapshot}
  factory QuerySnapshot({
    required List<T> items,
    required bool isSynced,
    QueryPredicate? where,
    List<QuerySortBy>? sortBy,
  }) {
    SortedList<T> sortedList = SortedList<T>.fromPresortedList(
      items: items,
      compare: _createCompareFromSortBy(sortBy),
    );
    Map<String, T> models = Map<String, T>.fromIterable(
      items,
      key: (item) => (item as T).getId(),
      value: (item) => item,
    );
    return QuerySnapshot._(
      sortedList: sortedList,
      models: models,
      isSynced: isSynced,
      where: where,
      sortBy: sortBy,
    );
  }

  QuerySnapshot<T> copyWith({
    SortedList<T>? sortedList,
    Map<String, T>? models,
    bool? syncStatus,
  }) {
    return QuerySnapshot._(
      sortedList: sortedList ?? _sortedList,
      models: models ?? _models,
      isSynced: syncStatus ?? isSynced,
      where: where,
      sortBy: sortBy,
    );
  }

  /// Returns a new QuerySnapshot with the [status] applied
  QuerySnapshot<T> withSyncStatus(bool status) {
    return this.copyWith(syncStatus: status);
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
    T item = event.item;
    String id = item.getId();
    bool itemMatchesPredicate = where == null || where!.evaluate(item);
    bool snapshotContainsItem = _models.containsKey(id);

    switch (event.eventType) {
      case EventType.create:
        // if the newly created item matches the predicate and the item is
        // not already in the list, return a new snapshot with the new item
        if (itemMatchesPredicate && !snapshotContainsItem) {
          return this.copyWith(
            sortedList: SortedList.from(_sortedList)..addSorted(item),
            models: Map.from(_models)..updateItem(id, item),
          );
        }
        break;
      case EventType.update:
        // if the updated item is in the list, update or remove based
        // on the the query predicate
        if (snapshotContainsItem) {
          T currentItem = _models[id]!;
          if (itemMatchesPredicate && currentItem != item) {
            return this.copyWith(
              sortedList: SortedList.from(_sortedList)
                ..updateSorted(currentItem, item),
              models: Map.from(_models)..updateItem(id, item),
            );
          } else if (!itemMatchesPredicate) {
            return this.copyWith(
              sortedList: SortedList.from(_sortedList)..remove(currentItem),
              models: Map.from(_models)..remove(currentItem.getId()),
            );
          }
        }
        // otherwise, add the item to the list if it matches the predicate
        else if (itemMatchesPredicate) {
          return this.copyWith(
            sortedList: SortedList.from(_sortedList)..addSorted(item),
            models: Map.from(_models)..updateItem(id, item),
          );
        }
        break;
      case EventType.delete:
        // if the deleted item is in the list, remove it
        if (snapshotContainsItem) {
          return this.copyWith(
            sortedList: SortedList.from(_sortedList)..remove(item),
            models: Map.from(_models)..remove(id),
          );
        }
        break;
    }

    // if none of the above conditions were met, return the existing snapshot
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
    int sortOrder = 0;
    for (var nextSortBy in sortBy) {
      sortOrder = nextSortBy.compare<T>(a, b);
      if (sortOrder != 0) return sortOrder;
    }
    return sortOrder;
  };
}

extension _ModelMapExtension<T extends Model> on Map<String, T> {
  updateItem(String key, T item) {
    return this.update(key, (value) => item, ifAbsent: () => item);
  }
}
