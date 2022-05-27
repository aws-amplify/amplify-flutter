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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito/src/crypto/oauth.dart';
import 'package:amplify_auth_cognito/src/flows/hosted_ui/hosted_ui_config.dart';
import 'package:amplify_auth_cognito/src/jwt/jwt.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:oauth2/oauth2.dart' as oauth2;

// Order here matters to ensure Web/Desktop work without Flutter.
import 'hosted_ui_platform_stub.dart'
    if (dart.library.html) 'hosted_ui_platform_html.dart'
    if (dart.library.ui) 'hosted_ui_platform_flutter.dart'
    if (dart.library.io) 'hosted_ui_platform_io.dart';

/// A factory constructor for a [HostedUiPlatform] instance.
typedef HostedUiPlatformFactory = HostedUiPlatform Function(
  DependencyManager dependencyManager,
);

/// {@template amplify_auth_cognito.hosted_ui_platform}
/// Platform-specific behavior for the Hosted UI flow.
/// {@endtemplate}
abstract class HostedUiPlatform {
  /// {@macro amplify_auth_cognito.hosted_ui_platform}
  factory HostedUiPlatform(DependencyManager dependencyManager) =
      HostedUiPlatformImpl;

  /// {@macro amplify_auth_cognito.hosted_ui_platform}
  @protected
  HostedUiPlatform.protected(this.dependencyManager);

  /// The dependency token for [HostedUiPlatform].
  static const token = Token<HostedUiPlatform>([Token<DependencyManager>()]);

  /// The Hosted UI configuration.
  @protected
  CognitoOAuthConfig get config => dependencyManager.expect();

  /// The Hosted UI storage keys.
  late final HostedUiKeys _keys = HostedUiKeys(config);

  /// The secure storage plugin.
  SecureStorageInterface get _secureStorage => dependencyManager.getOrCreate();

  /// The HTTP client to use for internal HTTP requests.
  @protected
  http.Client get httpClient => dependencyManager.getOrCreate();

  /// The state machine dispatcher.
  @protected
  Dispatcher get dispatcher => dependencyManager.expect();

  /// The dependency manager, used to retrieve injected dependencies.
  @protected
  final DependencyManager dependencyManager;

  /// {@template amplify_auth_cognito.hosted_ui_platform.auth_code_grant}
  /// Internal representation of the OAuth flow.
  /// {@endtemplate}
  oauth2.AuthorizationCodeGrant? _authCodeGrant;

  /// {@macro amplify_auth_cognito.hosted_ui_platform.auth_code_grant}
  @protected
  @visibleForTesting
  oauth2.AuthorizationCodeGrant get authCodeGrant {
    if (_authCodeGrant == null) {
      throw StateError('Authorization grant is null');
    }
    return _authCodeGrant!;
  }

  /// {@macro amplify_auth_cognito.hosted_ui_platform.auth_code_grant}
  @protected
  @visibleForTesting
  set authCodeGrant(oauth2.AuthorizationCodeGrant grant) {
    _authCodeGrant ??= grant;
  }

  /// The default redirect URI for sign in.
  @protected
  Uri get signInRedirectUri;

  /// The default redirect URI for sign out.
  @protected
  Uri get signOutRedirectUri;

  /// Gets the authrorization URL for presenting to the user.
  @protected
  @visibleForTesting
  @nonVirtual
  Uri getSignInUri({
    Uri? redirectUri,
    AuthProvider? provider,
  }) {
    final state = generateState();
    final codeVerifier = createCodeVerifier();
    final nonce = generateState();

    _secureStorage
      ..write(
        key: _keys[HostedUiKey.state],
        value: state,
      )
      ..write(
        key: _keys[HostedUiKey.codeVerifier],
        value: codeVerifier,
      )
      ..write(
        key: _keys[HostedUiKey.nonce],
        value: nonce,
      );

    _authCodeGrant = createGrant(
      config,
      codeVerifier: codeVerifier,
      httpClient: httpClient,
      provider: provider,
    );
    final uri = _authCodeGrant!.getAuthorizationUrl(
      redirectUri ?? signInRedirectUri,
      scopes: config.scopes,
      state: state,
    );

    return uri.replace(
      queryParameters: <String, String>{
        ...uri.queryParameters,
        'nonce': nonce,
      },
    );
  }

  /// Gets the de-authrorization URL for presenting to the user.
  @protected
  @visibleForTesting
  @nonVirtual
  Uri getSignOutUri({Uri? redirectUri}) {
    final signOutUri = HostedUiConfig(config).signOutUri;

    return signOutUri.replace(
      queryParameters: <String, String>{
        ...signOutUri.queryParameters,
        'logout_uri': (redirectUri ?? signOutRedirectUri).toString(),
      },
    );
  }

  /// Performs the second part of the authorization code flow, exhanging the
  /// parameters retrieved via the WebView with the OAuth server for an access
  /// and refresh token.
  @nonVirtual
  Future<CognitoUserPoolTokens> exchange(OAuthParameters parameters) async {
    if (parameters.error != null) {
      final error = parameters.error!;
      final errorDesc = parameters.errorDescription ?? error.description;
      final errorUri = parameters.errorUri;
      final desc = StringBuffer(errorDesc);
      if (errorUri != null) {
        desc.write('\n\nFor more information, visit $errorUri');
      }
      throw UnknownException('(${error.name}) $desc');
    }

    try {
      final client = await authCodeGrant.handleAuthorizationResponse(
        parameters.toJson(),
      );
      final oAuthCredentials = client.credentials;
      final tokens = CognitoUserPoolTokens(
        (b) => b
          ..signInMethod = CognitoSignInMethod.hostedUi
          ..accessToken = JsonWebToken.parse(oAuthCredentials.accessToken)
          ..refreshToken = oAuthCredentials.refreshToken
          ..idToken = JsonWebToken.parse(oAuthCredentials.idToken!),
      )..validate(
          nonce: await _secureStorage.read(key: _keys[HostedUiKey.nonce]),
        );

      return tokens;

      // Transform FormatExceptions from `oauth2` package to Amplify types.
    } on FormatException catch (e) {
      throw InvalidStateException(e.message);
    }
  }

  /// Called during initialization when old state is found in [_secureStorage].
  Future<void> onFoundState({
    required String state,
    required String codeVerifier,
  }) async {
    _authCodeGrant = null;
    _secureStorage
      ..delete(key: _keys[HostedUiKey.state])
      ..delete(key: _keys[HostedUiKey.codeVerifier]);

    throw const SignedOutException('The user is currently signed out');
  }

  /// Sign in a user via the OAuth flow.
  Future<void> signIn({
    required CognitoSignInWithWebUIOptions options,
    AuthProvider? provider,
  });

  /// Sign out the current user.
  Future<void> signOut();
}
