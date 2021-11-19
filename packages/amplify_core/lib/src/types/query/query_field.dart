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
import 'package:flutter/foundation.dart';

import '../../util/parsers.dart';
import '../models/model_field_type.dart';
import '../temporal/datetime_parse.dart';

part 'query_field_operators.dart';
part 'query_pagination.dart';
part 'query_predicate.dart';
part 'query_sort.dart';

class QueryField<T> {
  final String fieldName;
  final ModelFieldType? fieldType;

  const QueryField({required this.fieldName, this.fieldType});

  // Equal operation with operator overloading
  QueryPredicateOperation eq(T value) => new QueryPredicateOperation(
      this.fieldName, new EqualQueryOperator<T>(value));
  // TODO: == operator is not supported in dart to return anything but bool.
  // Figure out if there are any better alternative.
  // QueryPredicateOperation operator ==(Comparable<T> value) => eq(value);

  // Not equal to operation with operator overloading
  QueryPredicateOperation ne(T value) => new QueryPredicateOperation(
      this.fieldName, new NotEqualQueryOperator<T>(value));
  // TODO: != is not a user overridable operator. Anything better we can do?
  // QueryPredicateOperation operator !=(Comparable<T> value) => ne(value);

  // Less than or equal to operation with operator overloading
  QueryPredicateOperation le(Comparable<T> value) =>
      new QueryPredicateOperation(
          this.fieldName, new LessOrEqualQueryOperator<Comparable<T>>(value));
  QueryPredicateOperation operator <=(Comparable<T> value) => le(value);

  // Less than operation with operator overloading
  QueryPredicateOperation lt(Comparable<T> value) =>
      new QueryPredicateOperation(
          this.fieldName, new LessThanQueryOperator<Comparable<T>>(value));
  QueryPredicateOperation operator <(Comparable<T> value) => lt(value);

  // Greater than equal to operation with operator overloading
  QueryPredicateOperation ge(Comparable<T> value) =>
      new QueryPredicateOperation(this.fieldName,
          new GreaterOrEqualQueryOperator<Comparable<T>>(value));
  QueryPredicateOperation operator >=(Comparable<T> value) => ge(value);

  // Greater than operation with operator overloading
  QueryPredicateOperation gt(Comparable<T> value) =>
      new QueryPredicateOperation(
          this.fieldName, new GreaterThanQueryOperator<Comparable<T>>(value));
  QueryPredicateOperation operator >(Comparable<T> value) => gt(value);

  // Contains operation. No operator overloading for this one
  QueryPredicateOperation contains(String value) => new QueryPredicateOperation(
      this.fieldName, new ContainsQueryOperator(value));

  // Between operation. No operator overloading for this one
  QueryPredicateOperation between(Comparable<T> start, Comparable<T> end) =>
      new QueryPredicateOperation(
          this.fieldName, new BetweenQueryOperator<Comparable<T>>(start, end));

  // Begins with operation. No operator overloading for this one
  QueryPredicateOperation beginsWith(String value) =>
      new QueryPredicateOperation(
          this.fieldName, new BeginsWithQueryOperator(value));

  // Sorting (Discussed later in this doc)
  QuerySortBy ascending() {
    return new QuerySortBy(field: fieldName, order: QuerySortOrder.ascending);
  }

  QuerySortBy descending() {
    return new QuerySortBy(field: fieldName, order: QuerySortOrder.descending);
  }
}
