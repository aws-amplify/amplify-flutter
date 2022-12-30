// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@template aws_common.operation.aws_operation}
/// A wrapper over a [CancelableOperation].
/// {@endtemplate}
abstract class AWSOperation<T extends Object?>
    with AWSDebuggable, AWSLoggerMixin
    implements Cancelable, Closeable {
  /// Creates an [AWSOperation] from a [CancelableOperation].
  AWSOperation(
    this.operation, {
    FutureOr<void> Function()? onCancel,
  }) : _onCancel = onCancel;

  /// A unique identifier for the operation.
  final String id = uuid();

  final FutureOr<void> Function()? _onCancel;

  @override
  AWSLogger get logger => super.logger.createChild(id);

  /// The wrapped [CancelableOperation] which can be used for cancelable
  /// chaining and interop with other [CancelableOperation]s.
  final CancelableOperation<T> operation;

  final _cancelMemo = AsyncMemoizer<void>();

  @override
  Future<void> cancel() => _cancelMemo.runOnce(() async {
        if (operation.isCanceled || operation.isCompleted) {
          return _onCancel?.call();
        }
        return operation.cancel();
      });

  @override
  @mustCallSuper
  Future<void> close() async {
    await cancel();
  }
}
