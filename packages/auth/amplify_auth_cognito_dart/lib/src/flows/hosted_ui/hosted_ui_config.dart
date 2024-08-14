// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/auth/oauth_outputs.dart';

/// Configuration helpers for [CognitoOAuthConfig].
///
/// [Reference](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-userpools-server-contract-reference.html)
extension HostedUiConfig on OAuthOutputs {
  /// The parsed [domain] URI.
  ///
  /// If [domain] specifies a scheme, it is honored in requests in the same
  /// way that it is honored for [signInUri], [tokenUri], and [signOutUri]. If
  /// no scheme is specified, it defaults to `https` and [domain] is
  /// interpreted as a host string.
  Uri get _webDomain {
    final uri = Uri.parse(domain);
    if (uri.hasScheme) return uri;
    return Uri(scheme: 'https', host: domain);
  }

  /// The sign in URI.
  ///
  /// References:
  /// - https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html
  /// - https://docs.aws.amazon.com/cognito/latest/developerguide/login-endpoint.html
  Uri signInUri([AuthProvider? provider]) {
    Uri baseUri;
    // ignore: invalid_use_of_internal_member
    if (this.signInUri != null) {
      // ignore: invalid_use_of_internal_member
      baseUri = Uri.parse(this.signInUri!);
    } else {
      baseUri = _webDomain.replace(path: '/oauth2/authorize');
    }
    return baseUri.replace(
      queryParameters: <String, String>{
        if (provider != null) 'identity_provider': provider.uriParameter,
        // ignore: invalid_use_of_internal_member
        ...?signInUriQueryParameters,
      },
    );
  }

  /// The sign out URI.
  ///
  /// References:
  /// - https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html
  Uri signOutUri(String userPoolClientId) {
    return _webDomain.replace(
      path: '/logout',
      queryParameters: <String, String>{
        // ignore: invalid_use_of_internal_member
        ...?signOutUriQueryParameters,
        'client_id': userPoolClientId,
      },
    );
  }

  /// The sign in redirect URI to use.
  ///
  /// Throws a [StateError] if there are no URIs registered.
  Uri get signInRedirectUri => Uri.parse(redirectSignInUri.first);

  /// The sign out redirect URI to use.
  ///
  /// Throws a [StateError] if there are no URIs registered.
  Uri get signOutRedirectUri => Uri.parse(redirectSignOutUri.first);

  /// The `token` URI.
  ///
  /// References:
  /// - https://docs.aws.amazon.com/cognito/latest/developerguide/token-endpoint.html
  Uri get tokenUri {
    Uri baseUri;
    // ignore: invalid_use_of_internal_member
    if (this.tokenUri != null) {
      // ignore: invalid_use_of_internal_member
      baseUri = Uri.parse(this.tokenUri!);
    } else {
      baseUri = _webDomain.replace(path: '/oauth2/token');
    }
    return baseUri.replace(
      // ignore: invalid_use_of_internal_member
      queryParameters: tokenUriQueryParameters,
    );
  }
}
