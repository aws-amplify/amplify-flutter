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

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/aws_common.dart';

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
