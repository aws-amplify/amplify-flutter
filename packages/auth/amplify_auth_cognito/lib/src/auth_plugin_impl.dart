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

import 'dart:async';
import 'dart:io';

import 'package:amplify_auth_cognito/src/credentials/legacy_cognito_keys.dart';
import 'package:amplify_auth_cognito/src/credentials/legacy_credential_store_data_extension.dart';
import 'package:amplify_auth_cognito/src/credentials/legacy_secure_storage_factory.dart';
import 'package:amplify_auth_cognito/src/credentials/secure_storage_extension.dart';
import 'package:amplify_auth_cognito/src/native_auth_plugin.dart';
import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_stub.dart'
    if (dart.library.html) 'flows/hosted_ui/hosted_ui_platform_html.dart'
    if (dart.library.ui) 'flows/hosted_ui/hosted_ui_platform_flutter.dart';
import 'package:amplify_auth_cognito_dart/src/state/machines/hosted_ui_state_machine.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:async/async.dart';
import 'package:flutter/services.dart';

/// {@template amplify_auth_cognito.amplify_auth_cognito}
/// The AWS Cognito implementation of the Amplify Auth category.
/// {@endtemplate}
class AmplifyAuthCognito extends AmplifyAuthCognitoDart with AWSDebuggable {
  /// {@macro amplify_auth_cognito.amplify_auth_cognito}
  ///
  /// To change the default behavior of credential storage,
  /// provide a [credentialStorage] value. If no value is provided,
  /// [AmplifySecureStorage] will be used with a `scope` of "auth".
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
                  scope: 'auth',
                ),
              ),
          hostedUiPlatformFactory: HostedUiPlatformImpl.new,
        );

  @override
  Future<void> addPlugin() async {
    if (zIsWeb || !(Platform.isAndroid || Platform.isIOS)) {
      return;
    }

    // Configure this plugin to act as a native iOS/Android plugin.
    final nativePlugin = _NativeAmplifyAuthCognito(this, stateMachine);
    NativeAuthPlugin.setup(nativePlugin);

    final nativeBridge = NativeAuthBridge();
    stateMachine.addInstance(nativeBridge);
    try {
      await nativeBridge.addPlugin();
    } on PlatformException catch (e) {
      if (e.code == 'AmplifyAlreadyConfiguredException' ||
          e.code == 'AlreadyConfiguredException') {
        throw const AmplifyAlreadyConfiguredException(
          AmplifyExceptionMessages.alreadyConfiguredDefaultMessage,
          recoverySuggestion:
              AmplifyExceptionMessages.alreadyConfiguredDefaultSuggestion,
        );
      }
      throw AmplifyException(
        e.message ?? 'An unknown error occurred',
        underlyingException: e.toString(),
      );
    }
  }

  @override
  Future<SignUpResult> signUp({required SignUpRequest request}) async {
    Map<String, String>? validationData;
    if (!zIsWeb && (Platform.isAndroid || Platform.isIOS)) {
      final nativeValidationData =
          await stateMachine.expect<NativeAuthBridge>().getValidationData();
      validationData = nativeValidationData.cast();
    }
    var options =
        request.options as CognitoSignUpOptions? ?? CognitoSignUpOptions();
    options = options.copyWith(
      validationData: {
        ...?validationData,
        ...?options.validationData,
      },
    );
    request = SignUpRequest(
      username: request.username,
      password: request.password,
      options: options,
    );
    return super.signUp(request: request);
  }

  @override
  String get runtimeTypeName => 'AmplifyAuthCognito';
}

