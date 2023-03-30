// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';

const _deprecatedMessage = '''
Use ConfirmSignInOptions instead. If Cognito-specific options are needed, use `pluginOptions`:

ConfirmSignInOptions(
  pluginOptions: CognitoConfirmSignInPluginOptions(
    clientMetadata: {
      'my-key': 'my-value',
    },
  ),
)
''';

/// {@template amplify_auth_cognito.model.cognito_confirm_sign_in_options}
/// Cognito options for `Amplify.Auth.confirmSignIn`.
/// {@endtemplate}
@Deprecated(_deprecatedMessage)
class CognitoConfirmSignInOptions extends ConfirmSignInOptions {
  /// {@macro amplify_auth_cognito.model.cognito_confirm_sign_in_options}
  @Deprecated(_deprecatedMessage)
  const CognitoConfirmSignInOptions({
    Map<String, String>? clientMetadata,
    Map<CognitoUserAttributeKey, String>? userAttributes,
  })  : clientMetadata = clientMetadata ?? const {},
        userAttributes = userAttributes ?? const {};

  /// A map of custom key-value pairs that you can provide as input for certain
  /// custom workflows that this action triggers.
  final Map<String, String> clientMetadata;

  /// User attributes which were marked as required and have not been previously
  /// provided.
  final Map<CognitoUserAttributeKey, String> userAttributes;

  @override
  CognitoConfirmSignInPluginOptions get pluginOptions =>
      CognitoConfirmSignInPluginOptions(
        clientMetadata: clientMetadata,
        userAttributes: userAttributes,
      );

  @override
  List<Object?> get props => [clientMetadata, userAttributes];

  @override
  String get runtimeTypeName => 'CognitoConfirmSignInOptions';
}
