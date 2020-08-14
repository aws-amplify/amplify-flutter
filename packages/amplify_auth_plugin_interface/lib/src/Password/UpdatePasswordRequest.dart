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

class UpdatePasswordRequest {
  String username;
  String newPassword;
  String oldPassword;
  PasswordOptions options;

  UpdatePasswordRequest({this.username, @required this.newPassword, @required this.oldPassword, this.options});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (username != null) {
      pendingRequest['username'] = username;
    }
    pendingRequest['newPassword'] = newPassword;
    pendingRequest['oldPassword'] = oldPassword;
    if (options != null) {
      pendingRequest['options'] = options.serializeAsMap();
    }
    return pendingRequest;
  }
}
