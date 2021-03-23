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

/// A Cognito extension of SignInResult
/// which will include a [isSignedIn] flag and a [nextStep] detailing the 
/// next step in the sign in process (if any). 
class CognitoSignInResult extends SignInResult {

  // ignore: public_member_api_docs
  CognitoSignInResult({nextStep, isSignedIn}) : super(isSignedIn: isSignedIn, nextStep: nextStep);
}
