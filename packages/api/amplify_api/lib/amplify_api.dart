/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

library amplify_api_plugin;

import 'package:amplify_api/src/api_plugin_impl.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

export 'package:amplify_api/src/graphql/model_mutations.dart';
export 'package:amplify_api/src/graphql/model_queries.dart';
export 'package:amplify_api/src/graphql/model_subscriptions.dart';
export 'package:amplify_core/src/types/api/api_types.dart';

/// {@template amplify_api.amplify_api}
/// The AWS implementation of the Amplify API category.
/// {@endtemplate}
abstract class AmplifyAPI extends APIPluginInterface {
  /// {@macro amplify_api.amplify_api}
  factory AmplifyAPI({
    List<APIAuthProvider> authProviders = const [],
    AWSHttpClient? baseHttpClient,
    ModelProviderInterface? modelProvider,
    GraphQLSubscriptionOptions? subscriptionOptions,
  }) =>
      AmplifyAPIDart(
        authProviders: authProviders,
        modelProvider: modelProvider,
        subscriptionOptions: subscriptionOptions,
      );

  /// Protected constructor for subclasses.
  @protected
  AmplifyAPI.protected();
}
