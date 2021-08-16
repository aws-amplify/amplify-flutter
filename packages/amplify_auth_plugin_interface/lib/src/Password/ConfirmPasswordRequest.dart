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

import 'ConfirmResetPasswordOptions.dart';
import 'ConfirmResetPasswordRequest.dart';

/// Encapsulates parameters for a confirm reset password request
@Deprecated('Please use ConfirmResetPasswordRequest instead')
class ConfirmPasswordRequest extends ConfirmResetPasswordRequest {
  String username;
  String newPassword;
  String confirmationCode;
  ConfirmResetPasswordOptions? options;

  /// Default constructor
  ConfirmPasswordRequest({
    required this.username,
    required this.newPassword,
    required this.confirmationCode,
    this.options,
  }) : super(
          username: username,
          newPassword: newPassword,
          confirmationCode: confirmationCode,
          options: options,
        );
}
