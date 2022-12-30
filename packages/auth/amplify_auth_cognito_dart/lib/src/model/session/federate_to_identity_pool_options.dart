// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

part 'federate_to_identity_pool_options.g.dart';

/// {@template amplify_auth_cognito_dart.model.session.federate_to_identity_pool_options}
/// Options to [AmplifyAuthCognitoDart.federateToIdentityPool].
/// {@endtemplate}
@zAmplifySerializable
class FederateToIdentityPoolOptions
    with
        AWSEquatable<FederateToIdentityPoolOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_auth_cognito_dart.model.session.federate_to_identity_pool_options}
  const FederateToIdentityPoolOptions({
    this.developerProvidedIdentityId,
  });

  /// {@macro amplify_auth_cognito_dart.model.session.federate_to_identity_pool_options}
  factory FederateToIdentityPoolOptions.fromJson(Map<String, Object?> json) =>
      _$FederateToIdentityPoolOptionsFromJson(json);

  /// The identity ID to use for the federated user.
  ///
  /// If provided, this is used in place of a call to
  /// [`GetId`](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html).
  final String? developerProvidedIdentityId;

  @override
  List<Object?> get props => [developerProvidedIdentityId];

  @override
  Map<String, Object?> toJson() => _$FederateToIdentityPoolOptionsToJson(this);

  @override
  String get runtimeTypeName => 'FederateToIdentityPoolOptions';
}
