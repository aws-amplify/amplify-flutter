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

import 'dart:io';

import 'package:amplify_api/src/api_plugin_impl.dart';
import 'package:amplify_api/src/native_api_plugin.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';

/// {@template amplify_api.amplify_api}
/// The AWS implementation of the Amplify API category for Flutter.
/// {@endtemplate}
class AmplifyAPI extends AmplifyAPIDart with AWSDebuggable {
  /// {@macro amplify_api.amplify_api}
  AmplifyAPI({
    List<APIAuthProvider> authProviders = const [],
    super.baseHttpClient,
    super.modelProvider,
    super.subscriptionOptions,
  }) : super(
          authProviders: authProviders,
          networkStreamGenerator: () => Connectivity()
              .onConnectivityChanged
              .map((ConnectivityResult connectivityResult) {
            switch (connectivityResult) {
              case ConnectivityResult.none:
                return false;
              default:
                return true;
            }
          }),
        ) {
    authProviders.forEach(registerAuthProvider);
  }

  /// The registered [APIAuthProvider] instances.
  final Map<APIAuthorizationType, APIAuthProvider> _authProviders = {};

  @override
  Future<void> addPlugin({
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    await super.addPlugin(authProviderRepo: authProviderRepo);

    if (zIsWeb || !(Platform.isAndroid || Platform.isIOS)) {
      return;
    }

    // Configure this plugin to act as a native iOS/Android plugin.
    final nativePlugin = _NativeAmplifyApi(_authProviders);
    NativeApiPlugin.setup(nativePlugin);

    final nativeBridge = NativeApiBridge();
    try {
      final authProvidersList =
          _authProviders.keys.map((key) => key.rawValue).toList();
      await nativeBridge.addPlugin(authProvidersList);
    } on PlatformException catch (e) {
      if (e.code == 'AmplifyAlreadyConfiguredException' ||
          e.code == 'AlreadyConfiguredException') {
        throw const AmplifyAlreadyConfiguredException(
          AmplifyExceptionMessages.alreadyConfiguredDefaultMessage,
          recoverySuggestion:
              AmplifyExceptionMessages.alreadyConfiguredDefaultSuggestion,
        );
      }
      throw AmplifyException.fromMap((e.details as Map).cast());
    }
  }

  @override
  String get runtimeTypeName => 'AmplifyAPI';

  @override
  void registerAuthProvider(APIAuthProvider authProvider) {
    _authProviders[authProvider.type] = authProvider;
  }
}

class _NativeAmplifyApi
    with AWSDebuggable, AmplifyLoggerMixin
    implements NativeApiPlugin {
  _NativeAmplifyApi(this._authProviders);

  /// The registered [APIAuthProvider] instances.
  final Map<APIAuthorizationType, APIAuthProvider> _authProviders;

  @override
  Future<String?> getLatestAuthToken(String providerName) {
    final provider = APIAuthorizationTypeX.from(providerName);
    if (provider == null) {
      throw PlatformException(code: 'BAD_ARGUMENTS');
    }
    final authProvider = _authProviders[provider];
    if (authProvider == null) {
      throw PlatformException(
        code: 'NO_PROVIDER',
        message: 'No provider found for $authProvider',
      );
    }
    return authProvider.getLatestAuthToken();
  }

  @override
  String get runtimeTypeName => '_NativeAmplifyApi';
}