class _NativeAmplifyAuthCognito
    with LegacySecureStorageProvider, AWSDebuggable, AmplifyLoggerMixin
    implements NativeAuthPlugin, LegacyCredentialProvider {
  _NativeAmplifyAuthCognito(this._basePlugin, this._stateMachine) {
    _stateMachine.addInstance<LegacyCredentialProvider>(this);
  }

  final AmplifyAuthCognito _basePlugin;
  final CognitoAuthStateMachine _stateMachine;

  final _bundleIdMemoizer = AsyncMemoizer<String>();

  @override
  Future<NativeAuthSession> fetchAuthSession(
    bool getAwsCredentials,
  ) async {
    try {
      final authSession = await _basePlugin.fetchAuthSession(
        request: AuthSessionRequest(
          options: CognitoSessionOptions(getAWSCredentials: getAwsCredentials),
        ),
      ) as CognitoAuthSession;
      final nativeAuthSession = NativeAuthSession(
        isSignedIn: authSession.isSignedIn,
        userSub: authSession.userSub,
        identityId: authSession.identityId,
      );
      final userPoolTokens = authSession.userPoolTokens;
      if (userPoolTokens != null) {
        nativeAuthSession.userPoolTokens = NativeUserPoolTokens(
          accessToken: userPoolTokens.accessToken.raw,
          refreshToken: userPoolTokens.refreshToken,
          idToken: userPoolTokens.idToken.raw,
        );
      }
      final awsCredentials = authSession.credentials;
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
      _stateMachine.dispatch(HostedUiEvent.exchange(oauthParameters));
    } else {
      // Cache them as initial route parameters.
      _stateMachine.addInstance(oauthParameters);
    }
  }

  FutureOr<String> _getBundleId() {
    return _bundleIdMemoizer.runOnce(() {
      final bridge = _stateMachine.expect<NativeAuthBridge>();
      return bridge.getBundleId();
    });
  }

  @override
  Future<CredentialStoreData?> fetchLegacyCredentials({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityCredentialsProvider? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
  }) async {
    if (zIsWeb || !(Platform.isIOS || Platform.isAndroid)) return null;
    if (Platform.isAndroid) {
      final bridge = _stateMachine.expect<NativeAuthBridge>();
      final userPoolConfig = _stateMachine.expect<CognitoUserPoolConfig>();
      final legacyCredentials = await bridge.getLegacyCredentials(
        userPoolConfig.poolId,
        userPoolConfig.appClientId,
      );
      return legacyCredentials?.toCredentialStoreData();
    }
    final bundleId = await _getBundleId();
    CognitoUserPoolTokens? userPoolTokens;
    if (userPoolConfig != null) {
      final userPoolStorage = getUserPoolStorage(bundleId);
      final cognitoUserKeys = LegacyCognitoUserKeys(userPoolConfig);
      final currentUserId = await userPoolStorage.read(
        key: cognitoUserKeys[LegacyCognitoKey.currentUser],
      );
      if (currentUserId != null) {
        final userPoolKeys = LegacyCognitoUserPoolKeys(
          currentUserId,
          userPoolConfig,
        );
        final accessToken = await userPoolStorage.read(
          key: userPoolKeys[LegacyCognitoUserPoolKey.accessToken],
        );
        final refreshToken = await userPoolStorage.read(
          key: userPoolKeys[LegacyCognitoUserPoolKey.refreshToken],
        );
        final idToken = await userPoolStorage.read(
          key: userPoolKeys[LegacyCognitoUserPoolKey.idToken],
        );
        if (accessToken != null && refreshToken != null && idToken != null) {
          // TODO(Jordan-Nelson): fetch sign in method from keychain on iOS
          final signInMethod = hostedUiConfig != null
              ? CognitoSignInMethod.hostedUi
              : CognitoSignInMethod.default$;
          userPoolTokens = CognitoUserPoolTokens(
            signInMethod: signInMethod,
            accessToken: JsonWebToken.parse(accessToken),
            refreshToken: refreshToken,
            idToken: JsonWebToken.parse(idToken),
          );
        }
      }
    }

    String? identityId;
    AWSCredentials? awsCredentials;
    final identityPoolId = identityPoolConfig?.poolId;
    if (identityPoolId != null) {
      final identityPoolStorage = getIdentityPoolStorage(
        bundleId,
        identityPoolId,
      );
      const identityPoolKeys = LegacyCognitoIdentityPoolKeys();
      identityId = await identityPoolStorage.read(
        key: identityPoolKeys[LegacyCognitoIdentityPoolKey.identityId],
      );
      final accessKeyId = await identityPoolStorage.read(
        key: identityPoolKeys[LegacyCognitoIdentityPoolKey.accessKey],
      );
      final secretAccessKey = await identityPoolStorage.read(
        key: identityPoolKeys[LegacyCognitoIdentityPoolKey.secretKey],
      );
      final sessionToken = await identityPoolStorage.read(
        key: identityPoolKeys[LegacyCognitoIdentityPoolKey.sessionKey],
      );
      final expirationStr = await identityPoolStorage.read(
        key: identityPoolKeys[LegacyCognitoIdentityPoolKey.expiration],
      );
      if (accessKeyId != null && secretAccessKey != null) {
        DateTime? expiration;
        if (expirationStr != null) {
          final secondsSinceEpoch = double.tryParse(expirationStr)?.toInt();
          if (secondsSinceEpoch != null) {
            expiration = DateTime.fromMillisecondsSinceEpoch(
              secondsSinceEpoch * 1000,
              isUtc: true,
            );
          }
        }
        awsCredentials = AWSCredentials(
          accessKeyId,
          secretAccessKey,
          sessionToken,
          expiration,
        );
      }
    }

    if ((userPoolTokens ?? awsCredentials ?? identityId) != null) {
      return CredentialStoreData(
        userPoolTokens: userPoolTokens,
        awsCredentials: awsCredentials,
        identityId: identityId,
      );
    }
    return null;
  }

  @override
  Future<void> deleteLegacyCredentials({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityCredentialsProvider? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
  }) async {
    if (zIsWeb || !(Platform.isIOS || Platform.isAndroid)) return;
    if (Platform.isAndroid) {
      final bridge = _stateMachine.expect<NativeAuthBridge>();
      final userPoolConfig = _stateMachine.expect<CognitoUserPoolConfig>();
      return bridge.clearLegacyCredentials(userPoolConfig.appClientId);
    }
    final bundleId = await _getBundleId();
    if (userPoolConfig != null) {
      final userPoolStorage = getUserPoolStorage(
        bundleId,
      );
      final cognitoUserKeys = LegacyCognitoUserKeys(userPoolConfig);
      final currentUser = await userPoolStorage.read(
        key: cognitoUserKeys[LegacyCognitoKey.currentUser],
      );
      if (currentUser != null) {
        final userPoolKeys = LegacyCognitoUserPoolKeys(
          currentUser,
          userPoolConfig,
        );
        await userPoolStorage.deleteMany([
          userPoolKeys[LegacyCognitoUserPoolKey.accessToken],
          userPoolKeys[LegacyCognitoUserPoolKey.refreshToken],
          userPoolKeys[LegacyCognitoUserPoolKey.idToken],
          cognitoUserKeys[LegacyCognitoKey.currentUser],
        ]);
      }
    }

    final identityPoolId = identityPoolConfig?.poolId;
    if (identityPoolId != null) {
      final identityPoolStorage = getIdentityPoolStorage(
        bundleId,
        identityPoolId,
      );
      const identityPoolKeys = LegacyCognitoIdentityPoolKeys();
      await identityPoolStorage.deleteMany([
        identityPoolKeys[LegacyCognitoIdentityPoolKey.identityId],
        identityPoolKeys[LegacyCognitoIdentityPoolKey.accessKey],
        identityPoolKeys[LegacyCognitoIdentityPoolKey.secretKey],
        identityPoolKeys[LegacyCognitoIdentityPoolKey.sessionKey],
        identityPoolKeys[LegacyCognitoIdentityPoolKey.expiration],
      ]);
    }
  }

  @override
  String get runtimeTypeName => '_NativeAmplifyAuthCognito';
}
