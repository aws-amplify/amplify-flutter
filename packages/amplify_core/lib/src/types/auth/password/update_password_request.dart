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

import 'update_password_options.dart';

/// Encapsulates parameters for an update password request
class UpdatePasswordRequest {
  /// The user's desired new password
  String newPassword;

  /// The user's current password
  String oldPassword;

  /// Plugin-specific, advanced options such as information about the client
  UpdatePasswordOptions? options;

  /// Default constructor
  UpdatePasswordRequest(
      {required this.newPassword, required this.oldPassword, this.options});

  /// Serialize the object to a map
  Map<String, dynamic> serializeAsMap() {
    final pendingRequest = <String, dynamic>{
      'newPassword': newPassword,
      'oldPassword': oldPassword,
      if (options != null) 'options': options?.serializeAsMap()
    };
    return pendingRequest;
  }
}
