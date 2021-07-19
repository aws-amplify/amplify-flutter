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

part of 'query_field.dart';

// Top level global function to be used without the context of the enclosing class
QueryPredicateGroup not(QueryPredicate predicate) {
  return new QueryPredicateGroup(QueryPredicateGroupType.not, [predicate]);
}

abstract class QueryPredicate {
  const QueryPredicate();

  Map<String, dynamic> serializeAsMap();
}

// Represents rating > 4
class QueryPredicateOperation extends QueryPredicate {
  final String field;
  final QueryFieldOperator queryFieldOperator;

  const QueryPredicateOperation(this.field, this.queryFieldOperator) : super();

  // and
  QueryPredicateGroup and(QueryPredicate predicate) {
    return new QueryPredicateGroup(
        QueryPredicateGroupType.and, [this, predicate]);
  }

  QueryPredicateGroup operator &(QueryPredicate predicate) => and(predicate);

  // or
  QueryPredicateGroup or(QueryPredicate predicate) {
    return new QueryPredicateGroup(
        QueryPredicateGroupType.or, [this, predicate]);
  }

  QueryPredicateGroup operator |(QueryPredicate predicate) => or(predicate);

  @override
  Map<String, dynamic> serializeAsMap() {
    return <String, dynamic>{
      'queryPredicateOperation': <String, dynamic>{
        'field': field,
        'fieldOperator': queryFieldOperator.serializeAsMap(),
      },
    };
  }
}

enum QueryPredicateGroupType { and, or, not }

extension QueryPredicateGroupTypeExtension on QueryPredicateGroupType {
  String toShortString() {
    return this.toString().split('.').last;
  }
}

// Represents rating > 4 & blogName.contains("awesome")
class QueryPredicateGroup extends QueryPredicate {
  final QueryPredicateGroupType type;
  final List<QueryPredicate> predicates;

  QueryPredicateGroup(this.type, this.predicates);

  // and
  QueryPredicateGroup and(QueryPredicate predicate) {
    if (this.type == QueryPredicateGroupType.and) {
      predicates.add(predicate);
      return this;
    }
    return new QueryPredicateGroup(
        QueryPredicateGroupType.and, [this, predicate]);
  }

  QueryPredicateGroup operator &(QueryPredicate predicate) => and(predicate);

  // or
  QueryPredicateGroup or(QueryPredicate predicate) {
    if (this.type == QueryPredicateGroupType.or) {
      predicates.add(predicate);
      return this;
    }
    return new QueryPredicateGroup(
        QueryPredicateGroupType.or, [this, predicate]);
  }

  QueryPredicateGroup operator |(QueryPredicate predicate) => or(predicate);

  @override
  Map<String, dynamic> serializeAsMap() {
    return <String, dynamic>{
      'queryPredicateGroup': <String, dynamic>{
        'type': type.toShortString(),
        'predicates':
            predicates.map((predicate) => predicate.serializeAsMap()).toList()
      },
    };
  }
}
