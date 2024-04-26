// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_api_dart.api_plugin_options}
/// The plugin options for the Amplify API plugin.
/// {@endtemplate}
class APIPluginOptions {
  /// {@macro amplify_api_dart.api_plugin_options}
  const APIPluginOptions({
    this.authProviders = const [],
    this.baseHttpClient,
    this.modelProvider,
    this.subscriptionOptions = const GraphQLSubscriptionOptions(),
  });

  /// List of API Auth providers to be used for API category operations.
  final List<APIAuthProvider> authProviders;

  /// The HTTP client to be used for API category operations.
  final AWSHttpClient? baseHttpClient;

  /// The model provider for providing access to the data models
  final ModelProviderInterface? modelProvider;

  /// {@macro amplify_core.graphql.graphql_subscription_options}
  final GraphQLSubscriptionOptions subscriptionOptions;
}
