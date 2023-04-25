// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint/src/flutter_endpoint_info_store_manager.dart';
// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_info_store_manager.dart';
import 'package:amplify_auth_cognito/src/credentials/legacy_credential_provider_impl.dart';
import 'package:amplify_auth_cognito/src/native_auth_plugin.g.dart';
import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/credentials/legacy_credential_provider.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_stub.dart'
    if (dart.library.html) 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_html.dart'
    if (dart.library.ui) 'flows/hosted_ui/hosted_ui_platform_flutter.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/model/hosted_ui/oauth_parameters.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/state/event/hosted_ui_event.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/state/machines/hosted_ui_state_machine.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';

/// {@template amplify_auth_cognito.amplify_auth_cognito}
/// The AWS Cognito implementation of the Amplify Auth category.
/// {@endtemplate}
class AmplifyAuthCognito extends AmplifyAuthCognitoDart with AWSDebuggable {
  /// {@macro amplify_auth_cognito.amplify_auth_cognito}
  ///
  /// To change the default behavior of credential storage,
  /// provide a [SecureStorageFactory] value. If no value is provided,
  /// storage will be configured with default [AmplifySecureStorageConfig] values.
  AmplifyAuthCognito({
    SecureStorageFactory? secureStorageFactory,
  }) : super(
          secureStorageFactory:
              secureStorageFactory ?? AmplifySecureStorage.factoryFrom(),
          hostedUiPlatformFactory: HostedUiPlatformImpl.new,
        );

  /// A plugin key which can be used with `Amplify.Auth.getPlugin` to retrieve
  /// a Cognito-specific Auth category interface.
  static const AuthPluginKey<AmplifyAuthCognito> pluginKey =
      _AmplifyAuthCognitoPluginKey();

  @override
  Future<void> addPlugin({
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    await super.addPlugin(authProviderRepo: authProviderRepo);

    if (zIsWeb || !(Platform.isAndroid || Platform.isIOS)) {
      return;
    }

    // Configure this plugin to act as a native iOS/Android plugin.
    final nativePlugin = _NativeAmplifyAuthCognito(stateMachine);
    NativeAuthPlugin.setup(nativePlugin);

    final nativeBridge = NativeAuthBridge();
    stateMachine.addInstance(nativeBridge);

    final legacyCredentialProvider = LegacyCredentialProviderImpl(stateMachine);
    stateMachine.addInstance<LegacyCredentialProvider>(
      legacyCredentialProvider,
    );
  }

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    // Dependencies for AnalyticsMetadataType
    stateMachine.addInstance<EndpointInfoStoreManager>(
      FlutterEndpointInfoStoreManager(),
    );

    await super.configure(
      config: config,
      authProviderRepo: authProviderRepo,
    );
  }

  @override
  Future<CognitoSignUpResult> signUp({
    required String username,
    required String password,
    SignUpOptions? options,
  }) async {
    options ??= const SignUpOptions();
    final pluginOptions = reifyPluginOptions(
      pluginOptions: options.pluginOptions,
      defaultPluginOptions: const CognitoSignUpPluginOptions(),
    );
    Map<String, String>? validationData;
    if (!zIsWeb && (Platform.isAndroid || Platform.isIOS)) {
      final nativeValidationData =
          await stateMachine.expect<NativeAuthBridge>().getValidationData();
      validationData = nativeValidationData.cast();
    }
    options = SignUpOptions(
      userAttributes: options.userAttributes,
      pluginOptions: CognitoSignUpPluginOptions(
        clientMetadata: pluginOptions.clientMetadata,
        validationData: {
          ...pluginOptions.validationData,
          ...?validationData,
        },
      ),
    );
    return super.signUp(
      username: username,
      password: password,
      options: options,
    );
  }

  @override
  String get runtimeTypeName => 'AmplifyAuthCognito';
}

class _NativeAmplifyAuthCognito
    with AWSDebuggable, AmplifyLoggerMixin
    implements NativeAuthPlugin {
  _NativeAmplifyAuthCognito(this._stateMachine);
  final CognitoAuthStateMachine _stateMachine;

  @override
  void exchange(Map<String?, String?> params) {
    final oauthParameters = OAuthParameters.fromJson(params.cast());
    final hostedUiStateMachine = _stateMachine.get(HostedUiStateMachine.type);
    if (hostedUiStateMachine != null) {
      unawaited(
        _stateMachine.acceptAndComplete(
          HostedUiEvent.exchange(oauthParameters),
        ),
      );
    } else {
      // Cache them as initial route parameters.
      _stateMachine.addInstance(oauthParameters);
    }
  }

  @override
  String get runtimeTypeName => '_NativeAmplifyAuthCognito';
}

class _AmplifyAuthCognitoPluginKey extends AuthPluginKey<AmplifyAuthCognito> {
  const _AmplifyAuthCognitoPluginKey();

  @override
  String get runtimeTypeName => 'AmplifyAuthCognito';
}
