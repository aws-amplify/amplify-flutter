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

import './AuthNextSignUpStep.dart';
import 'package:flutter/foundation.dart';

/// Wraps the result of a sign up operation.
class SignUpResult { 
  /// Indicator of whether the authentication process is complete
  bool isSignUpComplete;

  /// Describes the next step in the registration process
  AuthNextSignUpStep nextStep;

  SignUpResult({@required this.isSignUpComplete, @required this.nextStep}) {
    this.isSignUpComplete = isSignUpComplete;
    this.nextStep = nextStep;
  }
}
