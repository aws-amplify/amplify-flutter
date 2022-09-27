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
  return QueryPredicateGroup(QueryPredicateGroupType.not, [predicate]);
}

/// Represents individual conditions or groups of conditions
/// that are used to query data
abstract class QueryPredicate<T extends Model> {
  static const _queryPredicateAll =
      _QueryPredicateConstant(QueryPredicateConstantType.all);

  const QueryPredicate();

  /// A static instance of [QueryPredicate] that matches any object.
  ///
  /// You can use [QueryPredicate.all] with [DataStoreSyncExpression] like this:
  /// ```dart
  /// // A sync expression matching any object of Post
  /// var syncExpression = DataStoreSyncExpresion(
  ///   Post.classType,
  ///   () => QueryPredicate.all,
  /// )
  /// ```
  static QueryPredicate get all => _queryPredicateAll;

  Map<String, dynamic> serializeAsMap();

  /// Evaluate this predicate
  bool evaluate(T model);
}

// Represents rating > 4
class QueryPredicateOperation extends QueryPredicate {
  final String field;
  final QueryFieldOperator queryFieldOperator;

  const QueryPredicateOperation(this.field, this.queryFieldOperator);

  // and
  QueryPredicateGroup and(QueryPredicate predicate) {
    return QueryPredicateGroup(QueryPredicateGroupType.and, [this, predicate]);
  }

  QueryPredicateGroup operator &(QueryPredicate predicate) => and(predicate);

  // or
  QueryPredicateGroup or(QueryPredicate predicate) {
    return QueryPredicateGroup(QueryPredicateGroupType.or, [this, predicate]);
  }

  QueryPredicateGroup operator |(QueryPredicate predicate) => or(predicate);

  @override
  bool evaluate(Model model) {
    final fieldName = getFieldName(field);
    final value = model.toMap()[fieldName];
    return queryFieldOperator.evaluate(value);
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return <String, dynamic>{
      'queryPredicateOperation': <String, dynamic>{
        'field': getFieldName(field),
        'fieldOperator': queryFieldOperator.serializeAsMap(),
      },
    };
  }
}

class QueryByIdentifierOperation extends QueryPredicate {
  final String field;
  final QueryFieldOperator queryFieldOperator;

  const QueryByIdentifierOperation(this.field, this.queryFieldOperator);

  @override
  bool evaluate(Model model) {
    return queryFieldOperator.evaluate(model.modelIdentifier);
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return <String, dynamic>{
      'queryByIdentifierOperation': queryFieldOperator.serializeAsMap(),
    };
  }
}

enum QueryPredicateGroupType { and, or, not }

// Represents rating > 4 & blogName.contains("awesome")
class QueryPredicateGroup extends QueryPredicate {
  final QueryPredicateGroupType type;
  final List<QueryPredicate> predicates;

  QueryPredicateGroup(this.type, this.predicates);

  // and
  QueryPredicateGroup and(QueryPredicate predicate) {
    if (type == QueryPredicateGroupType.and) {
      predicates.add(predicate);
      return this;
    }
    return QueryPredicateGroup(QueryPredicateGroupType.and, [this, predicate]);
  }

  QueryPredicateGroup operator &(QueryPredicate predicate) => and(predicate);

  // or
  QueryPredicateGroup or(QueryPredicate predicate) {
    if (type == QueryPredicateGroupType.or) {
      predicates.add(predicate);
      return this;
    }
    return QueryPredicateGroup(QueryPredicateGroupType.or, [this, predicate]);
  }

  QueryPredicateGroup operator |(QueryPredicate predicate) => or(predicate);

  @override
  bool evaluate(Model model) {
    switch (type) {
      case QueryPredicateGroupType.and:
        return predicates.every((predicate) => predicate.evaluate(model));
      case QueryPredicateGroupType.or:
        return predicates.any((predicate) => predicate.evaluate(model));
      case QueryPredicateGroupType.not:
        return predicates.every((predicate) => !predicate.evaluate(model));
    }
  }

  @override
  Map<String, dynamic> serializeAsMap() {
    return <String, dynamic>{
      'queryPredicateGroup': <String, dynamic>{
        'type': describeEnum(type),
        'predicates':
            predicates.map((predicate) => predicate.serializeAsMap()).toList()
      },
    };
  }
}

enum QueryPredicateConstantType { none, all }

class _QueryPredicateConstant extends QueryPredicate {
  final QueryPredicateConstantType _type;

  const _QueryPredicateConstant(this._type) : super();

  @override
  bool evaluate(Model model) => _type == QueryPredicateConstantType.all;

  @override
  Map<String, dynamic> serializeAsMap() {
    return <String, dynamic>{
      'queryPredicateConstant': <String, dynamic>{'type': describeEnum(_type)},
    };
  }
}
