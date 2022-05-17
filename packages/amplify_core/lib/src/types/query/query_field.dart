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

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/temporal/datetime_parse.dart';
import 'package:flutter/foundation.dart';

part 'query_field_operators.dart';
part 'query_pagination.dart';
part 'query_predicate.dart';
part 'query_sort.dart';

/// {@template amplify_core.query_field}
/// A field used to query models.
///
/// Contains methods for filtering and sorting query results.
/// {@endtemplate}
class QueryField<T> {
  /// {@macro amplify_core.query_field}
  const QueryField({required this.fieldName, this.fieldType});

  /// The name of the field to be queried on.
  final String fieldName;

  /// Contains information about the model that this field represents.
  ///
  /// Will be null if this field is not a model.
  final ModelFieldType? fieldType;

  /// An **equal to** operation.
  ///
  /// Matches models where the given field is equal to the provided value.
  ///
  /// ### Example:
  /// The example returns Posts where the rating is equal to 10.
  ///
  /// ```dart
  /// Amplify.DataStore.query(
  ///  Post.classType,
  ///  where: Post.RATING.eq(10),
  /// );
  /// ```
  QueryPredicateOperation eq(T value) =>
      QueryPredicateOperation(fieldName, EqualQueryOperator<T>(value));

  /// A **not equal to** operation.
  ///
  /// Matches models where the given field is **not** equal to the provided value.
  ///
  /// ### Example:
  /// The example returns Posts where the rating is not equal to 10.
  ///
  /// ```dart
  /// Amplify.DataStore.query(
  ///  Post.classType,
  ///  where: Post.RATING.ne(10),
  /// );
  /// ```
  QueryPredicateOperation ne(T value) =>
      QueryPredicateOperation(fieldName, NotEqualQueryOperator<T>(value));

  /// {@template amplify_core.query_field.le}
  /// A **less than or equal to** operation.
  ///
  /// Matches models where the given field is less than or equal to
  /// the provided value.
  ///
  /// ### Examples:
  /// Both examples return Posts where the rating is less than or equal to 10.
  ///
  /// #### Example with `.le()` method:
  /// ```dart
  /// Amplify.DataStore.query(
  ///  Post.classType,
  ///  where: Post.RATING.le(10),
  /// );
  /// ```
  ///
  /// #### Example with `<=` operator:
  /// ```dart
  /// Amplify.DataStore.query(
  ///  Post.classType,
  ///  where: Post.RATING <= 10,
  /// );
  /// ```
  /// {@endtemplate}
  QueryPredicateOperation le(Comparable<T> value) => QueryPredicateOperation(
      fieldName, LessOrEqualQueryOperator<Comparable<T>>(value));

  /// {@macro amplify_core.query_field.le}
  QueryPredicateOperation operator <=(Comparable<T> value) => le(value);

  /// {@template amplify_core.query_field.lt}
  /// A **less than** operation.
  ///
  /// Matches models where the given field is less than the provided value.
  ///
  /// ### Examples:
  /// Both examples return Posts where the rating is less than 10.
  ///
  /// #### Example with `.lt()` method:
  /// ```dart
  /// Amplify.DataStore.query(
  ///  Post.classType,
  ///  where: Post.RATING.lt(10),
  /// );
  /// ```
  ///
  /// #### Example with `<` operator:
  /// ```dart
  /// Amplify.DataStore.query(
  ///  Post.classType,
  ///  where: Post.RATING < 10,
  /// );
  /// ```
  /// {@endtemplate}
  QueryPredicateOperation lt(Comparable<T> value) => QueryPredicateOperation(
      fieldName, LessThanQueryOperator<Comparable<T>>(value));

  /// {@macro amplify_core.query_field.lt}
  QueryPredicateOperation operator <(Comparable<T> value) => lt(value);

  /// {@template amplify_core.query_field.ge}
  /// A **greater than or equal to** operation.
  ///
  /// Matches models where the given field is greater than or equal to
  /// the provided value.
  ///
  /// ### Examples:
  /// Both examples return Posts where the rating is greater than or equal to 10.
  ///
  /// #### Example with `.ge()` method:
  /// ```dart
  /// Amplify.DataStore.query(
  ///  Post.classType,
  ///  where: Post.RATING.ge(10),
  /// );
  /// ```
  ///
  /// #### Example with `>=` operator:
  /// ```dart
  /// Amplify.DataStore.query(
  ///  Post.classType,
  ///  where: Post.RATING >= 10,
  /// );
  /// ```
  /// {@endtemplate}
  QueryPredicateOperation ge(Comparable<T> value) => QueryPredicateOperation(
      fieldName, GreaterOrEqualQueryOperator<Comparable<T>>(value));

