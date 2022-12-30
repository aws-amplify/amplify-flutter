// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// {@template smithy.smithy_operation}
/// An operation run against a service with progress monitoring support.
/// {@endtemplate}
class SmithyOperation<Output> extends AWSOperation<Output>
    with AWSProgressOperation<Output> {
  /// {@macro smithy.smithy_operation}
  SmithyOperation(
    super.operation, {
    required String operationName,
    required this.requestProgress,
    required this.responseProgress,
    super.onCancel,
  }) : runtimeTypeName = operationName;

  @override
  AWSLogger get logger => AWSLogger().createChild(runtimeTypeName);

  /// The result of [operation].
  ///
  /// If [operation] is canceled before completing, this throws a
  /// [CancellationException].
  Future<Output> get result async {
    final result = await operation.valueOrCancellation();
    if (result is! Output || operation.isCanceled) {
      throw CancellationException(id);
    }
    return result;
  }

  @override
  final Stream<int> requestProgress;

  @override
  final Stream<int> responseProgress;

  @override
  final String runtimeTypeName;
}

/// A constructor of [Output] from [T].
///
/// See:
/// - [JsonConstructor]
typedef Constructor<T extends Object?, Output> = Output Function(T);

/// A constructor of [Output] from a JSON map.
typedef JsonConstructor<Output> = Constructor<Map<String, Object?>, Output>;
