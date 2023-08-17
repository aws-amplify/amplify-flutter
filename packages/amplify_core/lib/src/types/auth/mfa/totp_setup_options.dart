// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.totp_setup_options}
/// Options for `Amplify.Auth.verifyTotpSetup`.
/// {@endtemplate}
class TotpSetupOptions
    with
        AWSEquatable<TotpSetupOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.totp_setup_options}
  const TotpSetupOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.totp_setup_plugin_options}
  final TotpSetupPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'TotpSetupOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// {@template amplify_core.auth.totp_setup_plugin_options}
/// Plugin-specific options for `Amplify.Auth.setUpTotp`.
/// {@endtemplate}
abstract class TotpSetupPluginOptions
    with
        AWSEquatable<TotpSetupPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.totp_setup_plugin_options}
  const TotpSetupPluginOptions();
}
