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

/// Represents a field on a model that can be used to form a query predicate
///
/// M is the type of Model the query field is applicable to (i.e. Post)
/// V is the field type (i.e. String for Post.NAME)

class QueryField<M extends Model, V> {
  final String fieldName;
  final ModelFieldType? fieldType;
  final V Function(M) getValue;

  const QueryField({
    required this.fieldName,
    required this.getValue,
    this.fieldType,
  });

  /// Equal to operation.
  ///
  /// Returns true if the attribute being compared is equal to the provided value.
  QueryPredicateOperation<M, V> eq(V? value) {
    return QueryPredicateOperation<M, V>(
      this.fieldName,
      EqualQueryOperator<M, V>(
        value: value,
        getValue: this.getValue,
      ),
    );
  }

  /// Not equal to operation.
  ///
  /// Returns true if the attribute being compared is equal to the provided value.
  QueryPredicateOperation<M, V> ne(V? value) {
    return QueryPredicateOperation<M, V>(
      this.fieldName,
      NotEqualQueryOperator<M, V>(
        value: value,
        getValue: this.getValue,
      ),
    );
  }
}

/// QueryField extension for Comparable types
extension ComparableQueryField<M extends Model, V extends Comparable<V>?>
    on QueryField<M, V> {
  /// {@template query_field_le}
  /// Less than or equal to operation.
  ///
  /// Returns true if the attribute being compared is less than or equal to the provided value.
  /// {@endtemplate}
  QueryPredicateOperation<M, V> le(V value) {
    return QueryPredicateOperation<M, V>(
      this.fieldName,
      LessOrEqualQueryOperator<M, V>(
        value: value,
        getValue: this.getValue,
      ),
    );
  }

  /// {@template query_field_lt}
  /// Less than operation.
  ///
  /// Returns true if the attribute being compared is less than the provided value.
  /// {@endtemplate}
  QueryPredicateOperation<M, V> lt(V value) {
    return QueryPredicateOperation<M, V>(
      this.fieldName,
      LessThanQueryOperator<M, V>(
        value: value,
        getValue: this.getValue,
      ),
    );
  }

  /// {@template query_field_ge}
  /// Greater than or equal to operation.
  ///
  /// Returns true if the attribute being compared is greater than or equal to the provided value.
  /// {@endtemplate}
  QueryPredicateOperation<M, V> ge(V value) {
    return QueryPredicateOperation<M, V>(
      this.fieldName,
      GreaterOrEqualQueryOperator<M, V>(
        value: value,
        getValue: this.getValue,
      ),
    );
  }

  /// {@template query_field_lt}
  /// Greater than operation.
  ///
  /// Returns true if the attribute being compared is greater than the provided value.
  /// {@endtemplate}
  QueryPredicateOperation<M, V> gt(V value) {
    return QueryPredicateOperation<M, V>(
      this.fieldName,
      GreaterThanQueryOperator<M, V>(
        value: value,
        getValue: this.getValue,
      ),
    );
  }

  /// Between operation.
  ///
  /// Returns true if the attribute being compared is between the provided values.
  QueryPredicateOperation<M, V> between(V start, V end) {
    return QueryPredicateOperation<M, V>(
      this.fieldName,
      BetweenQueryOperator<M, V>(start: start, end: end, getValue: getValue),
    );
  }

  // TODO: Should contains and beginsWith be supported for Comparable types?
  // They currently do work for num types.
  // It is not clear if that is intentional, or if it just happens to work.

  /// {@template query_field_contains}
  /// Contains operation.
  ///
  /// Returns true if the attribute being compared contains the provided value.
  /// {@endtemplate}
  // @Deprecated('contains is deprecated for non String or List types')
  // QueryPredicateOperation contains(String value) {
  //   return QueryPredicateOperation(
  //     this.fieldName,
  //     ContainsQueryOperator<M>(value: value, getValue: getValue),
  //   );
  // }

  /// {@template query_field_beginsWith}
  /// Begins with operation.
  ///
  /// Returns true if the attribute being compared begins with the provided value.
  /// {@endtemplate}
  // @Deprecated('beginsWith is deprecated for non String types')
  // QueryPredicateOperation beginsWith(String value) {
  //   return QueryPredicateOperation<M, String>(
  //     this.fieldName,
  //     BeginsWithQueryOperator<M>(value: value, getValue: getValue),
  //   );
  // }

  /// {@template query_field_ascending}
  /// Ascending sort operation.
  ///
  /// Sorts the models in ascending order by the given field.
  /// {@endtemplate}
  QuerySortBy<M, V> ascending() {
    return QuerySortBy<M, V>(
      field: fieldName,
      order: QuerySortOrder.ascending,
      getValue: getValue,
    );
  }

  /// {@template query_field_descending}
  /// Descending sort operation.
  ///
  /// Sorts the models in descending order by the given field.
  /// {@endtemplate}
  QuerySortBy<M, V> descending() {
    return QuerySortBy<M, V>(
      field: fieldName,
      order: QuerySortOrder.descending,
      getValue: getValue,
    );
  }

  /// {@macro query_field_le}
  QueryPredicateOperation operator <=(V value) => le(value);

  /// {@macro query_field_lt}
  QueryPredicateOperation operator <(V value) => lt(value);

  /// {@macro query_field_ge}
  QueryPredicateOperation operator >=(V value) => ge(value);

  /// {@macro query_field_gt}
  QueryPredicateOperation operator >(V value) => gt(value);
}

/// QueryField extension for String types
extension StringQueryField<M extends Model> on QueryField<M, String?> {
  /// {@macro query_field_contains}
  QueryPredicateOperation<M, String?> contains(String value) {
    return QueryPredicateOperation<M, String?>(
      this.fieldName,
      ContainsQueryOperator<M>(value: value, getValue: getValue),
    );
  }

  /// {@macro query_field_beginsWith}
  QueryPredicateOperation<M, String?> beginsWith(String value) {
    return QueryPredicateOperation<M, String?>(
      this.fieldName,
      BeginsWithQueryOperator<M>(value: value, getValue: getValue),
    );
  }
}

/// QueryField extension for bool types
///
/// bool types can be sorted even though they are not Comparable

extension BoolQueryField<M extends Model> on QueryField<M, bool?> {
  /// {@macro query_field_ascending}
  QuerySortBy<M, bool?> ascending() {
    return QuerySortBy<M, bool?>(
      field: fieldName,
      order: QuerySortOrder.ascending,
      getValue: getValue,
    );
  }

  /// {@macro query_field_descending}
  QuerySortBy<M, bool?> descending() {
    return QuerySortBy<M, bool?>(
      field: fieldName,
      order: QuerySortOrder.descending,
      getValue: getValue,
    );
  }
}

/// QueryField extension for List types
///
/// V is the type data in the list (i.e. List<V>)
/// M is the type of Model the query field is applicable to (i.e. Post)
extension ListQueryField<M extends Model, V> on QueryField<M, List<V>?> {
  /// {@macro query_field_contains}
  QueryPredicateOperation<M, List<V>?> contains(V value) {
    return QueryPredicateOperation<M, List<V>?>(
      this.fieldName,
      ListContainsQueryOperator<M, V>(value: value, getValue: getValue),
    );
  }
}
