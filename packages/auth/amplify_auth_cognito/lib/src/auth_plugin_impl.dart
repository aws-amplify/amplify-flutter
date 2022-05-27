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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito/src/native_auth_plugin.dart';
import 'package:amplify_auth_cognito/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:meta/meta.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:stream_transform/stream_transform.dart';

/// {@template amplify_auth_cognito.amplify_auth_cognito}
/// The AWS Cognito implementation of the Amplify Auth category.
/// {@endtemplate}
class AmplifyAuthCognito extends AuthPluginInterface implements Closeable {
  /// {@macro amplify_auth_cognito.amplify_auth_cognito}
  AmplifyAuthCognito({
    SecureStorageInterface? credentialStorage,
  }) : _credentialStorage = credentialStorage;

  /// The on-device credential storage for the Auth category.
  ///
  /// Defaults to an instance of [AmplifySecureStorage] with a scope of "auth"
  /// and the package ID, retrieved via [PackageInfo].
  final SecureStorageInterface? _credentialStorage;

  CognitoAuthStateMachine _stateMachine = CognitoAuthStateMachine();

  @visibleForTesting
  set stateMachine(CognitoAuthStateMachine stateMachine) {
    if (!zDebugMode) throw StateError('Can only be called in tests');
    _stateMachine = stateMachine;
  }

  Future<void> _init() async {
    final credentialStorage = _credentialStorage ??
        AmplifySecureStorage(
          config: AmplifySecureStorageConfig(
            packageId: (await PackageInfo.fromPlatform()).packageName,
            scope: 'auth',
          ),
        );
    _stateMachine.addInstance<SecureStorageInterface>(credentialStorage);
  }

  @override
  Future<void> configure({AmplifyConfig? config}) async {
    if (config == null) {
      throw const AuthException('No Cognito plugin config detected');
    }
    if (_stateMachine.getOrCreate(AuthStateMachine.type).currentState.type !=
        AuthStateType.notConfigured) {
      throw const AmplifyAlreadyConfiguredException(
        'Amplify has already been configured and re-configuration is not supported.',
        recoverySuggestion:
            'Check if Amplify is already configured using Amplify.isConfigured.',
      );
    }

    // Configure this plugin to act as a native iOS/Android plugin.
    if (!zIsWeb && (Platform.isAndroid || Platform.isIOS)) {
      final nativePlugin = _NativeAmplifyAuthCognito(this);
      NativeAuthPlugin.setup(nativePlugin);

      final nativeBridge = NativeAuthBridge();
      await nativeBridge.configure();
    }

    await _init();
    _stateMachine.dispatch(AuthEvent.configure(config));

    await for (final state in _stateMachine.stream.whereType<AuthState>()) {
      switch (state.type) {
        case AuthStateType.notConfigured:
        case AuthStateType.configuring:
          continue;
        case AuthStateType.configured:
          return;
        case AuthStateType.failure:
          throw (state as AuthFailure).exception;
      }
    }
  }

  @override
  Future<AuthSession> fetchAuthSession({
    required AuthSessionRequest request,
  }) async {
    final options = request.options as CognitoSessionOptions?;
    _stateMachine.dispatch(FetchAuthSessionEvent.fetch(options));

    await for (final state
        in _stateMachine.stream.whereType<FetchAuthSessionState>()) {
      switch (state.type) {
        case FetchAuthSessionStateType.idle:
        case FetchAuthSessionStateType.fetching:
        case FetchAuthSessionStateType.refreshing:
          continue;
        case FetchAuthSessionStateType.success:
          state as FetchAuthSessionSuccess;
          return state.session;
        case FetchAuthSessionStateType.failure:
          state as FetchAuthSessionFailure;
          throw state.exception;
      }
    }

    // This should never happen.
    throw const UnknownException('fetchAuthSession could not be completed');
  }

  /* -- TODO: Replace -- */

  @override
  StreamController<AuthHubEvent> get streamController =>
      StreamController.broadcast();

  @override
  Future<void> close() async {}

  /* ------------------- */
}

class _NativeAmplifyAuthCognito implements NativeAuthPlugin {
  _NativeAmplifyAuthCognito(this._basePlugin);

  final AmplifyAuthCognito _basePlugin;

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
      // TODO(dnys1): Log
      safePrint('Error fetching session for native plugin: $e');
    }
    return NativeAuthSession(isSignedIn: false);
  }
}
