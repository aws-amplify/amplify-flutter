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


import './PasswordOptions.dart';
import 'package:flutter/foundation.dart';
// ignore_for_file: public_member_api_docs

/// Encapsulates parameters for a ConfirmPassword operation
class ConfirmPasswordRequest {

  /// A login identifier e.g. `superdog22`; or an email/phone number, depending on configuration
  String username;

  /// The user's desired new password
  String newPassword;

  /// The confirmation code the user received after starting the forgotPassword process
  String confirmationCode;

  /// Advanced options
  PasswordOptions options;

  ConfirmPasswordRequest({@required this.username, @required this.newPassword, @required this.confirmationCode, this.options});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    pendingRequest['username'] = username;
    pendingRequest['newPassword'] = newPassword;
    pendingRequest['confirmationCode'] = confirmationCode;

    if (options != null) {
      pendingRequest['options'] = options.serializeAsMap();
    }
    return pendingRequest;
  }
}
