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

import 'package:amplify_flutter/src/config/auth/login_mechanisms.dart';
import 'package:amplify_flutter/src/config/auth/mfa_types.dart';
import 'package:amplify_flutter/src/config/auth/password_protection_settings.dart';
import 'mfa_configurations.dart';
import 'oauth_config.dart';

part 'auth_block_config.g.dart';

class AuthBlockConfig {
  final OAuthConfig? oAuth;

  final List<LoginMechanisms>? loginMechanisms;

  final List<String>? signupAttributes;

  final PasswordProtectionSettings? passwordProtectionSettings;

  final MfaTypes? mfaTypes;

  final MfaConfiguration? mfaConfiguration;

  final String? authenticationFlowType;

  const AuthBlockConfig({
    this.oAuth,
    this.loginMechanisms,
    this.mfaConfiguration,
    this.passwordProtectionSettings,
    this.signupAttributes,
    this.mfaTypes,
    required this.authenticationFlowType,
  });

  factory AuthBlockConfig.fromJson(Map<String, dynamic> json) =>
      _$AuthBlockConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AuthBlockConfigToJson(this);
}
