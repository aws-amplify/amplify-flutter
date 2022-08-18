/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/src/enums/authenticator_step.dart';
import 'package:flutter/foundation.dart';

abstract class AuthState {
  const AuthState();
}

class LoadingState extends AuthState {
  const LoadingState();

  AuthenticatorStep get step => AuthenticatorStep.loading;
}

class AuthenticatedState extends AuthState {
  const AuthenticatedState();
}

@immutable
class UnauthenticatedState extends AuthState {
  final AuthenticatorStep _step;

  /// A flag to indicate if the current state is pending user
  /// verification.
  ///
  /// Indicates that either Sign In OR Confirm Sign In has completed,
  /// but it is currently unknown if the user needs to be taken to
  /// the `veryUser` step or to an authenticated state.
  final bool pendingVerification;

  const UnauthenticatedState({
    required AuthenticatorStep step,
    this.pendingVerification = false,
  }) : _step = step;

  AuthenticatorStep get step => _step;

  static const signUp = UnauthenticatedState(step: AuthenticatorStep.signUp);
  static const signIn = UnauthenticatedState(step: AuthenticatorStep.signIn);
  static const confirmSignUp =
      UnauthenticatedState(step: AuthenticatorStep.confirmSignUp);
  static const confirmSignInMfa =
      UnauthenticatedState(step: AuthenticatorStep.confirmSignInMfa);
  static const confirmSignInNewPassword =
      UnauthenticatedState(step: AuthenticatorStep.confirmSignInNewPassword);
  static const resetPassword =
      UnauthenticatedState(step: AuthenticatorStep.resetPassword);
  static const confirmResetPassword =
      UnauthenticatedState(step: AuthenticatorStep.confirmResetPassword);

  static const verifyUser =
      UnauthenticatedState(step: AuthenticatorStep.verifyUser);

  /// Returns the current state, with `pendingVerification` set to true.
  ///
  /// Should be used with signIn or confirmSignIn only.
  UnauthenticatedState withPendingVerification() {
    return UnauthenticatedState(
      step: step,
      pendingVerification: true,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnauthenticatedState && other.step == step;

  @override
  int get hashCode => step.hashCode;
}

class AttributeVerificationSent extends UnauthenticatedState {
  const AttributeVerificationSent(this.userAttributeKey)
      : super(step: AuthenticatorStep.confirmVerifyUser);

  final CognitoUserAttributeKey userAttributeKey;
}

class VerifyUserFlow extends UnauthenticatedState {
  final List<CognitoUserAttributeKey> unverifiedAttributeKeys;

  const VerifyUserFlow({required this.unverifiedAttributeKeys})
      : super(step: AuthenticatorStep.verifyUser);
}

class ConfirmSignInCustom extends UnauthenticatedState {
  final Map<String, String> publicParameters;

  const ConfirmSignInCustom({
    this.publicParameters = const <String, String>{},
  }) : super(step: AuthenticatorStep.confirmSignInCustomAuth);
}
