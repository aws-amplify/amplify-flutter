// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth.g.dart';

@zAmplifySerializable
@CognitoUserAttributeKeyConverter()
class CognitoAuthConfig with AWSEquatable<CognitoAuthConfig>, AWSSerializable {
  const CognitoAuthConfig({
    this.oAuth,
    this.authenticationFlowType,
    this.socialProviders,
    this.usernameAttributes,
    this.signupAttributes,
    this.passwordProtectionSettings,
    this.mfaConfiguration,
    this.mfaTypes,
    this.verificationMechanisms,
  });

  @JsonKey(name: 'OAuth')
  final CognitoOAuthConfig? oAuth;

  @JsonKey(
    unknownEnumValue: JsonKey.nullForUndefinedEnumValue,
  )
  final AuthenticationFlowType? authenticationFlowType;
  final List<SocialProvider>? socialProviders;
  final List<CognitoUserAttributeKey>? usernameAttributes;
  final List<CognitoUserAttributeKey>? signupAttributes;
  final PasswordProtectionSettings? passwordProtectionSettings;
  final MfaConfiguration? mfaConfiguration;
  final List<MfaType>? mfaTypes;
  final List<CognitoUserAttributeKey>? verificationMechanisms;

  @override
  List<Object?> get props => [
        oAuth,
        authenticationFlowType,
        socialProviders,
        usernameAttributes,
        signupAttributes,
        passwordProtectionSettings,
        mfaConfiguration,
        mfaTypes,
        verificationMechanisms,
      ];

  factory CognitoAuthConfig.fromJson(Map<String, Object?> json) =>
      _$CognitoAuthConfigFromJson(json);

  CognitoAuthConfig copyWith({
    CognitoOAuthConfig? oAuth,
    AuthenticationFlowType? authenticationFlowType,
    List<SocialProvider>? socialProviders,
    List<CognitoUserAttributeKey>? usernameAttributes,
    List<CognitoUserAttributeKey>? signupAttributes,
    PasswordProtectionSettings? passwordProtectionSettings,
    MfaConfiguration? mfaConfiguration,
    List<MfaType>? mfaTypes,
    List<CognitoUserAttributeKey>? verificationMechanisms,
  }) {
    return CognitoAuthConfig(
      oAuth: oAuth ?? this.oAuth,
      authenticationFlowType:
          authenticationFlowType ?? this.authenticationFlowType,
      socialProviders: socialProviders ??
          (this.socialProviders == null
              ? null
              : List.of(this.socialProviders!)),
      usernameAttributes: usernameAttributes ??
          (this.usernameAttributes == null
              ? null
              : List.of(this.usernameAttributes!)),
      signupAttributes: signupAttributes ??
          (this.signupAttributes == null
              ? null
              : List.of(this.signupAttributes!)),
      passwordProtectionSettings:
          passwordProtectionSettings ?? this.passwordProtectionSettings,
      mfaConfiguration: mfaConfiguration ?? this.mfaConfiguration,
      mfaTypes:
          mfaTypes ?? (this.mfaTypes == null ? null : List.of(this.mfaTypes!)),
      verificationMechanisms: verificationMechanisms ??
          (this.verificationMechanisms == null
              ? null
              : List.of(this.verificationMechanisms!)),
    );
  }

  @override
  Map<String, Object?> toJson() => _$CognitoAuthConfigToJson(this);
}
