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

import 'dart:collection';
import 'dart:io' show Platform;
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/material.dart';

/// Holds Cognito User Pool-specific auth tokens. 
///
/// Returned from `Auth.fetchAuthSession()` API in the `CognitoAuthSession` object.
class AWSCognitoUserPoolTokens {
  /// The access token contains scopes and groups and is used to grant access 
  /// to authorized resources.
  String accessToken;

  /// The ID token contains claims about the identity of the authenticated user 
  /// such as name, email, and phone_number.
  String idToken;

  /// The refresh token contains the information necessary to obtain a 
  /// new ID or access token.
  String refreshToken;
  
  // ignore: public_member_api_docs
  AWSCognitoUserPoolTokens.init({@required LinkedHashMap<dynamic, dynamic> tokens}) {
    if (tokens != null) {
      this.accessToken = tokens["accessToken"];
      this.idToken = tokens["idToken"];
      this.refreshToken = tokens["refreshToken"];
    }
  }
}
