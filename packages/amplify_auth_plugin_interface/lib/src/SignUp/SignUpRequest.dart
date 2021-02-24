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

// ignore_for_file: public_member_api_docs

import './SignUpOptions.dart';
import 'package:flutter/foundation.dart';

/// Encapsulates parameters for a confirm sign up operation
class SignUpRequest {
  ///  A login identifier e.g. `tony44`; or an email/phone number, depending on configuration
  String username;
  
  /// The user's password
  String password;

  /// Advanced options such as additional attributes of the user or validation data. 
  SignUpOptions options;

  SignUpRequest({@required this.username, @required this.password, @required this.options});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    pendingRequest['username'] = username;
    pendingRequest['password'] = password;
    if (options != null) {
      pendingRequest['options'] = options.serializeAsMap();
    }
    return pendingRequest;
  }
}
