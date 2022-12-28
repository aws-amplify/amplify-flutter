// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:retry/retry.dart';
import 'package:smithy/smithy.dart';

class Retryer {
  const Retryer([this._options = const RetryOptions()]);

  final RetryOptions _options;

  /// Whether the exception should be retried.
  bool isRetryable(Exception exception) {
    return exception is SmithyException && exception.retryConfig != null;
  }

  /// Performs [f], retryng with exponential back-off according to [options]
  /// if [isRetryable] returns `true`.
  ///
  /// Provide [onRetry] to do work on every retry attempt.
  CancelableOperation<R> retry<R>(
    CancelableOperation<R> Function() fn, {
    FutureOr<void> Function(Exception, [Duration?])? onRetry,
    FutureOr<void> Function()? onCancel,
  }) {
    CancelableOperation<R>? currentOperation;
    final completer = CancelableCompleter<R>(
      onCancel: () {
        currentOperation?.cancel();
        onCancel?.call();
      },
    );
    Future<void>(() async {
      var attempt = 0;
      while (true) {
        attempt++; // first invocation is the first attempt
        try {
          final operation = fn();
          currentOperation = operation;
          final result = await operation.valueOrCancellation();
          if (result is! R || operation.isCanceled) {
            return completer.operation.cancel();
          }
          return completer.complete(result);
        } on Exception catch (e) {
          if (!isRetryable(e) || attempt >= _options.maxAttempts) {
            rethrow;
          }
          if (onRetry != null) {
            await onRetry(e);
          }
        }

        // Sleep for a delay
        await Future<void>.delayed(_options.delay(attempt));
      }
    }).onError(completer.completeError);
    return completer.operation;
  }
}
