// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'query_field.dart';

// Top level global function to be used without the context of the enclosing class
QueryPredicateGroup not(QueryPredicate predicate) {
  return QueryPredicateGroup(QueryPredicateGroupType.not, [predicate]);
}

/// Represents individual conditions or groups of conditions
/// that are used to query data
abstract class QueryPredicate<T extends Model> {
  const QueryPredicate();

  static const _queryPredicateAll =
      _QueryPredicateConstant(QueryPredicateConstantType.all);

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
  const QueryPredicateOperation(this.field, this.queryFieldOperator);

  final String field;
  final QueryFieldOperator<Object?> queryFieldOperator;

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
  const QueryByIdentifierOperation(this.field, this.queryFieldOperator);

  final String field;
  final QueryFieldOperator<Object?> queryFieldOperator;

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
  const QueryPredicateGroup(this.type, this.predicates);

  final QueryPredicateGroupType type;
  final List<QueryPredicate> predicates;

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
        'type': type.name,
        'predicates':
            predicates.map((predicate) => predicate.serializeAsMap()).toList(),
      },
    };
  }
}

enum QueryPredicateConstantType { none, all }

class _QueryPredicateConstant extends QueryPredicate {
  const _QueryPredicateConstant(this._type);

  final QueryPredicateConstantType _type;

  @override
  bool evaluate(Model model) => _type == QueryPredicateConstantType.all;

  @override
  Map<String, dynamic> serializeAsMap() {
    return <String, dynamic>{
      'queryPredicateConstant': <String, dynamic>{'type': _type.name},
    };
  }
}
