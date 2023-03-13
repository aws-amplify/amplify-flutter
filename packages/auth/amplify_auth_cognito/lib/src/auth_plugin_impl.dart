// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:amplify_auth_cognito/src/credentials/legacy_credential_provider_impl.dart';
import 'package:amplify_auth_cognito/src/native_auth_plugin.g.dart';
import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_stub.dart'
    if (dart.library.html) 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_html.dart'
    if (dart.library.ui) 'flows/hosted_ui/hosted_ui_platform_flutter.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/state/machines/hosted_ui_state_machine.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:flutter/services.dart';

/// {@template amplify_auth_cognito.amplify_auth_cognito}
/// The AWS Cognito implementation of the Amplify Auth category.
/// {@endtemplate}
class AmplifyAuthCognito extends AmplifyAuthCognitoDart with AWSDebuggable {
  /// {@macro amplify_auth_cognito.amplify_auth_cognito}
  ///
  /// To change the default behavior of credential storage,
  /// provide a [credentialStorage] value. If no value is provided,
  /// [AmplifySecureStorage] will be used with a `scope` of "awsCognitoAuthPlugin".
  ///
  /// **NOTE**: Switching credential storage providers will likely result in
  /// end-users needing to re-authenticate since no migrations are performed in
  /// this case.
  AmplifyAuthCognito({
    SecureStorageInterface? credentialStorage,
  }) : super(
          credentialStorage: credentialStorage ??
              AmplifySecureStorage(
                config: AmplifySecureStorageConfig(
                  scope: 'awsCognitoAuthPlugin',
                ),
              ),
          hostedUiPlatformFactory: HostedUiPlatformImpl.new,
        );

  /// A plugin key which can be used with `Amplify.Auth.getPlugin` to retrieve
  /// a Cognito-specific Auth category interface.
  static const AuthPluginKey<
      CognitoAuthUser,
      CognitoUserAttributeKey,
      AuthUserAttribute<CognitoUserAttributeKey>,
      CognitoDevice,
      CognitoSignUpResult,
      CognitoSignUpResult,
      CognitoResendSignUpCodeResult,
      CognitoSignInResult,
      CognitoSignInResult,
      SignOutOptions,
      SignOutResult,
      CognitoUpdatePasswordOptions,
      UpdatePasswordResult,
      CognitoResetPasswordOptions,
      CognitoResetPasswordResult,
      CognitoConfirmResetPasswordOptions,
      CognitoResetPasswordResult,
      AuthUserOptions,
      FetchUserAttributesOptions,
      CognitoSessionOptions,
      CognitoAuthSession,
      CognitoSignInResult,
      CognitoUpdateUserAttributeOptions,
      UpdateUserAttributeResult,
      CognitoUpdateUserAttributesOptions,
      ConfirmUserAttributeOptions,
      ConfirmUserAttributeResult,
      CognitoResendUserAttributeConfirmationCodeOptions,
      ResendUserAttributeConfirmationCodeResult,
      AmplifyAuthCognito> pluginKey = _AmplifyAuthCognitoPluginKey();

