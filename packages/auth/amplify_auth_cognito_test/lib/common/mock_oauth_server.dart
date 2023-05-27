// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_auth_cognito_dart/src/crypto/oauth.dart';
import 'package:amplify_auth_cognito_dart/src/model/hosted_ui/oauth_parameters.dart';
import 'package:amplify_auth_cognito_test/common/jwt.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/testing.dart';

class _Request {
  _Request({
    required this.clientId,
    required this.redirectUri,
    required this.state,
    required this.codeChallenge,
    required this.scope,
    required this.authCode,
    this.nonce,
  });

  final String clientId;
  final Uri redirectUri;
  final String state;
  final String codeChallenge;
  final String scope;
  final String authCode;
  final String? nonce;
}

const paramResponseType = 'response_type';
const paramClientID = 'client_id';
const paramScope = 'scope';
const paramState = 'state';
const paramRedirectURI = 'redirect_uri';
const paramGrantType = 'grant_type';
const paramCode = 'code';
const paramCodeChallenge = 'code_challenge';
const paramCodeChallengeMethod = 'code_challenge_method';
const paramCodeVerifier = 'code_verifier';
const paramNonce = 'nonce';
const paramUsername = 'username';
const paramPassword = 'password';
const paramRefreshToken = 'refresh_token';
const paramProvider = 'provider';
const paramError = 'error';
const paramErrorDescription = 'error_description';
const paramErrorURI = 'error_uri';

class MockOAuthServer {
  MockOAuthServer({
    MockRequestHandler? tokenHandler,
    MockRequestHandler? authorizeHandler,
  })  : _tokenHandler = tokenHandler,
        _authorizeHandler = authorizeHandler;

  static MockRequestHandler _createHandler({
    MockRequestHandler? tokenHandler,
    MockRequestHandler? authorizeHandler,
  }) {
    return (AWSHttpRequest request, bool Function() isCancelled) async {
      if (request.uri.path.endsWith('authorize') ||
          request.uri.path.endsWith('login')) {
        if (authorizeHandler != null) {
          return authorizeHandler(request, isCancelled);
        }
      }
      if (request.uri.path.endsWith('token')) {
        if (tokenHandler != null) {
          return tokenHandler(request, isCancelled);
        }
      }
      return AWSHttpResponse(statusCode: 404, body: utf8.encode('Not Found'));
    };
  }

  MockAWSHttpClient get httpClient => MockAWSHttpClient(
        _createHandler(
          tokenHandler: tokenHandler,
          authorizeHandler: authorizeHandler,
        ),
      );

  Future<OAuthParameters> authorize(Uri authorizationUri) async {
    final resp =
        await httpClient.send(AWSHttpRequest.get(authorizationUri)).response;
    if (resp.statusCode != 200) {
      throw Exception('${resp.statusCode}: ${resp.body}');
    }
    final json =
        (jsonDecode(await resp.decodeBody()) as Map).cast<String, String>();
    return OAuthParameters.fromJson(json);
  }

