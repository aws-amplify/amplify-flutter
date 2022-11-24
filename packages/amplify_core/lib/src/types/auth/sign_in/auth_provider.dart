/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/amplify_core.dart';

class AuthProvider
    with
        AWSEquatable<AuthProvider>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const AuthProvider._(this.name, [this._identityPoolProvider]);

  final String name;
  final String? _identityPoolProvider;

  factory AuthProvider.fromJson(Map<String, Object?> json) {
    return AuthProvider._(
      json['name'] as String,
      json['identityPoolProvider'] as String?,
    );
  }

  /// Auth provider that uses OpenID Connect.
  ///
  /// The provided [name] should match whatever name you provided when
  /// configuring the provider, while [issuer] must match the `iss` value of
  /// the provider's ID token.
  const AuthProvider.oidc(this.name, String issuer)
      : _identityPoolProvider = issuer;

  /// Auth provider that uses Security Assertion Markup Language (SAML).
  ///
  /// The provided [name] must match what was configured in your user pool or
  /// in IAM.
  ///
  /// When configured through IAM, [providerArn] must be provided and must match
  /// the value assigned by IAM.
  ///
  /// For a guide on how to configure a SAML provider in your user pool, see
  /// [here](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-saml-idp.html).
  /// For a guide on how to configure a SAML provider in your identity pool,
  /// see [here](https://docs.aws.amazon.com/cognito/latest/developerguide/saml-identity-provider.html).
  const AuthProvider.saml(this.name, [String? providerArn])
      : _identityPoolProvider = providerArn;

  /// Custom auth provider that is not in this list, the associated string
  /// value will be the identifier used by Cognito.
  ///
  /// The [developerProvidedName] should match whatever has been configured in
  /// your user pool and/or identity pool.
  const AuthProvider.custom(String developerProvidedName)
      : name = developerProvidedName,
        _identityPoolProvider = null;

  static const google = AuthProvider._('google');
  static const facebook = AuthProvider._('facebook');
  static const amazon = AuthProvider._('amazon');
  static const apple = AuthProvider._('apple');
  static const cognito = AuthProvider._('cognito');
  static const twitter = AuthProvider._('twitter');

  static const values = [
    google,
    facebook,
    amazon,
    apple,
    cognito,
    twitter,
  ];

  /// The value of the `identity_provider` URI parameter.
  ///
  /// [Reference](https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html)
  String get uriParameter {
    switch (name) {
      case 'google':
        return 'Google';
      case 'facebook':
        return 'Facebook';
      case 'amazon':
        return 'LoginWithAmazon';
      case 'apple':
        return 'SignInWithApple';
      case 'cognito':
        return 'COGNITO';
      case 'twitter':
        return 'Twitter';
    }
    return name;
  }

  /// The provider name used by Cognito Identity Pools.
  String get identityPoolProviderName {
    switch (name) {
      case 'google':
        return 'accounts.google.com';
      case 'facebook':
        return 'graph.facebook.com';
      case 'amazon':
        return 'www.amazon.com';
      case 'apple':
        return 'appleid.apple.com';
      case 'twitter':
        return 'api.twitter.com';
    }
    return _identityPoolProvider ?? name;
  }

  @override
  List<Object?> get props => [name, _identityPoolProvider];

  @override
  String get runtimeTypeName => 'AuthProvider';

  @override
  Map<String, Object?> toJson() => {
        'name': name,
        'identityPoolProvider': _identityPoolProvider,
      };

  @override
  String toString() => 'AuthProvider.$name';
}
