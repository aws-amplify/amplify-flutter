// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.verify_totp_setup_options}
/// Options for `Amplify.Auth.verifyTotpSetup`.
/// {@endtemplate}
class VerifyTotpSetupOptions
    with
        AWSEquatable<VerifyTotpSetupOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.verify_totp_setup_options}
  const VerifyTotpSetupOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.verify_totp_setup_plugin_options}
  final VerifyTotpSetupPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'VerifyTotpSetupOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// {@template amplify_core.auth.verify_totp_setup_plugin_options}
/// Plugin-specific options for `Amplify.Auth.verifyTotpSetup`.
/// {@endtemplate}
abstract class VerifyTotpSetupPluginOptions
    with
        AWSEquatable<VerifyTotpSetupPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.verify_totp_setup_plugin_options}
  const VerifyTotpSetupPluginOptions();
}
