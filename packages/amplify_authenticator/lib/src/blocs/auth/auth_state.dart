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

part of 'auth_bloc.dart';

abstract class AuthState {
  const AuthState();
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class AuthLoading extends AuthState {
  const AuthLoading();
}

class AuthLoaded extends AuthState {
  const AuthLoaded(this.config);

  final AmplifyConfig config;
}

class Authenticated extends AuthState {
  const Authenticated();
}

@immutable
class AuthFlow extends AuthState {
  const AuthFlow({required this.screen});

  static const signup = AuthFlow(screen: AuthScreen.signup);
  static const signin = AuthFlow(screen: AuthScreen.signin);
  static const confirmSignup = AuthFlow(screen: AuthScreen.confirmSignup);
  static const confirmSigninMfa = AuthFlow(screen: AuthScreen.confirmSigninMfa);
  static const confirmSigninNewPassword =
      AuthFlow(screen: AuthScreen.confirmSigninNewPassword);
  static const sendCode = AuthFlow(screen: AuthScreen.sendCode);
  static const resetPassword = AuthFlow(screen: AuthScreen.resetPassword);
  static const verifyUser = AuthFlow(screen: AuthScreen.verifyUser);

  final AuthScreen screen;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is AuthFlow && other.screen == screen;

  @override
  int get hashCode => screen.hashCode;
}

class VerificationCodeSent extends AuthFlow {
  const VerificationCodeSent(AuthScreen screen) : super(screen: screen);
}

class AttributeVerificationSent extends AuthFlow {
  const AttributeVerificationSent(this.userAttributeKey)
      : super(screen: AuthScreen.confirmVerifyUser);

  final CognitoUserAttributeKey userAttributeKey;
}

class VerifyUserFlow extends AuthFlow {
  final List<CognitoUserAttributeKey> unverifiedAttributeKeys;

  const VerifyUserFlow({required this.unverifiedAttributeKeys})
      : super(screen: AuthScreen.verifyUser);
}
