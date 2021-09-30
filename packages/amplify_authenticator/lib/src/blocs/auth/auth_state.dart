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

class Authenticated extends AuthState {
  const Authenticated();
}

class AuthFlow extends AuthState {
  const AuthFlow({required this.screen});

  const AuthFlow.signup() : screen = AuthScreen.signup;
  const AuthFlow.signin() : screen = AuthScreen.signin;
  const AuthFlow.confirmSignup() : screen = AuthScreen.confirmSignup;
  const AuthFlow.confirmSigninMfa() : screen = AuthScreen.confirmSigninMfa;
  const AuthFlow.confirmSigninNewPassword()
      : screen = AuthScreen.confirmSigninNewPassword;
  const AuthFlow.sendCode() : screen = AuthScreen.sendCode;
  const AuthFlow.resetPassword() : screen = AuthScreen.resetPassword;
  const AuthFlow.verifyUser() : screen = AuthScreen.verifyUser;
  const AuthFlow.confirmVerifyUser() : screen = AuthScreen.confirmVerifyUser;

  final AuthScreen screen;
}

class VerificationCodeSent extends AuthFlow {
  const VerificationCodeSent(AuthScreen screen) : super(screen: screen);
}

class VerifyUserFlow extends AuthFlow {
  final List<String> unverifiedAttributeKeys;

  const VerifyUserFlow({required this.unverifiedAttributeKeys})
      : super(screen: AuthScreen.verifyUser);
}
