// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_verify_totp_setup_plugin_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_verify_totp_setup_plugin_options}
/// Cognito options for `Amplify.Auth.verifyTotpSetup`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoVerifyTotpSetupPluginOptions extends VerifyTotpSetupPluginOptions {
  /// {@macro amplify_auth_cognito.model.cognito_verify_totp_setup_plugin_options}
  const CognitoVerifyTotpSetupPluginOptions({
    this.friendlyDeviceName,
  });

  /// {@macro amplify_auth_cognito.model.cognito_verify_totp_setup_plugin_options}
  factory CognitoVerifyTotpSetupPluginOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoVerifyTotpSetupPluginOptionsFromJson(json);

  /// A unique name to help identify the registered TOTP device.
  final String? friendlyDeviceName;

  @override
  List<Object?> get props => [friendlyDeviceName];

  @override
  String get runtimeTypeName => 'CognitoVerifyTotpSetupPluginOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoVerifyTotpSetupPluginOptionsToJson(this);
}
