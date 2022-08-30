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

/// Confiuration options for GraphQL Subscriptions and their websockets.
class GraphQLSubscriptionOptions {
  /// Configure the ping interval for AppSync polling for subscription connections.
  final Duration? pingInterval;

  /// Configure the timeout period when trying to reconnect a web socket.
  final Duration? retryTimeout;

  /// Configure the exponential retry strategy options
  final RetryOptions? retryOptions;

  const GraphQLSubscriptionOptions(
      {this.pingInterval, this.retryTimeout, this.retryOptions});
}
