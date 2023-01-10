// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:math';

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

/// The retry attempt for the current request.
@internal
const zRetryAttempt = #awsSdkRetryAttempt;

/// The maximum number of attempts for the current request.
@internal
const zMaxAttempts = #awsSdkMaxAttempts;

class AWSRetryer implements Retryer {
  AWSRetryer({
    this.initialRetryTokens = _initialRetryTokens,
    double? exponentialBase,
    this.exponentialPower = 2,
    this.maxBackoffTime = const Duration(seconds: 20),
  }) : exponentialBase = exponentialBase ?? _random.nextDouble();

  /// The starting amount of tokens for the retry quota.
  final int initialRetryTokens;

  /// The value of `r` in the equation `br^i`.
  final double exponentialBase;

  /// The base `b` in the equation `br^i`.
  final double exponentialPower;

  /// The `MAX_BACKOFF` value allowed for retry delays.
  final Duration maxBackoffTime;

  static final _random = Random();
  late final _maxAttempts = AWSConfigValue.maxAttempts.value;

  static const _throttlingErrors = {
    'Throttling',
    'ThrottlingException',
    'ThrottledException',
    'RequestThrottledException',
    'TooManyRequestsException',
    'ProvisionedThroughputExceededException',
    'TransactionInProgressException',
    'RequestLimitExceeded',
    'BandwidthLimitExceeded',
    'LimitExceededException',
    'RequestThrottled',
    'SlowDown',
    'PriorRequestNotComplete',
    'EC2ThrottledException',
  };
  static const _transientErrors = {
    'RequestTimeout',
    'InternalError',
    'RequestTimeoutException',
  };
  static const _initialRetryTokens = 500;
  static const _maxCapacity = _initialRetryTokens;
  static const _retryCost = 5;
  static const _noRetryIncrement = 1;
  static const _timeoutRetryCost = 10;

  late int _retryQuota = initialRetryTokens;

  @visibleForTesting
  int get retryQuota => _retryQuota;

  /// The cost of [e], to be subtracted from [retryQuota].
  int _cost(Exception e) =>
      e is TimeoutException ? _timeoutRetryCost : _retryCost;

  /// Retrieves a token for the given exception [e], to be returned via
  /// [_returnRetryToken].
  int? _retrieveRetryToken(Exception e) {
    final cost = _cost(e);
    if (retryQuota < cost) {
      return null;
    }
    _retryQuota -= cost;
    return cost;
  }

  /// Returns a retry token to the [retryQuota].
  void _returnRetryToken(int token) {
    _retryQuota = min(
      _maxCapacity,
      _retryQuota + token,
    );
  }

  @override
  bool isRetryable(Exception exception) {
    if (exception is TimeoutException) {
      return true;
    }
    if (exception is! SmithyException) {
      return false;
    }
    if (exception is SmithyHttpException) {
      if (exception.headers?.containsKey(AWSHeaders.retryAfter) ?? false) {
        return true;
      }
    }
    final retryConfig = exception.retryConfig;
    final shape = exception.shapeId?.shape;
    final bool isRetryable = retryConfig != null ||
        _transientErrors.contains(shape) ||
        _throttlingErrors.contains(shape);
    if (!isRetryable) {
      return false;
    }

    // Check retry quota
    final cost = _cost(exception);
    return retryQuota >= cost;
  }

  /// Determines the delay for [e] by first looking for embedded retry
  /// information.
  Duration _delayFor(Exception e, int attempt) {
    final exponentialBackoff = _exponentialBackoff(attempt);
    if (e is SmithyHttpException) {
      // Retry after represents the minimum delay to wait before retrying.
      final retryAfter = e.headers?[AWSHeaders.retryAfter];
      if (retryAfter != null) {
        final retryAfterMilliseconds = num.tryParse(retryAfter);
        if (retryAfterMilliseconds != null) {
          return Duration(
            milliseconds: max(
              retryAfterMilliseconds.toInt(),
              exponentialBackoff.inMilliseconds,
            ),
          );
        }
      }
    }
    return exponentialBackoff;
  }

  /// Calculates the exponential backoff delay for the given [attempt].
  Duration _exponentialBackoff(int attempt) => Duration(
        seconds: min(
          exponentialBase * pow(exponentialPower, attempt),
          maxBackoffTime.inSeconds,
        ).toInt(),
      );

  @override
  CancelableOperation<R> retry<R>(
    CancelableOperation<R> Function() f, {
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
      var attempts = 0;
      int? retryToken;
      while (true) {
        if (completer.isCanceled) {
          return;
        }
        try {
          final result = await runZoned(
            () {
              currentOperation = f();
              return currentOperation!.valueOrCancellation();
            },
            zoneValues: {
              zRetryAttempt: attempts,
              zMaxAttempts: _maxAttempts,
            },
          );
          if (result is! R || currentOperation!.isCanceled) {
            return;
          }
          if (retryToken == null) {
            _returnRetryToken(_noRetryIncrement);
          } else {
            _returnRetryToken(retryToken);
          }
          return completer.complete(result);
        } on Exception catch (e) {
          if (!isRetryable(e)) {
            rethrow;
          }
          retryToken = _retrieveRetryToken(e);
          if (retryToken == null) {
            rethrow;
          }
          final delay = _delayFor(e, attempts);
          if (++attempts >= _maxAttempts) {
            rethrow;
          }
          await onRetry?.call(e, delay);
          await Future<void>.delayed(delay);
        }
      }
    }).catchError(completer.completeError);
    return completer.operation;
  }
}
