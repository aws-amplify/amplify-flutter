// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

part 'cognito_resend_sign_up_code_options.g.dart';

const _deprecatedMessage = '''
Use ResendSignUpCodeOptions instead. If Cognito-specific options are needed, use `pluginOptions`:

ResendSignUpCodeOptions(
  pluginOptions: CognitoResendSignUpCodePluginOptions(
    clientMetadata: {
      'my-key': 'my-value',
    },
  ),
)
''';

/// {@template amplify_auth_cognito.cognito_resend_sign_up_code_options}
/// Cognito extension of [ResendSignUpCodeOptions] to add the
/// platform-specific fields.
/// {@endtemplate}
@zAmplifySerializable
@Deprecated(_deprecatedMessage)
class CognitoResendSignUpCodeOptions extends ResendSignUpCodeOptions {
  /// {@macro amplify_auth_cognito.cognito_resend_sign_up_code_options}
  @Deprecated(_deprecatedMessage)
  const CognitoResendSignUpCodeOptions({
    this.clientMetadata = const {},
  });

  /// {@macro amplify_auth_cognito_dart.model.cognito_resend_sign_up_code_plugin_options.client_metadata}
  final Map<String, String> clientMetadata;

  @override
  CognitoResendSignUpCodePluginOptions get pluginOptions =>
      CognitoResendSignUpCodePluginOptions(clientMetadata: clientMetadata);

  @override
  String get runtimeTypeName => 'CognitoResendSignUpCodeOptions';
}
