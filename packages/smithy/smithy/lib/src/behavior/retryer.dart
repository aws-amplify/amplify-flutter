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
