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

/// {@template amplify_auth_cognito.model.signup.cognito_sign_up_step}
/// The current step in the Cognito sign up flow.
/// {@endtemplate}
enum CognitoSignUpStep {
  /// The user is successfully registered but requires an additional
  /// confirmation before the sign up is considered complete.
  confirmSignUp('CONFIRM_SIGN_UP_STEP'),

  /// The user is successfully registered and sign up is complete.
  done('DONE');

  /// {@macro amplify_auth_cognito.model.signup.cognito_sign_up_step}
  const CognitoSignUpStep(this.name);

  /// The string value of `this`.
  final String name;
}
