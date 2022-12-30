// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_auth_cognito.model.cognito_user_attribute_step}
/// The current step in the Cognito update attribute flow.
/// {@endtemplate}
enum CognitoUpdateUserAttributeStep {
  /// The attribute update needs confirmation before it is complete.
  confirmAttribute('CONFIRM_ATTRIBUTE_WITH_CODE'),

  /// The attribute update is complete.
  done('DONE');

  /// {@macro amplify_auth_cognito.model.cognito_user_attribute_step}
  const CognitoUpdateUserAttributeStep(this.value);

  /// The string value of `this`.
  final String value;
}
