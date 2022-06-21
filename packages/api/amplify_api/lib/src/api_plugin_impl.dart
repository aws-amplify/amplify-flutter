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

library amplify_api;

import 'dart:io';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/native_api_plugin.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/services.dart';

/// {@template amplify_api.amplify_api_dart}
/// The AWS implementation of the Amplify API category.
/// {@endtemplate}
class AmplifyAPIDart extends AmplifyAPI {
  late final AWSApiPluginConfig _apiConfig;

  /// The registered [APIAuthProvider] instances.
  final Map<APIAuthorizationType, APIAuthProvider> _authProviders = {};

  /// {@macro amplify_api.amplify_api_dart}
  AmplifyAPIDart({
    List<APIAuthProvider> authProviders = const [],
    this.modelProvider,
  }) : super.protected() {
    authProviders.forEach(registerAuthProvider);
  }

  @override
  Future<void> configure({AmplifyConfig? config}) async {
    final apiConfig = config?.api?.awsPlugin;
    if (apiConfig == null) {
      throw const ApiException('No AWS API config found',
          recoverySuggestion: 'Add API from the Amplify CLI. See '
              'https://docs.amplify.aws/lib/graphqlapi/getting-started/q/platform/flutter/#configure-api');
    }
    _apiConfig = apiConfig;
  }

  @override
  Future<void> addPlugin() async {
    if (zIsWeb || !(Platform.isAndroid || Platform.isIOS)) {
      return;
    }

    final nativeBridge = NativeApiBridge();
    try {
      final authProvidersList =
          _authProviders.keys.map((key) => key.rawValue).toList();
      await nativeBridge.addPlugin(authProvidersList);
    } on PlatformException catch (e) {
      if (e.code == 'AmplifyAlreadyConfiguredException') {
        throw const AmplifyAlreadyConfiguredException(
            AmplifyExceptionMessages.alreadyConfiguredDefaultMessage,
            recoverySuggestion:
                AmplifyExceptionMessages.alreadyConfiguredDefaultSuggestion);
      }
      throw AmplifyException.fromMap((e.details as Map).cast());
    }
  }

  @override
  final ModelProviderInterface? modelProvider;

  @override
  void registerAuthProvider(APIAuthProvider authProvider) {
    _authProviders[authProvider.type] = authProvider;
  }
}