  @override
  Future<void> addPlugin({
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    await super.addPlugin(authProviderRepo: authProviderRepo);

    if (zIsWeb || !(Platform.isAndroid || Platform.isIOS)) {
      return;
    }

    // Configure this plugin to act as a native iOS/Android plugin.
    final nativePlugin = _NativeAmplifyAuthCognito(this, stateMachine);
    NativeAuthPlugin.setup(nativePlugin);

    final nativeBridge = NativeAuthBridge();
    stateMachine.addInstance(nativeBridge);

    final legacyCredentialProvider = LegacyCredentialProviderImpl(stateMachine);
    stateMachine.addInstance<LegacyCredentialProvider>(
      legacyCredentialProvider,
    );
    try {
      await nativeBridge.addPlugin();
    } on PlatformException catch (e) {
      if (e.code.contains('AmplifyAlreadyConfiguredException') ||
          e.code.contains('AlreadyConfiguredException')) {
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
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    await super.configure(
      config: config,
      authProviderRepo: authProviderRepo,
    );

    // Update the native cache for the current user on hub events.
    final nativeBridge = stateMachine.get<NativeAuthBridge>();
    if (nativeBridge != null) {
      Future<void> updateCurrentUser(AuthUser? currentUser) async {
        NativeAuthUser? nativeUser;
        if (currentUser != null) {
          nativeUser = NativeAuthUser(
            userId: currentUser.userId,
            username: currentUser.username,
          );
        }
        await nativeBridge.updateCurrentUser(nativeUser);
      }

      try {
        final currentUser = await getCurrentUser();
        await updateCurrentUser(currentUser);
      } on Exception {
        await updateCurrentUser(null);
      }
      Amplify.Hub.listen(HubChannel.Auth, (AuthHubEvent event) {
        updateCurrentUser(event.payload);
      });
    }
  }

  @override
  Future<CognitoSignUpResult> signUp({
    required String username,
    required String password,
    SignUpOptions? options,
  }) async {
    options ??= const SignUpOptions();
    final pluginOptions = AmplifyAuthCognitoDart.validatePluginOptions(
      options.pluginOptions,
      defaultOptions: const CognitoSignUpPluginOptions(),
      requiredTypeName: 'CognitoSignUpPluginOptions',
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
  _NativeAmplifyAuthCognito(this._basePlugin, this._stateMachine);
  final AmplifyAuthCognito _basePlugin;
  final CognitoAuthStateMachine _stateMachine;

  @override
  Future<NativeAuthSession> fetchAuthSession() async {
    try {
      final authSession = await _basePlugin.fetchAuthSession();
      final nativeAuthSession = NativeAuthSession(
        isSignedIn: authSession.isSignedIn,
        userSub: authSession.userSubResult.valueOrNull,
        identityId: authSession.identityIdResult.valueOrNull,
      );
      final userPoolTokens = authSession.userPoolTokensResult.valueOrNull;
      if (userPoolTokens != null) {
        nativeAuthSession.userPoolTokens = NativeUserPoolTokens(
          accessToken: userPoolTokens.accessToken.raw,
          refreshToken: userPoolTokens.refreshToken,
          idToken: userPoolTokens.idToken.raw,
        );
      }
      final awsCredentials = authSession.credentialsResult.valueOrNull;
      if (awsCredentials != null) {
        nativeAuthSession.awsCredentials = NativeAWSCredentials(
          accessKeyId: awsCredentials.accessKeyId,
          secretAccessKey: awsCredentials.secretAccessKey,
          sessionToken: awsCredentials.sessionToken,
          expirationIso8601Utc:
              awsCredentials.expiration?.toUtc().toIso8601String(),
        );
      }
      return nativeAuthSession;
    } on Exception catch (e) {
      logger.error('Error fetching session for native plugin', e);
    }
    return NativeAuthSession(isSignedIn: false);
  }

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

class _AmplifyAuthCognitoPluginKey extends AuthPluginKey<
    CognitoAuthUser,
    CognitoUserAttributeKey,
    AuthUserAttribute<CognitoUserAttributeKey>,
    CognitoDevice,
    CognitoSignUpResult,
    CognitoSignUpResult,
    CognitoResendSignUpCodeResult,
    CognitoSignInResult,
    CognitoSignInResult,
    SignOutOptions,
    SignOutResult,
    CognitoUpdatePasswordOptions,
    UpdatePasswordResult,
    CognitoResetPasswordOptions,
    CognitoResetPasswordResult,
    CognitoConfirmResetPasswordOptions,
    CognitoResetPasswordResult,
    AuthUserOptions,
    FetchUserAttributesOptions,
    CognitoSessionOptions,
    CognitoAuthSession,
    CognitoSignInResult,
    CognitoUpdateUserAttributeOptions,
    UpdateUserAttributeResult,
    CognitoUpdateUserAttributesOptions,
    ConfirmUserAttributeOptions,
    ConfirmUserAttributeResult,
    CognitoResendUserAttributeConfirmationCodeOptions,
    ResendUserAttributeConfirmationCodeResult,
    AmplifyAuthCognito> {
  const _AmplifyAuthCognitoPluginKey();

  @override
  String get runtimeTypeName => 'AmplifyAuthCognito';
}
