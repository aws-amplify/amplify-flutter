// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// {@template amplify_auth_cognito.model.cognito_user_attribute_step}
/// The current step in the Cognito update attribute flow.
/// {@endtemplate}
enum CognitoUpdateUserAttributeStep {
  /// The attribute update needs confirmation before it is complete.
  confirmAttribute('CONFIRM_ATTRIBUTE_WITH_CODE'),

  /// The attribute update is complete.
  done('DONE');

  /// {@macro amplify_auth_cognito.model.cognito_user_attribute_step}
  const CognitoUpdateUserAttributeStep(this.name);

  /// The string value of `this`.
  final String name;
}
