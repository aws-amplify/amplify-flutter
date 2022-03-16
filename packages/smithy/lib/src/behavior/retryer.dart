import 'dart:async';

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
  Future<R> retry<R>(
    Future<R> Function() f, {
    FutureOr<void> Function(Exception, [Duration?])? onRetry,
  }) {
    return _options.retry(
      f,
      retryIf: isRetryable,
      onRetry: onRetry,
    );
  }
}
