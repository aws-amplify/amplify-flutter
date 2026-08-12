// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

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
    if (dart.library.js_interop) 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_html.dart'
    if (dart.library.ui) 'flows/hosted_ui/hosted_ui_platform_flutter.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/model/hosted_ui/oauth_parameters.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
// ignore: implementation_imports, invalid_use_of_internal_member
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_flutter/src/amplify_isolate.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:flutter/foundation.dart';

/// {@template amplify_auth_cognito.amplify_auth_cognito}
/// The AWS Cognito implementation of the Amplify Auth category.
/// {@endtemplate}
class AmplifyAuthCognito extends AmplifyAuthCognitoDart with AWSDebuggable {
  /// {@macro amplify_auth_cognito.amplify_auth_cognito}
  ///
  /// To change the default behavior of credential storage,
  /// provide a [SecureStorageFactory] value. If no value is provided,
  /// storage will be configured with default [AmplifySecureStorageConfig] values.
  AmplifyAuthCognito({SecureStorageFactory? secureStorageFactory})
    : super(
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

    if (zIsWeb || !_isMobile) {
      return;
    }

    // Everything below reaches the process-wide native Cognito SDK, starting
    // with `NativeAuthPlugin.setUp`, which registers a handler on this isolate's
    // binary messenger.
    //
    // Gated on messenger availability rather than on root-isolate identity: a
    // headless `FlutterEngine` always has a working messenger, so this can never
    // fire there. That matters because `amplifyBackgroundProcessing` adds this
    // very plugin from such an engine, and breaking it would break recording
    // push notifications while the app is killed.
    //
    // KNOWN GAP: this does not catch a secondary isolate that has already been
    // bootstrapped with `BackgroundIsolateBinaryMessenger.ensureInitialized`.
    // That isolate has a messenger and passes this check, but it still cannot
    // work: `NativeAuthPlugin.setUp` below fails with `UnsupportedError:
    // Background isolates do not support setMessageHandler(). Messages from the
    // host platform always go to the root isolate.` Host-to-Dart callbacks are
    // impossible in any secondary isolate, so that case is broken by Flutter
    // rather than by Amplify. Reporting it clearly needs root-isolate identity,
    // which is only safe to rely on once a headless engine's token has been
    // verified on a device. See #5302.
    // ignore: invalid_use_of_internal_member
    if (!amplifyIsolateIsInitialized) {
      throw PluginError(
        'AmplifyAuthCognito cannot be added from a secondary isolate with no '
        'platform channel access. The native Cognito SDK is a single instance '
        'per process and belongs to the root isolate.',
        recoverySuggestion:
            'Add AmplifyAuthCognito and call Amplify.configure on the root '
            'isolate, and use the Auth category from there. Auth flows which '
            'run entirely in Dart are available from AmplifyAuthCognitoDart, '
            'which can be configured in a secondary isolate.',
      );
    }

    // Configure this plugin to act as a native iOS/Android plugin.
    final nativePlugin = _NativeAmplifyAuthCognito(stateMachine);
    NativeAuthPlugin.setUp(nativePlugin);

    final nativeBridge = NativeAuthBridge();
    stateMachine
      ..addInstance(nativeBridge)
      ..addInstance<ASFDeviceInfoCollector>(
        _NativeASFDeviceInfoCollector(nativeBridge),
      );

    final legacyCredentialProvider = LegacyCredentialProviderImpl(stateMachine);
    stateMachine.addInstance<LegacyCredentialProvider>(
      legacyCredentialProvider,
    );
  }

  @override
  Future<void> configure({
    AmplifyOutputs? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    // Dependencies for AnalyticsMetadataType
    stateMachine.addInstance<EndpointInfoStoreManager>(
      FlutterEndpointInfoStoreManager(),
    );

    await super.configure(config: config, authProviderRepo: authProviderRepo);
  }

  @override
  Future<CognitoSignUpResult> signUp({
    required String username,
    String? password,
    SignUpOptions? options,
  }) async {
    options ??= const SignUpOptions();
    final pluginOptions = reifyPluginOptions(
      pluginOptions: options.pluginOptions,
      defaultPluginOptions: const CognitoSignUpPluginOptions(),
    );
    Map<String, String>? validationData;
    if (!zIsWeb && _isMobile) {
      final nativeValidationData = await stateMachine
          .expect<NativeAuthBridge>()
          .getValidationData();
      validationData = nativeValidationData.cast();
    }
    options = SignUpOptions(
      userAttributes: options.userAttributes,
      pluginOptions: CognitoSignUpPluginOptions(
        clientMetadata: pluginOptions.clientMetadata,
        validationData: {...pluginOptions.validationData, ...?validationData},
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

final class _NativeASFDeviceInfoCollector extends ASFDeviceInfoCollector {
  _NativeASFDeviceInfoCollector(this.bridge) : super.base();

  final NativeAuthBridge bridge;

  @override
  Future<ASFContextData> getNativeContextData() async {
    final contextData = await bridge.getContextData();
    return ASFContextData(
      deviceName: contextData.deviceName,
      thirdPartyDeviceId: contextData.thirdPartyDeviceId,
      deviceFingerprint: contextData.deviceFingerprint,
      clientTimezone: clientTimezone,
      applicationName: contextData.applicationName,
      applicationVersion: contextData.applicationVersion,
      deviceLanguage: contextData.deviceLanguage,
      deviceOsReleaseVersion: contextData.deviceOsReleaseVersion,
      screenHeightPixels: contextData.screenHeightPixels,
      screenWidthPixels: contextData.screenWidthPixels,
    );
  }
}

class _AmplifyAuthCognitoPluginKey extends AuthPluginKey<AmplifyAuthCognito> {
  const _AmplifyAuthCognitoPluginKey();

  @override
  String get runtimeTypeName => 'AmplifyAuthCognito';
}

// WASM-safe iOS/Android check
bool get _isMobile =>
    defaultTargetPlatform == TargetPlatform.android ||
    defaultTargetPlatform == TargetPlatform.iOS;
