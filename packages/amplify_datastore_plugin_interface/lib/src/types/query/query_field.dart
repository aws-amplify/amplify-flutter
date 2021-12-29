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

library query_field;

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

part 'query_field_operators.dart';
part 'query_pagination.dart';
part 'query_predicate.dart';
part 'query_sort.dart';

class QueryField<T> {
  final String fieldName;
  final ModelFieldType? fieldType;

  const QueryField({required this.fieldName, this.fieldType});

  /// Equal to operation.
  ///
  /// Returns true if the attribute being compared is equal to the provided value.
  QueryPredicateOperation eq(T? value) {
    return QueryPredicateOperation(
      this.fieldName,
      EqualQueryOperator<T>(value),
    );
  }

  /// Not equal to operation.
  ///
  /// Returns true if the attribute being compared is equal to the provided value.
  QueryPredicateOperation ne(T? value) {
    return QueryPredicateOperation(
      this.fieldName,
      NotEqualQueryOperator<T>(value),
    );
  }
}

extension ComparableQueryField<T extends Comparable<T>>
    on QueryField<Comparable<T>?> {
  /// {@template query_field_le}
  /// Less than or equal to operation.
  ///
  /// Returns true if the attribute being compared is less than or equal to the provided value.
  /// {@endtemplate}
  QueryPredicateOperation le(T value) {
    return QueryPredicateOperation(
      this.fieldName,
      LessOrEqualQueryOperator<T>(value),
    );
  }

  /// {@template query_field_lt}
  /// Less than operation.
  ///
  /// Returns true if the attribute being compared is less than the provided value.
  /// {@endtemplate}
  QueryPredicateOperation lt(T value) {
    return QueryPredicateOperation(
      this.fieldName,
      LessThanQueryOperator<T>(value),
    );
  }

  /// {@template query_field_ge}
  /// Greater than or equal to operation.
  ///
  /// Returns true if the attribute being compared is greater than or equal to the provided value.
  /// {@endtemplate}
  QueryPredicateOperation ge(T value) {
    return QueryPredicateOperation(
      this.fieldName,
      GreaterOrEqualQueryOperator<T>(value),
    );
  }

  /// {@template query_field_lt}
  /// Greater than operation.
  ///
  /// Returns true if the attribute being compared is greater than the provided value.
  /// {@endtemplate}
  QueryPredicateOperation gt(T value) {
    return QueryPredicateOperation(
      this.fieldName,
      GreaterThanQueryOperator<T>(value),
    );
  }

  /// Between operation.
  ///
  /// Returns true if the attribute being compared is between the provided values.
  QueryPredicateOperation between(T start, T end) {
    return QueryPredicateOperation(
      this.fieldName,
      BetweenQueryOperator<T>(start, end),
    );
  }

  /// {@template query_field_contains}
  /// Contains operation.
  ///
  /// Returns true if the attribute being compared contains the provided value.
  /// {@endtemplate}
  @Deprecated('contains is deprecated for non String or List types')
  QueryPredicateOperation contains(String value) {
    return QueryPredicateOperation(
      this.fieldName,
      ContainsQueryOperator(value),
    );
  }

  /// {@template query_field_beginsWith}
  /// Begins with operation.
  ///
  /// Returns true if the attribute being compared begins with the provided value.
  /// {@endtemplate}
  @Deprecated('beginsWith is deprecated for non String types')
  QueryPredicateOperation beginsWith(String value) {
    return QueryPredicateOperation(
      this.fieldName,
      BeginsWithQueryOperator(value),
    );
  }

  /// {@template query_field_ascending}
  /// Ascending sort operation.
  ///
  /// Sorts the models in ascending order by the given field.
  /// {@endtemplate}
  QuerySortBy ascending() {
    return QuerySortBy(field: fieldName, order: QuerySortOrder.ascending);
  }

  /// {@template query_field_descending}
  /// Descending sort operation.
  ///
  /// Sorts the models in descending order by the given field.
  /// {@endtemplate}
  QuerySortBy descending() {
    return QuerySortBy(field: fieldName, order: QuerySortOrder.descending);
  }

  /// {@macro query_field_le}
  QueryPredicateOperation operator <=(T value) => le(value);

  /// {@macro query_field_lt}
  QueryPredicateOperation operator <(T value) => lt(value);

  /// {@macro query_field_ge}
  QueryPredicateOperation operator >=(T value) => ge(value);

  /// {@macro query_field_gt}
  QueryPredicateOperation operator >(T value) => gt(value);
}

extension StringQueryField on QueryField<String?> {
  /// {@macro query_field_contains}
  QueryPredicateOperation contains(String value) {
    return QueryPredicateOperation(
      this.fieldName,
      ContainsQueryOperator(value),
    );
  }

  /// {@macro query_field_beginsWith}
  QueryPredicateOperation beginsWith(String value) {
    return QueryPredicateOperation(
      this.fieldName,
      BeginsWithQueryOperator(value),
    );
  }
}

extension BoolQueryField on QueryField<bool?> {
  /// {@macro query_field_ascending}
  QuerySortBy ascending() {
    return QuerySortBy(field: fieldName, order: QuerySortOrder.ascending);
  }

  /// {@macro query_field_descending}
  QuerySortBy descending() {
    return QuerySortBy(field: fieldName, order: QuerySortOrder.descending);
  }
}

extension ListQueryField<T> on QueryField<List<T>?> {
  /// {@macro query_field_contains}
  QueryPredicateOperation contains(String value) {
    return QueryPredicateOperation(
      this.fieldName,
      ContainsQueryOperator(value),
    );
  }
}
