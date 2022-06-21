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

// ignore_for_file: implementation_imports

import 'dart:async';
import 'dart:io';

import 'package:amplify_auth_cognito/src/native_auth_plugin.dart';
import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_stub.dart'
    if (dart.library.html) 'flows/hosted_ui/hosted_ui_platform_html.dart'
    if (dart.library.ui) 'flows/hosted_ui/hosted_ui_platform_flutter.dart';
import 'package:amplify_auth_cognito_dart/src/state/machines/hosted_ui_state_machine.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:flutter/services.dart';

/// {@template amplify_auth_cognito.amplify_auth_cognito}
/// The AWS Cognito implementation of the Amplify Auth category.
/// {@endtemplate}
class AmplifyAuthCognito extends AmplifyAuthCognitoDart {
  /// {@macro amplify_auth_cognito.amplify_auth_cognito}
  AmplifyAuthCognito({
    SecureStorageInterface? credentialStorage,
  })
      : super(
          credentialStorage: credentialStorage ?? AmplifySecureStorage(
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
}

class _NativeAmplifyAuthCognito implements NativeAuthPlugin {
  _NativeAmplifyAuthCognito(this._basePlugin, this._stateMachine);

  final AmplifyAuthCognito _basePlugin;
  final CognitoAuthStateMachine _stateMachine;

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
}
