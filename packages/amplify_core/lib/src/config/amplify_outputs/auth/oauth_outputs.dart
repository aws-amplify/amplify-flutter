// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/auth/identity_provider.dart';
import 'package:amplify_core/src/config/amplify_outputs/auth/oauth_response_type.dart';
import 'package:meta/meta.dart';

part 'oauth_outputs.g.dart';

/// {@template amplify_core.amplify_outputs.oauth_outputs}
/// The Amplify Gen 2 outputs for oauth.
/// {@endtemplate}
@zAmplifyOutputsSerializable
class OAuthOutputs
    with AWSEquatable<OAuthOutputs>, AWSSerializable, AWSDebuggable {
  /// {@macro amplify_core.amplify_outputs.oauth_outputs}
  const OAuthOutputs({
    required this.identityProviders,
    required this.domain,
    required this.scopes,
    required this.redirectSignInUri,
    this.signInUri,
    this.signInUriQueryParameters,
    required this.redirectSignOutUri,
    this.signOutUri,
    this.signOutUriQueryParameters,
    this.tokenUri,
    this.tokenUriQueryParameters,
    required this.responseType,
  });

  factory OAuthOutputs.fromJson(Map<String, Object?> json) =>
      _$OAuthOutputsFromJson(json);

  /// {@macro amplify_core.amplify_outputs.identity_providers}
  final List<IdentityProvider> identityProviders;

  /// The domain used for identity providers.
  final String domain;

  /// The authorized scopes used for the identity providers.
  final List<String> scopes;

  /// URIs used to redirect after signing in using an identity provider.
  final List<String> redirectSignInUri;

  /// An optional URI to use when signing in.
  ///
  /// Note: This attribute is not part of the Amplify Outputs schema.
  /// This exists for backwards compatibility with the Gen 1 config.
  @internal
  final String? signInUri;

  /// Optional query params in the sign in URI.
  ///
  /// Note: This attribute is not part of the Amplify Outputs schema.
  /// This exists for backwards compatibility with the Gen 1 config.
  @internal
  final Map<String, String>? signInUriQueryParameters;

  /// URIs used to redirect after signing out.
  final List<String> redirectSignOutUri;

  /// An optional URI to use when signing out.
  ///
  /// Note: This attribute is not part of the Amplify Outputs schema.
  /// This exists for backwards compatibility with the Gen 1 config.
  @internal
  final String? signOutUri;

  /// Optional query params in the sign out URI.
  ///
  /// Note: This attribute is not part of the Amplify Outputs schema.
  /// This exists for backwards compatibility with the Gen 1 config.
  @internal
  final Map<String, String>? signOutUriQueryParameters;

  /// The OAuth token URI.
  ///
  /// Defaults to '/oauth2/token'.
  ///
  /// Note: This attribute is not part of the Amplify Outputs schema.
  /// This exists for backwards compatibility with the Gen 1 config.
  @internal
  final String? tokenUri;

  /// Optional query params in the OAuth token URI.
  ///
  /// Note: This attribute is not part of the Amplify Outputs schema.
  /// This exists for backwards compatibility with the Gen 1 config.
  @internal
  final Map<String, String>? tokenUriQueryParameters;

  /// {@macro amplify_core.amplify_outputs.oauth_response_type}
  final OAuthResponseType responseType;

  @override
  List<Object?> get props => [
        identityProviders,
        domain,
        scopes,
        redirectSignInUri,
        signInUri,
        signInUriQueryParameters,
        redirectSignOutUri,
        signOutUri,
        signOutUriQueryParameters,
        tokenUri,
        tokenUriQueryParameters,
        responseType,
      ];

  @override
  String get runtimeTypeName => 'OAuthOutputs';

  @override
  Object? toJson() {
    return _$OAuthOutputsToJson(this);
  }
}
