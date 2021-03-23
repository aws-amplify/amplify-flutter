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

import './SignInOptions.dart';

/// Encapsulates parameters for a sign in operation
class SignInRequest {
  /// A login identifier e.g. `tony44`; or an email/phone number, depending on configuration.
  /// May be omitted or null when using custom auth.
  String username;

  /// User's password for normal sign-up. May be omitted or null if custom auth or
  /// password-less configurations are in use.
  String password;

  /// Advanced options such as a map of auth information for custom auth,
  SignInOptions options;
  
  SignInRequest({this.username, this.password, this.options});
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = <String, dynamic>{};
    if (username != null) {
      pendingRequest['username'] = username;
    }
    if (password != null) {
      pendingRequest['password'] = password;
    }
    if (options != null) {
      pendingRequest['options'] = options;
    }
    return pendingRequest;
  }
}