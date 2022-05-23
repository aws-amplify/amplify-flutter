/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

/// {@template amplify_auth_cognito.cognito_resend_user_attribute_confirmation_code_options}
/// Cognito extension of [ResendUserAttributeConfirmationCodeOptions] to add the
/// platform specific fields.
/// {@endtemplate}
class CognitoResendUserAttributeConfirmationCodeOptions
    extends ResendUserAttributeConfirmationCodeOptions {
  /// {@macro amplify_auth_cognito.cognito_resend_user_attribute_confirmation_code_options}
  const CognitoResendUserAttributeConfirmationCodeOptions({
    this.clientMetadata,
  });

  /// A map of custom key-value pairs that you can provide as input for certain
  /// custom workflows that this action triggers.
  final Map<String, String>? clientMetadata;

  @override
  Map<String, Object?> serializeAsMap() => {
        if (clientMetadata != null) 'clientMetadata': clientMetadata,
      };
}
