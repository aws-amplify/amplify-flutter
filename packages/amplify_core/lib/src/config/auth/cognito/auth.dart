//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

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
    @Deprecated('Use usernameAttributes instead') this.loginMechanism,
    @Deprecated('Use usernameAttributes instead') this.loginMechanisms,
  });

  @JsonKey(name: 'OAuth')
  final CognitoOAuthConfig? oAuth;

  @JsonKey(
    unknownEnumValue: JsonKey.nullForUndefinedEnumValue,
  )
  final AuthenticationFlowType? authenticationFlowType;
  final List<SocialProvider>? socialProviders;
  final List<CognitoUserAttributeKey>? loginMechanism;
  final List<CognitoUserAttributeKey>? loginMechanisms;
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
        loginMechanism,
        loginMechanisms,
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
    List<CognitoUserAttributeKey>? loginMechanism,
    List<CognitoUserAttributeKey>? loginMechanisms,
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
      loginMechanism: loginMechanism ??
          (this.loginMechanism == null ? null : List.of(this.loginMechanism!)),
      loginMechanisms: loginMechanisms ??
          (this.loginMechanisms == null
              ? null
              : List.of(this.loginMechanisms!)),
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
