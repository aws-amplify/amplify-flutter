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

import 'package:amplify_core/amplify_core.dart';

/// Configuration helpers for [CognitoUserPoolConfig].
extension HostedUiJwks on CognitoUserPoolConfig {
  /// The JSON Web Key (JWK) URI.
  ///
  /// References:
  /// - https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-tokens-verifying-a-jwt.html
  Uri get jwksUri => Uri.parse(
        'https://cognito-idp.$region.amazonaws.com/$poolId/.well-known/jwks.json',
      );
}

/// Configuration helpers for [CognitoOAuthConfig].
///
/// [Reference](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-userpools-server-contract-reference.html)
extension HostedUiConfig on CognitoOAuthConfig {
  /// The parsed [webDomain] URI.
  ///
  /// If [webDomain] specifies a scheme, it is honored in requests in the same
  /// way that it is honored for [signInUri], [tokenUri], and [signOutUri]. If
  /// no scheme is specified, it defaults to `https` and [webDomain] is
  /// interpreted as a host string.
  Uri get _webDomain {
    final uri = Uri.parse(webDomain);
    if (uri.hasScheme) return uri;
    return Uri(scheme: 'https', host: webDomain);
  }

  /// The sign in URI.
  ///
  /// References:
  /// - https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html
  /// - https://docs.aws.amazon.com/cognito/latest/developerguide/login-endpoint.html
  Uri signInUri([AuthProvider? provider]) {
    Uri baseUri;
    if (this.signInUri != null) {
      baseUri = Uri.parse(this.signInUri!);
    } else {
      baseUri = _webDomain.replace(path: '/oauth2/authorize');
    }
    return baseUri.replace(
      queryParameters: <String, String>{
        if (provider != null) 'identity_provider': provider.uriParameter,
        ...?signInUriQueryParameters,
      },
    );
  }

  /// The sign out URI.
  ///
  /// References:
  /// - https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html
  Uri get signOutUri {
    return _webDomain.replace(
      path: '/logout',
      queryParameters: <String, String>{
        ...?signOutUriQueryParameters,
        'client_id': appClientId,
      },
    );
  }

  /// The sign in redirect URI to use.
  ///
  /// Throws a [StateError] if there are no URIs registered.
  Uri get signInRedirectUri => signInRedirectUris.first;

  /// The sign out redirect URI to use.
  ///
  /// Throws a [StateError] if there are no URIs registered.
  Uri get signOutRedirectUri => signOutRedirectUris.first;

  /// The `token` URI.
  ///
  /// References:
  /// - https://docs.aws.amazon.com/cognito/latest/developerguide/token-endpoint.html
  Uri get tokenUri {
    Uri baseUri;
    if (this.tokenUri != null) {
      baseUri = Uri.parse(this.tokenUri!);
    } else {
      baseUri = _webDomain.replace(path: '/oauth2/token');
    }
    return baseUri.replace(
      queryParameters: tokenUriQueryParameters,
    );
  }

  /// The `revoke` URI.
  ///
  /// References:
  /// - https://docs.aws.amazon.com/cognito/latest/developerguide/revocation-endpoint.html
  Uri get revocationUri => _webDomain.replace(path: '/oauth2/revoke');

  /// The `userinfo` URI.
  ///
  /// References:
  /// - https://docs.aws.amazon.com/cognito/latest/developerguide/userinfo-endpoint.html
  Uri get userInfoUri => _webDomain.replace(path: '/oauth2/userInfo');
}
