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

/// {@template amplify_auth_cognito.model.cognito_confirm_sign_up_options}
/// The result of resending a sign up code with Cognito.
/// {@endtemplate}
class CognitoResendSignUpCodeResult extends ResendSignUpCodeResult {
  /// {@macro amplify_auth_cognito.model.cognito_confirm_sign_up_options}
  const CognitoResendSignUpCodeResult(super.codeDeliveryDetails);
}
