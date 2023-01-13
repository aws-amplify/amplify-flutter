// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:amplify_api/src/connectivity_plus_platform.dart';
import 'package:amplify_api/src/native_api_plugin.dart';
import 'package:amplify_api_dart/amplify_api_dart.dart';
import 'package:amplify_core/amplify_core.dart';
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
          connectivity: const ConnectivityPlusPlatform(),
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
      throw ConfigurationError(
        e.message ?? 'An unknown error occurred',
        underlyingException: e,
      );
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
