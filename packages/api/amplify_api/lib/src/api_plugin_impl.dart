// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api/src/connectivity_plus_platform.dart';
import 'package:amplify_api_dart/amplify_api_dart.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_api.amplify_api}
/// The AWS implementation of the Amplify API category for Flutter.
/// {@endtemplate}
class AmplifyAPI extends AmplifyAPIDart with AWSDebuggable {
  /// {@macro amplify_api.amplify_api}
  AmplifyAPI({
    super.authProviders,
    super.baseHttpClient,
    super.modelProvider,
    super.subscriptionOptions,
  }) : super(
          connectivity: const ConnectivityPlusPlatform(),
        );

  @override
  Future<void> addPlugin({
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    await super.addPlugin(authProviderRepo: authProviderRepo);
  }

  @override
  String get runtimeTypeName => 'AmplifyAPI';
}
