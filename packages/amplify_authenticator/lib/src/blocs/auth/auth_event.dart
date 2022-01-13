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

abstract class AuthEvent {
  const AuthEvent();
}

class AuthLoad extends AuthEvent {
  const AuthLoad();
}

class AuthChangeScreen extends AuthEvent {
  final AuthenticatorStep step;

  const AuthChangeScreen(this.step);
}

class AuthSignIn extends AuthEvent {
  final AuthSignInData data;

  const AuthSignIn(this.data);
}

class AuthSignUp extends AuthEvent {
  final AuthSignUpData data;

  const AuthSignUp(this.data);
}

class AuthConfirmSignUp extends AuthEvent {
  final AuthConfirmSignUpData data;

  const AuthConfirmSignUp(this.data);
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
  final AuthConfirmSignInData data;
  final bool rememberDevice;

  const AuthConfirmSignIn(this.data, {required this.rememberDevice});
}

class AuthSetUnverifiedAttributeKeys extends AuthEvent {
  final AuthSetUnverifiedAttributeKeysData data;

  const AuthSetUnverifiedAttributeKeys(this.data);
}

class AuthVerifyUser extends AuthEvent {
  final AuthVerifyUserData data;

  const AuthVerifyUser(this.data);
}

class AuthSkipVerifyUser extends AuthEvent {
  const AuthSkipVerifyUser();
}

class AuthConfirmVerifyUser extends AuthEvent {
  final AuthConfirmVerifyUserData data;

  const AuthConfirmVerifyUser(this.data);
}

class AuthResendSignUpCode extends AuthEvent {
  const AuthResendSignUpCode(this.username);

  final String username;
}
