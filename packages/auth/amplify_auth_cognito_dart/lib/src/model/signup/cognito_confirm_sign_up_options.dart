// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

part 'cognito_confirm_sign_up_options.g.dart';

const _deprecatedMessage = '''
Use ConfirmSignUpOptions instead. If Cognito-specific options are needed, use `pluginOptions`:

ConfirmSignUpOptions(
  pluginOptions: CognitoConfirmSignUpPluginOptions(
    clientMetadata: {
      'my-key': 'my-value',
    },
  ),
)
''';

/// {@template amplify_auth_cognito_dart.cognito_confirm_sign_up_options}
/// Options passed to `Amplify.Auth.confirmSignUp`.
/// {@endtemplate}
@zAmplifySerializable
@Deprecated(_deprecatedMessage)
class CognitoConfirmSignUpOptions extends ConfirmSignUpOptions {
  /// {@macro amplify_auth_cognito_dart.cognito_confirm_sign_up_options}
  @Deprecated(_deprecatedMessage)
  const CognitoConfirmSignUpOptions({
    this.clientMetadata = const {},
  });

  /// {@macro amplify_auth_cognito_dart.cognito_confirm_sign_up_options}
  @Deprecated(_deprecatedMessage)
  factory CognitoConfirmSignUpOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoConfirmSignUpOptionsFromJson(json);

  /// {@macro amplify_auth_cognito_dart.cognito_confirm_sign_up_plugin_options.client_metadata}
  final Map<String, String> clientMetadata;

  @override
  CognitoConfirmSignUpPluginOptions get pluginOptions =>
      CognitoConfirmSignUpPluginOptions(clientMetadata: clientMetadata);

  @override
  String get runtimeTypeName => 'CognitoConfirmSignUpOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoConfirmSignUpOptionsToJson(this);
}
