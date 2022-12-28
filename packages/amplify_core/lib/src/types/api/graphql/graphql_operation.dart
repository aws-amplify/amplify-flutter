// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.graphql.graphql_operation}
/// A wrapper over a [CancelableOperation] specific to [GraphQLResponse].
/// {@endtemplate}
class GraphQLOperation<T> extends AWSOperation<GraphQLResponse<T>> {
  /// Creates an [GraphQLOperation] from a [CancelableOperation].
  GraphQLOperation(
    super.operation, {
    super.onCancel,
  });

  /// The [GraphQLResponse] returned from this [operation].
  ///
  /// If [operation] is canceled before completing, this throws a
  /// [CancellationException].
  Future<GraphQLResponse<T>> get response async {
    final result = await operation.valueOrCancellation();
    if (result is! GraphQLResponse<T> || operation.isCanceled) {
      throw CancellationException(id);
    }
    return result;
  }

  @override
  String get runtimeTypeName => 'GraphQLOperation';
}
