/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:retry/retry.dart';

/// Configuration options for GraphQL Subscriptions and their WebSockets.
class GraphQLSubscriptionOptions {
  const GraphQLSubscriptionOptions(
      {Duration? pollInterval, RetryOptions? retryOptions})
      : _pollInterval = pollInterval,
        _retryOptions = retryOptions;

  final Duration? _pollInterval;

  final RetryOptions? _retryOptions;

  final _defaultPollInterval = const Duration(seconds: 30);

  final _defaultRetryOptions = const RetryOptions();

  /// Configure the poll interval for AppSync polling for subscription connections.
  Duration get pollInterval => _pollInterval ?? _defaultPollInterval;

  /// Configure the exponential retry strategy options
  /// see: https://pub.dev/documentation/retry/latest/retry/RetryOptions-class.html
  RetryOptions get retryOptions => _retryOptions ?? _defaultRetryOptions;
}
