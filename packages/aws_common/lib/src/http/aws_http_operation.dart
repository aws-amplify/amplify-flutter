// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';

/// {@template aws_common.http.aws_http_operation}
/// A wrapper over a [CancelableOperation] with progress monitoring support for
/// in-flight HTTP requests sent with an [AWSHttpClient].
/// {@endtemplate}
class AWSHttpOperation<ResponseType extends AWSBaseHttpResponse>
    extends AWSOperation<ResponseType> with AWSProgressOperation<ResponseType> {
  /// Creates an [AWSHttpOperation] from a [CancelableOperation].
  AWSHttpOperation(
    super.operation, {
    required this.requestProgress,
    required this.responseProgress,
    super.onCancel,
  });

  /// The result of [operation].
  ///
  /// If [operation] is canceled before completing, this throws a
  /// [CancellationException].
  Future<ResponseType> get response async {
    final result = await operation.valueOrCancellation();
    if (result is! ResponseType || operation.isCanceled) {
      throw CancellationException(id);
    }
    return result;
  }

  @override
  final Stream<int> requestProgress;

  @override
  final Stream<int> responseProgress;

  @override
  String get runtimeTypeName => 'AWSHttpOperation';
}
