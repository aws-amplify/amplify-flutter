// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

part 'cognito_sign_in_with_web_ui_options.g.dart';

const _deprecatedMessage = '''
Use SignInWithWebUIOptions instead. If Cognito-specific options are needed, use `pluginOptions`:

SignInWithWebUIOptions(
  pluginOptions: CognitoSignInWithWebUIPluginOptions(
    isPreferPrivateSession: true,
  ),
)
''';

/// {@template amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options}
/// Cognito options for `Amplify.Auth.signInWithWebUI`.
/// {@endtemplate}
@zAmplifySerializable
@Deprecated(_deprecatedMessage)
class CognitoSignInWithWebUIOptions extends SignInWithWebUIOptions {
  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options}
  @Deprecated(_deprecatedMessage)
  const CognitoSignInWithWebUIOptions({
    this.isPreferPrivateSession = false,
    this.browserPackageName,
  });

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options}
  @Deprecated(_deprecatedMessage)
  factory CognitoSignInWithWebUIOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoSignInWithWebUIOptionsFromJson(json);

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.private_session}
  final bool isPreferPrivateSession;

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.browser_package_name}
  final String? browserPackageName;

  @override
  CognitoSignInWithWebUIPluginOptions get pluginOptions =>
      CognitoSignInWithWebUIPluginOptions(
        isPreferPrivateSession: isPreferPrivateSession,
        browserPackageName: browserPackageName,
      );

  @override
  String get runtimeTypeName => 'CognitoSignInWithWebUIOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoSignInWithWebUIOptionsToJson(this);
}
