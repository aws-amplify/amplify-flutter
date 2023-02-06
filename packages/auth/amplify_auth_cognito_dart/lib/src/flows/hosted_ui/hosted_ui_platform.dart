// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/crypto/oauth.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_config.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_stub.dart'
    if (dart.library.html) 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_html.dart'
    if (dart.library.io) 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform_io.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:oauth2/oauth2.dart' as oauth2;

/// A factory constructor for a [HostedUiPlatform] instance.
typedef HostedUiPlatformFactory = HostedUiPlatform Function(
  DependencyManager dependencyManager,
);

/// {@template amplify_auth_cognito.hosted_ui_platform}
/// Platform-specific behavior for the Hosted UI flow.
/// {@endtemplate}
abstract class HostedUiPlatform implements Closeable {
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
  Dispatcher<AuthEvent, AuthState> get dispatcher => dependencyManager.expect();

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
  @visibleForTesting
  Uri get signInRedirectUri;

  /// The default redirect URI for sign out.
  @protected
  @visibleForTesting
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

  /// Creates an authorization code grant.
  @protected
  @visibleForTesting
  @nonVirtual
  oauth2.AuthorizationCodeGrant createGrant(
    CognitoOAuthConfig config, {
    AuthProvider? provider,
    String? codeVerifier,
    http.Client? httpClient,
  }) {
    return oauth2.AuthorizationCodeGrant(
      config.appClientId,
      HostedUiConfig(config).signInUri(provider),
      HostedUiConfig(config).tokenUri,
      secret: config.appClientSecret,
      httpClient: httpClient,
      codeVerifier: codeVerifier,

      // The spec recommends against this, but it's what Cognito expects. Basic
      // authorization will fail with `invalid_grant`.
      basicAuth: false,
    );
  }

  /// Creates an authorization code grant and advances the internal state to
  /// `pendingResponse` so that parameter exchange will work.
  @protected
  @visibleForTesting
  @nonVirtual
  oauth2.AuthorizationCodeGrant restoreGrant(
    CognitoOAuthConfig config, {
    required String state,
    required String codeVerifier,
    http.Client? httpClient,
  }) {
    final grant = createGrant(
      config,
      codeVerifier: codeVerifier,
      httpClient: httpClient,
    );

    return grant
      // Advances the internal state.
      ..getAuthorizationUrl(
        signInRedirectUri,
        scopes: config.scopes,
        state: state,
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

      // Handle Lambda exceptions
      if (LambdaException.isLambdaException(errorDesc)) {
        throw LambdaException(errorDesc);
      }

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
        signInMethod: CognitoSignInMethod.hostedUi,
        accessToken: JsonWebToken.parse(oAuthCredentials.accessToken),
        refreshToken: oAuthCredentials.refreshToken!,
        idToken: JsonWebToken.parse(oAuthCredentials.idToken!),
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
    final parameters = dependencyManager.get<OAuthParameters>();
    if (parameters != null) {
      authCodeGrant = restoreGrant(
        config,
        state: state,
        codeVerifier: codeVerifier,
        httpClient: httpClient,
      );
      return dispatcher.dispatch(HostedUiEvent.exchange(parameters)).accepted;
    }

    // Clear all state from the previous session.
    _authCodeGrant = null;
    _secureStorage
      ..delete(key: _keys[HostedUiKey.state])
      ..delete(key: _keys[HostedUiKey.codeVerifier])
      ..delete(key: _keys[HostedUiKey.nonce])
      ..delete(key: _keys[HostedUiKey.options]);

    throw const SignedOutException('The user is currently signed out');
  }

  /// Sign in a user via the OAuth flow.
  Future<void> signIn({
    required CognitoSignInWithWebUIOptions options,
    AuthProvider? provider,
  });

  /// Cancels the active sign in.
  Future<void> cancelSignIn() async {}

  /// Sign out the current user.
  Future<void> signOut({
    required CognitoSignOutWithWebUIOptions options,
    required bool isPreferPrivateSession,
  });

  @override
  FutureOr<void> close() {}
}
