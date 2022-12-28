// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'query_field.dart';

enum QuerySortOrder { ascending, descending }

extension QuerySortOrderExtension on QuerySortOrder {
  String toShortString() {
    return toString().split('.').last; // toString returns the enumName.value
  }
}

/// Represents a model field and an order to sort by (ascending or descending),
/// used to specify the order of results from a query operation
class QuerySortBy {
  final QuerySortOrder order;
  final String field;

  const QuerySortBy({required this.order, required this.field});

  int compare<T extends Model>(T a, T b) {
    String fieldName = getFieldName(field);
    dynamic valueA = a.toJson()[fieldName];
    dynamic valueB = b.toJson()[fieldName];
    int orderMultiplier = order == QuerySortOrder.ascending ? 1 : -1;
    if (valueA == null || valueB == null) {
      return orderMultiplier * _compareNull(valueA, valueB);
    } else if (valueA is bool && valueB is bool) {
      return orderMultiplier * _compareBool(valueA, valueB);
    } else if (valueA is Comparable && valueB is Comparable) {
      return orderMultiplier * valueA.compareTo(valueB);
    }
    throw const ModelQueryException(
      'A non-comparable field was used as a QuerySortBy',
    );
  }

  int _compareBool(bool a, bool b) {
    if (a == b) return 0;
    return a ? 1 : -1;
  }

  int _compareNull(Object? a, Object? b) {
    if (a == b) return 0;
    return a != null ? 1 : -1;
  }

  Map<String, dynamic> serializeAsMap() {
    return <String, dynamic>{
      'field': getFieldName(field),
      'order': order.toShortString(),
    };
  }
}
