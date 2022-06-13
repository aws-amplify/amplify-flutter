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

/// {@template amplify_auth_cognito.model.cognito_session_options}
/// Cognito options for `Amplify.Auth.fetchAuthSession`.
/// {@endtemplate}
class CognitoSessionOptions extends AuthSessionOptions {
  /// {@macro amplify_auth_cognito.model.cognito_session_options}
  const CognitoSessionOptions({
    this.getAWSCredentials = false,
  });

  /// Whether to retrieve AWS credentials as part of the session fetching.
  ///
  /// If no AWS credentials are currently present, and this is `true`, a new
  /// set of temporary credentials will be requested using the registered
  /// Cognito Identity Pool.
  ///
  /// Defaults to `false`.
  final bool getAWSCredentials;

  @override
  Map<String, Object?> serializeAsMap() => {
        'getAWSCredentials': getAWSCredentials,
      };
}
