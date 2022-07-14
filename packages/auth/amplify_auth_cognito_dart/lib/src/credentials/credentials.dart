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

@internal
library amplify_auth_cognito.credentials.credentials;

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_config.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:oauth2/oauth2.dart' as oauth2;

/// {@template amplify_auth_cognito.credentials}
/// A user's access and refresh tokens plus metadata needed to access services.
///
/// The base oauth2 implementation is extended to provided extra functionality
/// around the refresh process, including being alerted to errors and verifying,
/// cryptographically, the tokens received.
/// {@endtemplate}
class Credentials implements oauth2.Credentials {
  /// {@macro amplify_auth_cognito.credentials}
  Credentials(
    this._config,
    this._accessToken,
    this._refreshToken,
    this._idToken, {
    required SecureStorageInterface secureStorage,
    required http.Client httpClient,
  })  : _secureStorage = secureStorage,
        _scopes = _config.scopes,
        _httpClient = httpClient;

  /// Creates [Credentials] from `package:oauth2` credentials.
  ///
  /// {@macro amplify_auth_cognito.credentials}
  factory Credentials.fromOAuthCredentials(
    oauth2.Credentials creds, {
    required CognitoOAuthConfig config,
    required SecureStorageInterface secureStorage,
    required http.Client httpClient,
  }) {
    final accessToken = JsonWebToken.parse(creds.accessToken);
    final refreshToken = creds.refreshToken!;
    final idToken = JsonWebToken.parse(creds.idToken!);

    return Credentials(
      config,
      accessToken,
      refreshToken,
      idToken,
      secureStorage: secureStorage,
      httpClient: httpClient,
    );
  }

  /// Creates [Credentials] from Cognito user pool tokens.
  ///
  /// {@macro amplify_auth_cognito.credentials}
  factory Credentials.fromUserPoolTokens(
    CognitoUserPoolTokens tokens, {
    required CognitoOAuthConfig config,
    required SecureStorageInterface secureStorage,
    required http.Client httpClient,
  }) {
    return Credentials(
      config,
      tokens.accessToken,
      tokens.refreshToken,
      tokens.idToken,
      secureStorage: secureStorage,
      httpClient: httpClient,
    );
  }

  final SecureStorageInterface _secureStorage;
  final CognitoOAuthConfig _config;
  final JsonWebToken _accessToken;
  final String _refreshToken;
  final JsonWebToken _idToken;
  final List<String> _scopes;
  final http.Client _httpClient;

  late final HostedUiKeys _keys = HostedUiKeys(_config);

  @override
  String get accessToken => _accessToken.raw;

  @override
  bool get canRefresh => true;

  @override
  DateTime? get expiration => _accessToken.claims.expiration;

  /// The expiration time, in seconds since epoch.
  int? get expirationSecondsSinceEpoch =>
      expiration != null ? expiration!.millisecondsSinceEpoch ~/ 1000 : null;

  @override
  String? get idToken => _idToken.raw;

  @override
  bool get isExpired {
    final exp = expiration;
    if (exp == null) {
      return false;
    }
    return exp.isBefore(DateTime.now());
  }

  @override
  String? get refreshToken => _refreshToken;

  @override
  List<String> get scopes => _scopes;

  @override
  String toJson() => '';

  @override
  Uri get tokenEndpoint => HostedUiConfig(_config).tokenUri;

  @override
  Future<oauth2.Credentials> refresh({
    String? identifier,
    String? secret,
    Iterable<String>? newScopes,
    bool basicAuth = true,
    http.Client? httpClient,
  }) async {
    // TODO(dnys1): Log
    safePrint('Refreshing tokens...');

    try {
      final oauthCreds = await oauth2.Credentials(
        accessToken,
        refreshToken: refreshToken,
        expiration: _accessToken.claims.expiration,
        idToken: idToken,
        tokenEndpoint: HostedUiConfig(_config).tokenUri,
        scopes: scopes,
      ).refresh(
        identifier: _config.appClientId,
        basicAuth: true,
        // Must be included as empty string so that the client ID is sent
        // in requests.
        secret: _config.appClientSecret ?? '',
        httpClient: _httpClient,
      );

      final creds = Credentials.fromOAuthCredentials(
        oauthCreds,
        config: _config,
        secureStorage: _secureStorage,
        httpClient: _httpClient,
      )..save();

      return creds;
    } on Exception catch (e) {
      // TODO(dnys1): Log
      safePrint('Error refreshing tokens: $e');
      rethrow;
    }
  }

  /// Saves the credentials to secure storage.
  void save() {
    _secureStorage.write(
      key: _keys[HostedUiKey.accessToken],
      value: accessToken,
    );
    if (refreshToken != null) {
      _secureStorage.write(
        key: _keys[HostedUiKey.refreshToken],
        value: refreshToken!,
      );
    }
    if (idToken != null) {
      _secureStorage.write(
        key: _keys[HostedUiKey.idToken],
        value: idToken!,
      );
    }
    _secureStorage
      ..delete(key: _keys[HostedUiKey.state])
      ..delete(key: _keys[HostedUiKey.codeVerifier]);
  }
}
