// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

part 'federate_to_identity_pool_result.g.dart';

/// {@template amplify_auth_cognito_dart.model.session.federate_to_identity_pool_result}
/// The result of calling [AmplifyAuthCognitoDart.federateToIdentityPool].
///
/// A successful result will include the identity ID and AWS credential
/// retrieved from the configured Cognito Identity Pool.
/// {@endtemplate}
@zAmplifySerializable
class FederateToIdentityPoolResult
    with
        AWSEquatable<FederateToIdentityPoolResult>,
        AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_auth_cognito_dart.model.session.federate_to_identity_pool_result}
  const FederateToIdentityPoolResult({
    required this.identityId,
    required this.credentials,
  });

  /// {@macro amplify_auth_cognito_dart.model.session.federate_to_identity_pool_result}
  factory FederateToIdentityPoolResult.fromJson(Map<String, Object?> json) =>
      _$FederateToIdentityPoolResultFromJson(json);

  /// The identity ID of the authenticated user.
  final String identityId;

  /// The temporary AWS credentials of the authenticated user.
  final AWSCredentials credentials;

  @override
  List<Object?> get props => [identityId, credentials];

  @override
  Map<String, Object?> toJson() => _$FederateToIdentityPoolResultToJson(this);
}
