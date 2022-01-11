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
import 'package:amplify_authenticator/src/enums/auth_screen.dart';
import 'package:flutter/foundation.dart';

abstract class AuthenticatorState {
  const AuthenticatorState();

  AuthScreen? get screen => null;
  bool get isLoading => false;
  bool get isAuthenticated => false;
}

class LoadingState extends AuthenticatorState {
  const LoadingState();

  @override
  bool get isLoading => true;
}

class AuthenticatedState extends AuthenticatorState {
  const AuthenticatedState();

  @override
  bool get isAuthenticated => true;
}

@immutable
class UnauthenticatedState extends AuthenticatorState {
  final AuthScreen _screen;
  const UnauthenticatedState({required AuthScreen screen}) : _screen = screen;

  @override
  bool get isAuthenticated => false;

  @override
  AuthScreen get screen => _screen;

  static const signup = UnauthenticatedState(screen: AuthScreen.signup);
  static const signin = UnauthenticatedState(screen: AuthScreen.signin);
  static const confirmSignup =
      UnauthenticatedState(screen: AuthScreen.confirmSignup);
  static const confirmSigninMfa =
      UnauthenticatedState(screen: AuthScreen.confirmSigninMfa);
  static const confirmSigninNewPassword =
      UnauthenticatedState(screen: AuthScreen.confirmSigninNewPassword);
  static const resetPassword =
      UnauthenticatedState(screen: AuthScreen.resetPassword);
  static const confirmResetPassword =
      UnauthenticatedState(screen: AuthScreen.confirmResetPassword);
  static const verifyUser = UnauthenticatedState(screen: AuthScreen.verifyUser);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnauthenticatedState && other.screen == screen;

  @override
  int get hashCode => screen.hashCode;
}

class AttributeVerificationSent extends UnauthenticatedState {
  const AttributeVerificationSent(this.userAttributeKey)
      : super(screen: AuthScreen.confirmVerifyUser);

  final CognitoUserAttributeKey userAttributeKey;
}

class VerifyUserFlow extends UnauthenticatedState {
  final List<CognitoUserAttributeKey> unverifiedAttributeKeys;

  const VerifyUserFlow({required this.unverifiedAttributeKeys})
      : super(screen: AuthScreen.verifyUser);
}
