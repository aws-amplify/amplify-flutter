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

  AuthenticatorStep get step;
}

class LoadingState extends AuthState {
  const LoadingState();

  @override
  AuthenticatorStep get step => AuthenticatorStep.loading;
}

class AuthenticatedState extends AuthState {
  const AuthenticatedState();

  @override
  AuthenticatorStep get step => AuthenticatorStep.authenticated;
}

@immutable
class UnauthenticatedState extends AuthState {
  final AuthenticatorStep _step;
  const UnauthenticatedState({required AuthenticatorStep step}) : _step = step;

  @override
  AuthenticatorStep get step => _step;

  static const signup = UnauthenticatedState(step: AuthenticatorStep.signup);
  static const signin = UnauthenticatedState(step: AuthenticatorStep.signin);
  static const confirmSignup =
      UnauthenticatedState(step: AuthenticatorStep.confirmSignup);
  static const confirmSigninMfa =
      UnauthenticatedState(step: AuthenticatorStep.confirmSigninMfa);
  static const confirmSigninNewPassword =
      UnauthenticatedState(step: AuthenticatorStep.confirmSigninNewPassword);
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
