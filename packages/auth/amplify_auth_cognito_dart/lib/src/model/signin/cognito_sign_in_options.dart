/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.model.cognito_sign_in_options}
/// Cognito options for `Amplify.Auth.signIn`.
/// {@endtemplate}
class CognitoSignInOptions extends SignInOptions {
  /// {@macro amplify_auth_cognito.model.cognito_sign_in_options}
  const CognitoSignInOptions({this.authFlowType, this.clientMetadata});

  /// Runtime override of the Authentication flow to use for sign in.
  final AuthenticationFlowType? authFlowType;

  /// A map of custom key-value pairs that you can provide as input for certain
  /// custom workflows that this action triggers.
  final Map<String, String>? clientMetadata;

  @override
  Map<String, Object?> serializeAsMap() => {
        if (authFlowType != null) 'authFlowType': authFlowType?.value,
        if (clientMetadata != null) 'clientMetadata': clientMetadata,
      };
}
