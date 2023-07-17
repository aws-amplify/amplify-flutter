// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'oauth.g.dart';

/// The Cognito HostedUI configuration.
@zAwsSerializable
class CognitoOAuthConfig
    with AWSEquatable<CognitoOAuthConfig>, AWSSerializable {
  // From: https://github.com/aws-amplify/aws-sdk-ios/blob/main/AWSAuthSDK/Sources/AWSMobileClient/AWSMobileClient.swift#L253

  const CognitoOAuthConfig({
    required this.appClientId,
    this.appClientSecret,
    required this.scopes,
    required this.signInRedirectUri,
    required this.signOutRedirectUri,
    required this.webDomain,
    this.signInUri,
    this.signOutUri,
    this.tokenUri,
    this.signInUriQueryParameters,
    this.signOutUriQueryParameters,
    this.tokenUriQueryParameters,
  });

  factory CognitoOAuthConfig.fromJson(Map<String, Object?> json) =>
      _$CognitoOAuthConfigFromJson(json);

  /// The FQDN of your Cognito endpoint, e.g. https://mydomain.region.auth.amazoncognito.com.
  final String webDomain;

  /// The application ID.
  final String appClientId;

  /// The application secret.
  final String? appClientSecret;

  /// The redirect URI for sign in.
  @JsonKey(name: 'SignInRedirectURI')
  final String signInRedirectUri;

  @JsonKey(name: 'SignInURI')
  final String? signInUri;

  @JsonKey(name: 'SignInURIQueryParameters')
  final Map<String, String>? signInUriQueryParameters;

  @JsonKey(name: 'SignOutRedirectURI')
  final String signOutRedirectUri;

  @JsonKey(name: 'SignOutURI')
  final String? signOutUri;

  @JsonKey(name: 'SignOutURIQueryParameters')
  final Map<String, String>? signOutUriQueryParameters;

  @JsonKey(name: 'TokenURI')
  final String? tokenUri;

  @JsonKey(name: 'TokenURIQueryParameters')
  final Map<String, String>? tokenUriQueryParameters;

  final List<String> scopes;

  @override
  List<Object?> get props => [
        webDomain,
        appClientId,
        appClientSecret,
        signInRedirectUri,
        signInUri,
        signInUriQueryParameters,
        signOutRedirectUri,
        signOutUri,
        signOutUriQueryParameters,
        tokenUri,
        tokenUriQueryParameters,
        scopes,
      ];

  CognitoOAuthConfig copyWith({
    String? webDomain,
    String? appClientId,
    String? appClientSecret,
    String? signInRedirectUri,
    String? signInUri,
    Map<String, String>? signInUriQueryParameters,
    String? signOutRedirectUri,
    String? signOutUri,
    Map<String, String>? signOutUriQueryParameters,
    String? tokenUri,
    Map<String, String>? tokenUriQueryParameters,
    List<String>? scopes,
  }) {
    return CognitoOAuthConfig(
      webDomain: webDomain ?? this.webDomain,
      appClientId: appClientId ?? this.appClientId,
      appClientSecret: appClientSecret ?? this.appClientSecret,
      signInRedirectUri: signInRedirectUri ?? this.signInRedirectUri,
      signInUri: signInUri ?? this.signInUri,
      signInUriQueryParameters: signInUriQueryParameters ??
          (this.signInUriQueryParameters == null
              ? null
              : Map.of(this.signInUriQueryParameters!)),
      signOutRedirectUri: signOutRedirectUri ?? this.signOutRedirectUri,
      signOutUri: signOutUri ?? this.signOutUri,
      signOutUriQueryParameters: signOutUriQueryParameters ??
          (this.signOutUriQueryParameters == null
              ? null
              : Map.of(this.signOutUriQueryParameters!)),
      tokenUri: tokenUri ?? this.tokenUri,
      tokenUriQueryParameters: tokenUriQueryParameters ??
          (this.tokenUriQueryParameters == null
              ? null
              : Map.of(this.tokenUriQueryParameters!)),
      scopes: scopes ?? List.of(this.scopes),
    );
  }

  @override
  Map<String, Object?> toJson() => _$CognitoOAuthConfigToJson(this);
}

/// @nodoc
/// URI helpers for [CognitoOAuthConfig].
extension CognitoOAuthConfigUris on CognitoOAuthConfig {
  /// The parsed list of sign in redirect URIs.
  List<Uri> get signInRedirectUris =>
      signInRedirectUri.split(',').map(Uri.parse).toList();

  /// The parsed list of sign out redirect URIs.
  List<Uri> get signOutRedirectUris =>
      signOutRedirectUri.split(',').map(Uri.parse).toList();
}
