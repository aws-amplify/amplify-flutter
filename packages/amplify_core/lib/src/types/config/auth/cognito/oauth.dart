//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/aws_common.dart';

import 'package:json_annotation/json_annotation.dart';

part 'oauth.g.dart';

/// The Cognito HostedUI configuration.
@awsSerializable
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

  factory CognitoOAuthConfig.fromJson(Map<String, Object?> json) =>
      _$CognitoOAuthConfigFromJson(json);

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
