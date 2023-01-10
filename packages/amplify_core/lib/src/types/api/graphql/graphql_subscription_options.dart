// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:retry/retry.dart';

/// {@template amplify_core.graphql.graphql_subscription_options}
/// Configuration options for GraphQL subscriptions and their WebSockets.
/// {@endtemplate}
class GraphQLSubscriptionOptions {
  /// {@macro amplify_core.graphql.graphql_subscription_options}
  const GraphQLSubscriptionOptions({
    this.pollInterval = const Duration(seconds: 30),
    this.retryOptions = const RetryOptions(),
  });

  /// The interval for polling AppSync to monitor connection health.
  final Duration pollInterval;

  /// The strategy for retrying when there is a connection failure.
  final RetryOptions retryOptions;
}
