// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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

  const UnauthenticatedState({required AuthenticatorStep step}) : _step = step;

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

/// A state that indicates that there is a check to
/// determine the user's verification state in progress.
///
/// This indicates that either Sign In OR Confirm Sign In
/// has completed, but it is currently unknown if the user needs
/// to be taken to the `veryUser` step or to an authenticated state
/// because the call to fetch user attributes is pending.
class PendingVerificationCheckState extends UnauthenticatedState {
  const PendingVerificationCheckState({
    required super.step,
  });
}
