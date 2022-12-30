// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    show AuthFlowType, AuthFlowTypeHelpers;
import 'package:amplify_core/amplify_core.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cognito_sign_in_details.g.dart';

/// {@template amplify_auth_cognito_dart.cognito_sign_in_type}
/// The type of sign-in initiated by the user.
/// {@endtemplate}
enum CognitoSignInType {
  /// {@macro amplify_auth_cognito_dart.cognito_sign_in_details_api_based}
  apiBased,

  /// {@macro amplify_auth_cognito_dart.cognito_sign_in_details_hosted_ui}
  hostedUi,
}

/// {@template amplify_auth_cognito_dart.cognito_sign_in_details}
/// The details of how a user logged in.
/// {@endtemplate}
abstract class CognitoSignInDetails extends SignInDetails {
  /// {@macro amplify_auth_cognito_dart.cognito_sign_in_details}
  const CognitoSignInDetails(this.signInType);

  /// {@macro amplify_auth_cognito_dart.cognito_sign_in_details}
  factory CognitoSignInDetails.fromJson(Map<String, Object?> json) {
    final signInType = CognitoSignInType.values.byName(
      json['signInType'] as String,
    );
    switch (signInType) {
      case CognitoSignInType.apiBased:
        return CognitoSignInDetailsApiBased.fromJson(json);
      case CognitoSignInType.hostedUi:
        return CognitoSignInDetailsHostedUi.fromJson(json);
    }
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

  /// {@macro amplify_auth_cognito_dart.cognito_sign_in_type}
  final CognitoSignInType signInType;
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
  }) : super(CognitoSignInType.apiBased);

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
        'signInType': signInType.name,
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
  }) : super(CognitoSignInType.hostedUi);

  /// {@macro amplify_auth_cognito_dart.cognito_sign_in_details_hosted_ui}
  factory CognitoSignInDetailsHostedUi.fromJson(Map<String, Object?> json) =>
      _$CognitoSignInDetailsHostedUiFromJson(json);

  /// The third-party authentication provider, if available.
  final AuthProvider? provider;

  @override
  String get runtimeTypeName => 'CognitoSignInDetailsHostedUi';

  @override
  Map<String, Object?> toJson() => {
        'signInType': signInType.name,
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
