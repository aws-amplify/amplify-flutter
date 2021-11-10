/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_flutter/src/config/auth/aws_cognito_social_providers.dart';
import 'package:amplify_flutter/src/config/auth/aws_cognito_username_attributes.dart';
import 'package:amplify_flutter/src/config/auth/mfa_types.dart';
import 'package:amplify_flutter/src/config/auth/password_protection_settings.dart';
import 'mfa_configurations.dart';
import 'oauth_config.dart';

part 'auth_block_config.g.dart';

class AuthBlockConfig {
  final String? authenticationFlowType;

  final OAuthConfig? oAuth;

  final List<UsernameAttributes>? usernameAttributes;

  final List<SocialProviders>? socialProviders;

  final List<String>? signupAttributes;

  final PasswordProtectionSettings? passwordProtectionSettings;

  final List<MfaTypes>? mfaTypes;

  final MfaConfiguration? mfaConfiguration;

  final List<String>? verificationMechanisms;

  const AuthBlockConfig({
    required this.authenticationFlowType,
    this.oAuth,
    this.usernameAttributes,
    this.socialProviders,
    this.mfaConfiguration,
    this.passwordProtectionSettings,
    this.signupAttributes,
    this.mfaTypes,
    this.verificationMechanisms,
  });

  factory AuthBlockConfig.fromJson(Map<String, dynamic> json) =>
      _$AuthBlockConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AuthBlockConfigToJson(this);
}
