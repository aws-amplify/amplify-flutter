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

import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:flutter/foundation.dart';
import './AWSCognitoUserPoolTokens.dart';
import './AWSCredentials.dart';

/// A Cognito extension of AuthSession
/// 
/// Instantiated when fetchAuthSession is called with [getAWSCredentials] set to true.
/// If a Cognito Identity Pool is configured with unauthenticated access enabled, the 
/// [credentials] and [identityId] will be populated if fetchAuthSession is called
///  prior to user signin. 
/// If fetchAuthSession is called and an Identity Pool is not 
/// configured or is not configured with unauthenticated access enabled, then a
/// [SignedOutException] will be thrown prior to sign in.
class CognitoAuthSession extends AuthSession {
  /// The AWS credentials
  AWSCredentials credentials;

  /// The Cognito UserPool Tokens
  AWSCognitoUserPoolTokens userPoolTokens;

  /// The id of the User in the UserPool
  String userSub;

  /// The identity id
  String identityId;

  // ignore: public_member_api_docs
  CognitoAuthSession({@required isSignedIn, this.credentials, this.userPoolTokens, this.userSub, this.identityId}) : super(isSignedIn: isSignedIn);
  
  // ignore: public_member_api_docs
  CognitoAuthSession.init({@required sessionValues}) {

    this.isSignedIn = sessionValues["isSignedIn"];
    this.identityId = sessionValues["identityId"];

    if (sessionValues.containsKey("userSub")) {
      this.userSub = sessionValues["userSub"];
    }

    if (sessionValues.containsKey("credentials")) {
      this.credentials = AWSCredentials.init(creds: sessionValues["credentials"]);
    }

    if (sessionValues.containsKey("tokens")) {
      var tokenMap = sessionValues["tokens"] as Map;
      if (tokenMap != null) {
        this.userPoolTokens = AWSCognitoUserPoolTokens.init(tokens: sessionValues["tokens"]);
      }
    }
  }
}
