// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