  final MockRequestHandler? _tokenHandler;
  late final MockRequestHandler tokenHandler =
      _tokenHandler ?? createTokenHandler();
  static MockRequestHandler createTokenHandler({
    bool includeNonce = true,
  }) =>
      (AWSHttpRequest request, bool Function() isCancelled) async {
        final query = Map.fromEntries(
          utf8.decode(request.bodyBytes).split('&').map((param) {
            final [key, value] = param.split('=');
            return MapEntry(Uri.decodeFull(key), Uri.decodeFull(value));
          }),
        );

        final code = query[paramCode];
        if (code == null) {
          return _missingParameter(paramCode, state: null);
        }
        final redirectUri = query[paramRedirectURI];
        if (redirectUri == null) {
          return _missingParameter(paramRedirectURI, state: null);
        }
        final codeVerifier = query[paramCodeVerifier];
        if (codeVerifier == null) {
          return _missingParameter(paramCodeVerifier, state: null);
        }

        final session = _pendingRequests[code];
        if (session == null) {
          return _invalidRequest();
        }
        if (session.authCode != code) {
          return _invalidRequest();
        }
        if (session.redirectUri != Uri.tryParse(redirectUri)) {
          return _invalidRequest();
        }

        const exp = Duration(minutes: 5);
        final jwt = createJwt(
          type: TokenType.access,
          expiration: exp,
        );
        final refreshToken = uuid();
        final idToken = createJwt(
          type: TokenType.id,
          expiration: exp,
          nonce: includeNonce ? session.nonce : null,
        );
        final response = <String, dynamic>{
          'token_type': 'bearer',
          'access_token': jwt,
          'refresh_token': refreshToken,
          'id_token': idToken,
          'expires_in': exp.inSeconds,
          'scope': session.scope,
        };

        return AWSHttpResponse(
          statusCode: 200,
          body: utf8.encode(jsonEncode(response)),
          headers: const {'content-type': 'application/json'},
        );
      };

  final MockRequestHandler? _authorizeHandler;
  Future<AWSBaseHttpResponse> authorizeHandler(
    AWSHttpRequest request,
    bool Function() isCancelled,
  ) async {
    if (_authorizeHandler != null) {
      return _authorizeHandler!(request, isCancelled);
    }

    final query = request.uri.queryParameters;

    final state = query[paramState];
    if (state == null) {
      return _missingParameter(paramState, state: null);
    }
    final clientId = query[paramClientID];
    if (clientId == null) {
      return _missingParameter(paramClientID, state: state);
    }
    final redirectUrl = query[paramRedirectURI];
    if (redirectUrl == null) {
      return _missingParameter(paramRedirectURI, state: state);
    }
    final redirectUri = Uri.tryParse(redirectUrl);
    if (redirectUri == null) {
      return _missingParameter(paramRedirectURI, state: state);
    }
    final codeChallenge = query[paramCodeChallenge];
    if (codeChallenge == null) {
      return _missingParameter(paramCodeChallenge, state: state);
    }
    final scope = query[paramScope];
    if (scope == null) {
      return _missingParameter(paramScope, state: state);
    }
    final nonce = query[paramNonce];

    final authCode = generateState();

    final session = _Request(
      clientId: clientId,
      redirectUri: redirectUri,
      codeChallenge: codeChallenge,
      state: state,
      scope: scope,
      authCode: authCode,
      nonce: nonce,
    );

    _pendingRequests[authCode] = session;

    return AWSHttpResponse(
      statusCode: 200,
      body: utf8.encode(
        jsonEncode({
          paramCode: authCode,
          paramState: state,
        }),
      ),
      headers: const {'content-type': 'application/json'},
    );
  }

  static final Map<String, _Request> _pendingRequests = {};

  MockOAuthServer copyWith({
    MockRequestHandler? tokenHandler,
    MockRequestHandler? authorizeHandler,
  }) {
    return MockOAuthServer(
      tokenHandler: tokenHandler ?? _tokenHandler,
      authorizeHandler: authorizeHandler ?? _authorizeHandler,
    );
  }

  void reset() {
    _pendingRequests.clear();
  }

  static AWSHttpResponse _missingParameter(
    String parameterName, {
    required String? state,
  }) {
    return AWSHttpResponse(
      statusCode: 400,
      body: utf8.encode(
        jsonEncode({
          paramState: state,
          paramError: 'Missing or invalid parameter',
          paramErrorDescription: parameterName,
        }),
      ),
      headers: const {'content-type': 'application/json'},
    );
  }

  static AWSHttpResponse _invalidRequest() {
    return AWSHttpResponse(
      statusCode: 400,
      body: utf8.encode(
        jsonEncode({
          paramError: 'Invalid request',
        }),
      ),
      headers: const {'content-type': 'application/json'},
    );
  }
}
