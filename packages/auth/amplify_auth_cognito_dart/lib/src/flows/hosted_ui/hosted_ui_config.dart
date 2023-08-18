// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_config.dart';
import 'package:amplify_core/amplify_core.dart';

/// Configuration helpers for [AuthUserPoolConfig].
extension HostedUiJwks on AuthUserPoolConfig {
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
extension HostedUiConfig on AuthHostedUiConfig {
  /// The parsed [domainName] URI.
  ///
  /// If [domainName] specifies a scheme, it is honored in requests in the same
  /// way that it is honored for [signInUri], [tokenUri], and [signOutUri]. If
  /// no scheme is specified, it defaults to `https` and [domainName] is
  /// interpreted as a host string.
  Uri get _webDomain {
    final uri = Uri.parse(domainName);
    if (uri.hasScheme) return uri;
    return Uri(scheme: 'https', host: domainName);
  }

  /// The sign in URI.
  ///
  /// References:
  /// - https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html
  /// - https://docs.aws.amazon.com/cognito/latest/developerguide/login-endpoint.html
  Uri signInUri([AuthProvider? provider]) {
    Uri baseUri;
    if (this.signInUri case final signInUri?) {
      baseUri = signInUri;
    } else {
      baseUri = _webDomain.replace(path: '/oauth2/authorize');
    }
    return baseUri.replace(
      queryParameters: <String, String>{
        if (provider != null) 'identity_provider': provider.uriParameter,
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
        'client_id': clientId!,
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
  Uri get tokenUri => switch (this.tokenUri) {
        final tokenUri? => tokenUri,
        _ => _webDomain.replace(path: '/oauth2/token'),
      };

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
