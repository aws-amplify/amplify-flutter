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

import 'package:amplify_core/amplify_core.dart';
import './AWSCognitoUserPoolTokens.dart';
import './AWSCredentials.dart';

class CognitoAuthSession extends AuthSession {
  AWSCredentials? credentials;
  AWSCognitoUserPoolTokens? userPoolTokens;
  String? userSub;
  String? identityId;

  CognitoAuthSession(
      {required isSignedIn,
      this.credentials,
      this.userPoolTokens,
      this.userSub,
      this.identityId})
      : super(isSignedIn: isSignedIn);

  CognitoAuthSession.init({required sessionValues})
      : super(isSignedIn: sessionValues["isSignedIn"]) {
    this.identityId = sessionValues["identityId"];

    if (sessionValues.containsKey("userSub")) {
      this.userSub = sessionValues["userSub"];
    }

    if (sessionValues.containsKey("credentials")) {
      this.credentials =
          AWSCredentials.init(creds: sessionValues["credentials"]);
    }

    if (sessionValues.containsKey("tokens")) {
      if (sessionValues["tokens"] != null) {
        this.userPoolTokens =
            AWSCognitoUserPoolTokens.init(tokens: sessionValues["tokens"]);
      }
    }
  }
}
