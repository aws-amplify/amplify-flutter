// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.model.cognito_confirm_sign_up_options}
/// The result of resending a sign up code with Cognito.
/// {@endtemplate}
class CognitoResendSignUpCodeResult extends ResendSignUpCodeResult {
  /// {@macro amplify_auth_cognito.model.cognito_confirm_sign_up_options}
  const CognitoResendSignUpCodeResult(super.codeDeliveryDetails);
}
