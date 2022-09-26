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
