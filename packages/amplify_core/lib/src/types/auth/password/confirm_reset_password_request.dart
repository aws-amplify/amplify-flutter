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

/// {@template amplify_core.confirm_reset_password_request}
/// Encapsulates parameters for a confirm reset password request.
/// {@endtemplate}
class ConfirmResetPasswordRequest {
  /// A login identifier or an email/phone number, depending on configuration
  String username;

  /// The user's desired new password
  String newPassword;

  /// The confirmation code the user received after starting the reset password process
  String confirmationCode;

  /// Plugin-specific, advanced options such as information about the client
  ConfirmResetPasswordOptions? options;

  /// {@macro amplify_core.confirm_reset_password_request}
  ConfirmResetPasswordRequest({
    required this.username,
    required this.newPassword,
    required this.confirmationCode,
    this.options,
  });

  /// Serialize the object to a map
  Map<String, Object?> serializeAsMap() => {
        'username': username,
        'newPassword': newPassword,
        'confirmationCode': confirmationCode,
        if (options != null) 'options': options?.serializeAsMap()
      };
}
