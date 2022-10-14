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
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    show AuthFlowType, AuthFlowTypeHelpers;
import 'package:amplify_core/amplify_core.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cognito_sign_in_details.g.dart';

/// {@template amplify_auth_cognito_dart.cognito_sign_in_details}
/// The details of how a user logged in.
/// {@endtemplate}
abstract class CognitoSignInDetails extends SignInDetails {
  /// {@macro amplify_auth_cognito_dart.cognito_sign_in_details}
  const CognitoSignInDetails();

  /// {@macro amplify_auth_cognito_dart.cognito_sign_in_details}
  factory CognitoSignInDetails.fromJson(Map<String, Object?> json) {
    final method = CognitoSignInMethod.valueOf(json['method'] as String);
    switch (method) {
      case CognitoSignInMethod.default$:
        return CognitoSignInDetailsApiBased.fromJson(json);
      case CognitoSignInMethod.hostedUi:
        return CognitoSignInDetailsHostedUi.fromJson(json);
    }
    throw StateError('Unknown CognitoSignInDetails type: $method');
  }

  /// {@macro amplify_auth_cognito_dart.cognito_sign_in_details_api_based}
  const factory CognitoSignInDetails.apiBased({
    required String username,
    AuthFlowType? authFlowType,
  }) = CognitoSignInDetailsApiBased;

  /// {@macro amplify_auth_cognito_dart.cognito_sign_in_details_hosted_ui}
  const factory CognitoSignInDetails.hostedUi({
    AuthProvider? provider,
  }) = CognitoSignInDetailsHostedUi;
}

/// {@template amplify_auth_cognito_dart.cognito_sign_in_details_api_based}
/// Sign in details for Cognito API-based (e.g. SRP or Custom Auth).
/// {@endtemplate}
@zAmplifySerializable
@_AuthFlowTypeSerializer()
class CognitoSignInDetailsApiBased extends CognitoSignInDetails
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  /// {@macro amplify_auth_cognito_dart.cognito_sign_in_details_api_based}
  const CognitoSignInDetailsApiBased({
    required this.username,
    this.authFlowType,
  });

  /// {@macro amplify_auth_cognito_dart.cognito_sign_in_details_api_based}
  factory CognitoSignInDetailsApiBased.fromJson(Map<String, Object?> json) =>
      _$CognitoSignInDetailsApiBasedFromJson(json);

  /// The username passed to `Amplify.Auth.signIn`.
  final String username;

  /// The flow used to sign-in, e.g. SRP or Custom Auth.
  final AuthFlowType? authFlowType;

  @override
  String get runtimeTypeName => 'CognitoSignInDetailsApiBased';

  @override
  Map<String, Object?> toJson() => {
        'method': CognitoSignInMethod.default$.toJson(),
        ..._$CognitoSignInDetailsApiBasedToJson(this),
      };
}

/// {@template amplify_auth_cognito_dart.cognito_sign_in_details_hosted_ui}
/// Sign in details for Cognito Hosted UI.
/// {@endtemplate}
@zAmplifySerializable
class CognitoSignInDetailsHostedUi extends CognitoSignInDetails
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  /// {@macro amplify_auth_cognito_dart.cognito_sign_in_details_hosted_ui}
  const CognitoSignInDetailsHostedUi({
    this.provider,
  });

  /// {@macro amplify_auth_cognito_dart.cognito_sign_in_details_hosted_ui}
  factory CognitoSignInDetailsHostedUi.fromJson(Map<String, Object?> json) =>
      _$CognitoSignInDetailsHostedUiFromJson(json);

  /// The third-party authentication provider, if available.
  final AuthProvider? provider;

  @override
  String get runtimeTypeName => 'CognitoSignInDetailsHostedUi';

  @override
  Map<String, Object?> toJson() => {
        'method': CognitoSignInMethod.hostedUi.toJson(),
        ..._$CognitoSignInDetailsHostedUiToJson(this),
      };
}

/// The method by which the user logged in and retrieved the accompanying
/// [CognitoUserPoolTokens].
class CognitoSignInMethod extends EnumClass with AWSSerializable<String> {
  const CognitoSignInMethod._(super.name);

  /// API-based (SRP, custom auth) method.
  static const CognitoSignInMethod default$ = _$default$;

  /// Hosted UI
  static const CognitoSignInMethod hostedUi = _$hostedUi;

  /// All values of [CognitoSignInMethod].
  static BuiltSet<CognitoSignInMethod> get values =>
      _$CognitoSignInMethodValues;

  /// Gets the [CognitoSignInMethod] value corresponding to [name].
  static CognitoSignInMethod valueOf(String name) =>
      _$CognitoSignInMethodValueOf(name);

  @override
  String toJson() => name;
}

class _AuthFlowTypeSerializer implements JsonConverter<AuthFlowType, String> {
  const _AuthFlowTypeSerializer();

  @override
  AuthFlowType fromJson(String json) => AuthFlowType.values.byValue(json);

  @override
  String toJson(AuthFlowType object) => object.toJson();
}
