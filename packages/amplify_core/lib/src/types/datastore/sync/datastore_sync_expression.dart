// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// Sync expression to configure DataStore plugin with. These expressions
/// include query predicates which specify filters for selectively persisting a
/// subset of data to the local device
class DataStoreSyncExpression {
  /// A unique id for this sync expression
  final String id;
  final ModelType _modelType;
  final QueryPredicate Function() _queryPredicateResolver;

  /// Default constructor
  DataStoreSyncExpression(this._modelType, this._queryPredicateResolver)
      : id = UUID.getUUID();

  /// Returns the result of the query predicate resolver
  QueryPredicate resolveQueryPredicate() => _queryPredicateResolver();

  /// Returns a map representation of this sync expression as it is needed by
  /// native platforms
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'modelName': _modelType.modelName(),
      'queryPredicate': _queryPredicateResolver().serializeAsMap()
    };
  }
}
