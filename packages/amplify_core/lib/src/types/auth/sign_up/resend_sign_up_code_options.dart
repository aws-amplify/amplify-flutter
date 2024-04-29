// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@category Auth}
/// {@template amplify_core.auth.resend_sign_up_code_options}
/// The shared resend sign up code options among all Auth plugins.
/// {@endtemplate}
class ResendSignUpCodeOptions
    with
        AWSEquatable<ResendSignUpCodeOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.resend_sign_up_code_options}
  const ResendSignUpCodeOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.auth.sign_up_plugin_options}
  final ResendSignUpCodePluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'ResendSignUpCodeOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// @nodoc
/// {@template amplify_core.auth.sign_up_plugin_options}
/// Plugin-specific options for `Amplify.Auth.resendSignUpCode`.
/// {@endtemplate}
abstract class ResendSignUpCodePluginOptions
    with
        AWSEquatable<ResendSignUpCodePluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.sign_up_plugin_options}
  const ResendSignUpCodePluginOptions();
}
