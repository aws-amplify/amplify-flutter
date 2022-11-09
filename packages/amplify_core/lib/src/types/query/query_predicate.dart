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
QueryPredicateGroup<ModelIdentifier, M>
    not<ModelIdentifier extends Object, M extends Model<ModelIdentifier, M>>(
        QueryPredicate<ModelIdentifier, M> predicate) {
  return QueryPredicateGroup(QueryPredicateGroupType.not, [predicate]);
}

/// Represents individual conditions or groups of conditions
/// that are used to query data
abstract class QueryPredicate<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
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
  static QueryPredicate all<ModelIdentifier extends Object,
          M extends Model<ModelIdentifier, M>>() =>
      _QueryPredicateConstant<ModelIdentifier, M>(
          QueryPredicateConstantType.all);

  Map<String, dynamic> serializeAsMap();

  /// Evaluate this predicate
  bool evaluate(M model);
}

// Represents rating > 4
class QueryPredicateOperation<ModelIdentifier extends Object,
        M extends Model<ModelIdentifier, M>>
    extends QueryPredicate<ModelIdentifier, M> {
  final String field;
  final QueryFieldOperator queryFieldOperator;

  const QueryPredicateOperation(this.field, this.queryFieldOperator);

  // and
  QueryPredicateGroup<ModelIdentifier, M> and(
      QueryPredicate<ModelIdentifier, M> predicate) {
    return QueryPredicateGroup(QueryPredicateGroupType.and, [this, predicate]);
  }

  QueryPredicateGroup<ModelIdentifier, M> operator &(
          QueryPredicate<ModelIdentifier, M> predicate) =>
      and(predicate);

  // or
  QueryPredicateGroup<ModelIdentifier, M> or(
      QueryPredicate<ModelIdentifier, M> predicate) {
    return QueryPredicateGroup(QueryPredicateGroupType.or, [this, predicate]);
  }

  QueryPredicateGroup<ModelIdentifier, M> operator |(
          QueryPredicate<ModelIdentifier, M> predicate) =>
      or(predicate);

  @override
  bool evaluate(M model) {
    String fieldName = getFieldName(field);
    //ignore:implicit_dynamic_variable
    var value = model.toJson()[fieldName];
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

class QueryByIdentifierOperation<ModelIdentifier extends Object,
        M extends Model<ModelIdentifier, M>>
    extends QueryPredicate<ModelIdentifier, M> {
  final String field;
  final QueryFieldOperator<ModelIdentifier> queryFieldOperator;

  const QueryByIdentifierOperation(this.field, this.queryFieldOperator);

  @override
  bool evaluate(M model) {
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
class QueryPredicateGroup<ModelIdentifier extends Object,
        M extends Model<ModelIdentifier, M>>
    extends QueryPredicate<ModelIdentifier, M> {
  final QueryPredicateGroupType type;
  final List<QueryPredicate<ModelIdentifier, M>> predicates;

  QueryPredicateGroup(this.type, this.predicates);

  // and
  QueryPredicateGroup<ModelIdentifier, M> and(
      QueryPredicate<ModelIdentifier, M> predicate) {
    if (type == QueryPredicateGroupType.and) {
      predicates.add(predicate);
      return this;
    }
    return QueryPredicateGroup(QueryPredicateGroupType.and, [this, predicate]);
  }

  QueryPredicateGroup<ModelIdentifier, M> operator &(
          QueryPredicate<ModelIdentifier, M> predicate) =>
      and(predicate);

  // or
  QueryPredicateGroup<ModelIdentifier, M> or(
      QueryPredicate<ModelIdentifier, M> predicate) {
    if (type == QueryPredicateGroupType.or) {
      predicates.add(predicate);
      return this;
    }
    return QueryPredicateGroup(QueryPredicateGroupType.or, [this, predicate]);
  }

  QueryPredicateGroup<ModelIdentifier, M> operator |(
          QueryPredicate<ModelIdentifier, M> predicate) =>
      or(predicate);

  @override
  bool evaluate(M model) {
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
            predicates.map((predicate) => predicate.serializeAsMap()).toList()
      },
    };
  }
}

enum QueryPredicateConstantType { none, all }

class _QueryPredicateConstant<ModelIdentifier extends Object,
        M extends Model<ModelIdentifier, M>>
    extends QueryPredicate<ModelIdentifier, M> {
  final QueryPredicateConstantType _type;

  const _QueryPredicateConstant(this._type) : super();

  @override
  bool evaluate(M model) => _type == QueryPredicateConstantType.all;

  @override
  Map<String, dynamic> serializeAsMap() {
    return <String, dynamic>{
      'queryPredicateConstant': <String, dynamic>{'type': _type.name},
    };
  }
}