  /// {@macro amplify_core.query_field.ge}
  QueryPredicateOperation operator >=(Comparable<T> value) => ge(value);

  /// {@template amplify_core.query_field.gt}
  /// A **greater than** operation.
  ///
  /// Matches models where the given field is greater than the provided value.
  ///
  /// ### Examples:
  /// Both examples return Posts where the rating is greater than 10.
  ///
  /// #### Example with `.gt()` method:
  /// ```dart
  /// Amplify.DataStore.query(
  ///  Post.classType,
  ///  where: Post.RATING.gt(10),
  /// );
  /// ```
  ///
  /// #### Example with `>` operator:
  /// ```dart
  /// Amplify.DataStore.query(
  ///  Post.classType,
  ///  where: Post.RATING > 10,
  /// );
  /// ```
  /// {@endtemplate}
  QueryPredicateOperation gt(Comparable<T> value) => QueryPredicateOperation(
      fieldName, GreaterThanQueryOperator<Comparable<T>>(value));

  /// {@macro amplify_core.query_field.gt}
  QueryPredicateOperation operator >(Comparable<T> value) => gt(value);

  /// A **contains** operation.
  ///
  /// Matches models where the given field contains the provided value.
  ///
  /// This operation can be applied to fields of type String or
  /// List<String>.
  ///
  /// Example:
  /// ```dart
  /// // returns all blogs that have "foo" in the name
  /// //
  /// // In this example, `Blog.name` is of type String.
  /// Amplify.DataStore.query(
  ///   Blog.classType,
  ///   where: Blog.NAME.contains('foo'),
  /// );
  ///
  /// // returns all blogs that have "bar" as one of the categories.
  /// //
  /// // In this example, `Blog.categories` is of type List<String>.
  /// Amplify.DataStore.query(
  ///   Blog.classType,
  ///   where: Blog.CATEGORIES.contains('bar'),
  /// );
  /// ```
  QueryPredicateOperation contains(String value) => QueryPredicateOperation(
        fieldName,
        ContainsQueryOperator(value),
      );

  /// A **between** operation.
  ///
  /// Matches models where the given field is between the provided start and end values.
  ///
  /// ### Example:
  /// The example returns Posts where the rating is between 5 and 10.
  ///
  /// ```dart
  /// Amplify.DataStore.query(
  ///  Post.classType,
  ///  where: Post.RATING.between(5, 10),
  /// );
  /// ```
  QueryPredicateOperation between(Comparable<T> start, Comparable<T> end) =>
      QueryPredicateOperation(
          fieldName, BetweenQueryOperator<Comparable<T>>(start, end));

  /// A **beginsWith** operation.
  ///
  /// Matches models where the given field begins with the provided value.
  ///
  /// ### Example:
  /// The example returns Posts where the title begins with "foo".
  ///
  /// ```dart
  /// Amplify.DataStore.query(
  ///  Post.classType,
  ///  where: Post.TITLE.beginsWith("foo"),
  /// );
  /// ```
  QueryPredicateOperation beginsWith(String value) =>
      QueryPredicateOperation(fieldName, BeginsWithQueryOperator(value));

  /// Sorts models by the given field in ascending order
  ///
  /// ### Example:
  /// The example returns Posts sorted by rating in ascending order.
  ///
  /// ```dart
  /// Amplify.DataStore.query(
  ///   Post.classType,
  ///   sortBy: [Post.RATING.ascending()],
  /// );
  /// ```
  QuerySortBy ascending() {
    return QuerySortBy(field: fieldName, order: QuerySortOrder.ascending);
  }

  /// Sorts models by the given field in descending order
  ///
  /// ### Example:
  /// The example returns Posts sorted by rating in descending order.
  ///
  /// ```dart
  /// Amplify.DataStore.query(
  ///   Post.classType,
  ///   sortBy: [Post.RATING.descending()],
  /// );
  /// ```
  QuerySortBy descending() {
    return QuerySortBy(field: fieldName, order: QuerySortOrder.descending);
  }
}
