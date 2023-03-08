// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.resend_sign_up_code_options}
/// The shared resend sign up code options among all Auth plugins.
/// {@endtemplate}
abstract class ResendSignUpCodeOptions
    with
        AWSEquatable<ResendSignUpCodeOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.resend_sign_up_code_options}
  const factory ResendSignUpCodeOptions({
    ResendSignUpCodePluginOptions? pluginOptions,
  }) = _ResendSignUpCodeOptions;

  /// {@macro amplify_core.auth.resend_sign_up_code_options}
  const ResendSignUpCodeOptions.base();

  /// {@macro amplify_core.auth.sign_up_plugin_options}
  ResendSignUpCodePluginOptions? get pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @Deprecated('Use toJson instead')
  Map<String, Object?> serializeAsMap() => toJson();

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

class _ResendSignUpCodeOptions extends ResendSignUpCodeOptions {
  const _ResendSignUpCodeOptions({
    this.pluginOptions,
  }) : super.base();

  @override
  final ResendSignUpCodePluginOptions? pluginOptions;

  @override
  String get runtimeTypeName => 'ResendSignUpCodeOptions';
}

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
