// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
  }) {
    final completer = CancelableCompleter<R>();
    Future<void>(() async {
      var attempt = 0;
      while (true) {
        attempt++; // first invocation is the first attempt
        try {
          final operation = fn();
          final result = await operation.valueOrCancellation();
          if (result is! R || operation.isCanceled) {
            return completer.operation.cancel();
          }
          return completer.complete(result);
        } on Exception catch (e) {
          if (attempt >= _options.maxAttempts) {
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
