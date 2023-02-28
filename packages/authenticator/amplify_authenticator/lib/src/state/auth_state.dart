// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/enums/authenticator_step.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';

abstract class AuthState {
  const AuthState();
}

class LoadingState extends AuthState with AWSDebuggable {
  const LoadingState();

  AuthenticatorStep get step => AuthenticatorStep.loading;

  @override
  String get runtimeTypeName => 'LoadingState';
}

class AuthenticatedState extends AuthState with AWSDebuggable {
  const AuthenticatedState();

  @override
  String get runtimeTypeName => 'AuthenticatedState';
}

@immutable
class UnauthenticatedState extends AuthState
    with AWSEquatable<UnauthenticatedState>, AWSDebuggable {
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

  @override
  List<Object?> get props => [step];

  @override
  String get runtimeTypeName => 'UnauthenticatedState';
}

class AttributeVerificationSent extends UnauthenticatedState {
  const AttributeVerificationSent(this.userAttributeKey)
      : super(step: AuthenticatorStep.confirmVerifyUser);

  final CognitoUserAttributeKey userAttributeKey;

  @override
  List<Object?> get props => [step, userAttributeKey];

  @override
  String get runtimeTypeName => 'AttributeVerificationSent';
}

class VerifyUserFlow extends UnauthenticatedState {
  final List<CognitoUserAttributeKey> unverifiedAttributeKeys;

  const VerifyUserFlow({required this.unverifiedAttributeKeys})
      : super(step: AuthenticatorStep.verifyUser);

  @override
  List<Object?> get props => [step, unverifiedAttributeKeys];

  @override
  String get runtimeTypeName => 'VerifyUserFlow';
}

class ConfirmSignInCustom extends UnauthenticatedState {
  final Map<String, String> publicParameters;

  const ConfirmSignInCustom({
    this.publicParameters = const <String, String>{},
  }) : super(step: AuthenticatorStep.confirmSignInCustomAuth);

  @override
  List<Object?> get props => [step, publicParameters];

  @override
  String get runtimeTypeName => 'ConfirmSignInCustom';
}
