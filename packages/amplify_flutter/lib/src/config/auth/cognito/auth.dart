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

import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:json_annotation/json_annotation.dart';

import 'authentication_flow_type.dart';
import 'oauth.dart';
import 'password_protection_settings.dart';
import 'user_attribute_key.dart';

part 'auth.g.dart';

@amplifySerializable
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

  @override
  Map<String, Object?> toJson() => _$CognitoAuthConfigToJson(this);
}
