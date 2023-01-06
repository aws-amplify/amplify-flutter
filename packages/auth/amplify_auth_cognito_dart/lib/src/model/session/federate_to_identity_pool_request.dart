// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'federate_to_identity_pool_request.g.dart';

/// {@template amplify_auth_cognito_dart.model.session.federate_to_identity_pool_request}
/// Encapsulates a request to [AmplifyAuthCognitoDart.federateToIdentityPool].
/// {@endtemplate}
@zAmplifySerializable
class FederateToIdentityPoolRequest
    with
        AWSEquatable<FederateToIdentityPoolRequest>,
        AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_auth_cognito_dart.model.session.federate_to_identity_pool_request}
  const FederateToIdentityPoolRequest({
    required this.token,
    required this.provider,
    this.options,
  });

  /// {@macro amplify_auth_cognito_dart.model.session.federate_to_identity_pool_request}
  factory FederateToIdentityPoolRequest.fromJson(Map<String, Object?> json) =>
      _$FederateToIdentityPoolRequestFromJson(json);

  /// The token issued by [provider].
  ///
  /// - For social providers, follow the instructions provided for their SDKs
  /// for retrieving the access/identity token. More information is available
  /// [here](https://docs.aws.amazon.com/cognito/latest/developerguide/external-identity-providers.html).
  /// - For OIDC providers, this is the ID token issued by the provider. More
  /// information is available [here](https://docs.aws.amazon.com/cognito/latest/developerguide/open-id.html).
  /// - For SAML providers, this is the base64-encoded assertion response. More
  /// information is available [here](https://docs.aws.amazon.com/cognito/latest/developerguide/saml-identity-provider.html).
  final String token;

  /// The identity provider, as configured in your identity pool.
  ///
  /// See the [docs](https://docs.aws.amazon.com/cognito/latest/developerguide/external-identity-providers.html)
  /// for more information on how to configure external providers.
  @JsonKey(
    fromJson: _authProviderFromJson,
  )
  final AuthProvider provider;

  /// Additional options for the request.
  final FederateToIdentityPoolOptions? options;

  @override
  List<Object?> get props => [token, provider, options];

  @override
  Map<String, Object?> toJson() => _$FederateToIdentityPoolRequestToJson(this);
}

AuthProvider _authProviderFromJson(String json) => AuthProvider.custom(json);
