// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'auth_bloc.dart';

abstract class AuthEvent {
  const AuthEvent();
}

class AuthLoad extends AuthEvent {
  const AuthLoad();
}

class AuthChangeScreen extends AuthEvent {
  const AuthChangeScreen(this.step);
  final AuthenticatorStep step;
}

class AuthSignIn extends AuthEvent {
  const AuthSignIn(this.data);
  final AuthSignInData data;
}

class AuthSignUp extends AuthEvent {
  const AuthSignUp(this.data);
  final AuthSignUpData data;
}

class AuthConfirmSignUp extends AuthEvent {
  const AuthConfirmSignUp(this.data);
  final AuthConfirmSignUpData data;
}

class AuthSignOut extends AuthEvent {
  const AuthSignOut();
}

class AuthExceptionEvent extends AuthEvent {
  const AuthExceptionEvent();
}

class AuthResetPassword extends AuthEvent {
  const AuthResetPassword(this.data);

  final AuthResetPasswordData data;
}

class AuthConfirmResetPassword extends AuthEvent {
  const AuthConfirmResetPassword(this.data);

  final AuthConfirmResetPasswordData data;
}

class AuthUpdatePassword extends AuthEvent {
  const AuthUpdatePassword(this.data);

  final AuthUpdatePasswordData data;
}

class AuthConfirmSignIn extends AuthEvent {
  const AuthConfirmSignIn(this.data, {this.rememberDevice = false});
  final AuthConfirmSignInData data;
  final bool rememberDevice;
}

class AuthSetUnverifiedAttributeKeys extends AuthEvent {
  const AuthSetUnverifiedAttributeKeys(this.data);
  final AuthSetUnverifiedAttributeKeysData data;
}

class AuthVerifyUser extends AuthEvent {
  const AuthVerifyUser(this.data);
  final AuthVerifyUserData data;
}

class AuthSkipVerifyUser extends AuthEvent {
  const AuthSkipVerifyUser();
}

class AuthConfirmVerifyUser extends AuthEvent {
  const AuthConfirmVerifyUser(this.data);
  final AuthConfirmVerifyUserData data;
}

class AuthResendSignUpCode extends AuthEvent {
  const AuthResendSignUpCode(this.username);

  final String username;
}
