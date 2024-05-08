// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart' hide SocialProvider;
import 'package:amplify_core/src/config/amplify_outputs/auth/identity_provider.dart';
import 'package:amplify_core/src/config/amplify_outputs/auth/response_type.dart';

part 'oauth_outputs.g.dart';

/// {@template amplify_core.amplify_outputs.oauth_outputs}
/// The oauth outputs used by Auth category plugin
/// to communicate with backend services.
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
    required this.redirectSignOutUri,
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

  /// URIs used to redirect after signing out.
  final List<String> redirectSignOutUri;

  /// {@macro amplify_core.amplify_outputs.response_type}
  final ResponseType responseType;

  @override
  List<Object?> get props => [
        identityProviders,
        domain,
        scopes,
        redirectSignInUri,
        redirectSignOutUri,
        responseType,
      ];

  @override
  String get runtimeTypeName => 'OAuthOutputs';

  @override
  Object? toJson() {
    return _$OAuthOutputsToJson(this);
  }
}
