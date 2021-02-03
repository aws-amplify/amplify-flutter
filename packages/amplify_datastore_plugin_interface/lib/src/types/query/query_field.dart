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

import 'package:amplify_datastore_plugin_interface/src/types/models/model_field_type.dart';
import 'package:flutter/foundation.dart';
import '../temporal/datetime_parse.dart';

part 'query_field_operators.dart';
part 'query_pagination.dart';
part 'query_predicate.dart';
part 'query_sort.dart';

class QueryField {
  final String fieldName;
  final ModelFieldType fieldType;

  const QueryField({@required this.fieldName, this.fieldType});

  // Equal operation with operator overloading
  QueryPredicateOperation eq(dynamic value) => new QueryPredicateOperation(
      this.fieldName, new EqualQueryOperator(value));
  // TODO: == operator is not supported in dart to return anything but bool.
  // Figure out if there are any better alternative.
  // QueryPredicateOperation operator ==(dynamic value) => eq(value);

  // Not equal to operation with operator overloading
  QueryPredicateOperation ne(dynamic value) => new QueryPredicateOperation(
      this.fieldName, new NotEqualQueryOperator(value));
  // TODO: != is not a user overridable operator. Anything better we can do?
  // QueryPredicateOperation operator !=(dynamic value) => ne(value);

  // Less than or equal to operation with operator overloading
  QueryPredicateOperation le(dynamic value) => new QueryPredicateOperation(
      this.fieldName, new LessOrEqualQueryOperator(value));
  QueryPredicateOperation operator <=(dynamic value) => le(value);

  // Less than operation with operator overloading
  QueryPredicateOperation lt(dynamic value) => new QueryPredicateOperation(
      this.fieldName, new LessThanQueryOperator(value));
  QueryPredicateOperation operator <(dynamic value) => lt(value);

  // Greater than equal to operation with operator overloading
  QueryPredicateOperation ge(dynamic value) => new QueryPredicateOperation(
      this.fieldName, new GreaterOrEqualQueryOperator(value));
  QueryPredicateOperation operator >=(dynamic value) => ge(value);

  // Greater than operation with operator overloading
  QueryPredicateOperation gt(dynamic value) => new QueryPredicateOperation(
      this.fieldName, new GreaterThanQueryOperator(value));
  QueryPredicateOperation operator >(dynamic value) => gt(value);

  // Contains operation. No operator overloading for this one
  QueryPredicateOperation contains(String value) => new QueryPredicateOperation(
      this.fieldName, new ContainsQueryOperator(value));

  // Between operation. No operator overloading for this one
  QueryPredicateOperation between(dynamic start, dynamic end) =>
      new QueryPredicateOperation(
          this.fieldName, new BetweenQueryOperator(start, end));

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
