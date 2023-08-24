// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/enums/authenticator_step.dart';
import 'package:amplify_authenticator/src/models/totp_options.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';

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
  const UnauthenticatedState({required AuthenticatorStep step}) : _step = step;
  final AuthenticatorStep _step;

  AuthenticatorStep get step => _step;

  static const signUp = UnauthenticatedState(step: AuthenticatorStep.signUp);
  static const signIn = UnauthenticatedState(step: AuthenticatorStep.signIn);
  static const confirmSignUp =
      UnauthenticatedState(step: AuthenticatorStep.confirmSignUp);
  static const confirmSignInMfa =
      UnauthenticatedState(step: AuthenticatorStep.confirmSignInMfa);
  static const confirmSignInNewPassword =
      UnauthenticatedState(step: AuthenticatorStep.confirmSignInNewPassword);
  static const confirmSignInWithTotpMfaCode = UnauthenticatedState(
    step: AuthenticatorStep.confirmSignInWithTotpMfaCode,
  );
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
  const VerifyUserFlow({required this.unverifiedAttributeKeys})
      : super(step: AuthenticatorStep.verifyUser);
  final List<CognitoUserAttributeKey> unverifiedAttributeKeys;

  @override
  List<Object?> get props => [step, unverifiedAttributeKeys];

  @override
  String get runtimeTypeName => 'VerifyUserFlow';
}

class ConfirmSignInCustom extends UnauthenticatedState {
  const ConfirmSignInCustom({
    this.publicParameters = const <String, String>{},
  }) : super(step: AuthenticatorStep.confirmSignInCustomAuth);
  final Map<String, String> publicParameters;

  @override
  List<Object?> get props => [step, publicParameters];

  @override
  String get runtimeTypeName => 'ConfirmSignInCustom';
}

class ContinueSignInWithMfaSelection extends UnauthenticatedState {
  const ContinueSignInWithMfaSelection({
    Set<MfaType>? allowedMfaTypes,
  })  : allowedMfaTypes = allowedMfaTypes ?? const {},
        super(step: AuthenticatorStep.continueSignInWithMfaSelection);

  final Set<MfaType> allowedMfaTypes;

  @override
  List<Object?> get props => [step, allowedMfaTypes];

  @override
  String get runtimeTypeName => 'ContinueSignInWithMfaSelection';
}

class ContinueSignInTotpSetup extends UnauthenticatedState {
  const ContinueSignInTotpSetup(this.totpSetupDetails, this.totpSetupUri)
      : super(step: AuthenticatorStep.continueSignInWithTotpSetup);

  static Future<ContinueSignInTotpSetup> setupURI(
    TotpSetupDetails totpSetupDetails,
    TotpOptions? totpOptions,
  ) async {
    final setupUri = totpSetupDetails.getSetupUri(
      appName: totpOptions?.issuer ??
          // TODO(equartey): Update this once we have our own method of getting the app name
          (await PackageInfo.fromPlatform()).appName,
    );

    return ContinueSignInTotpSetup(
      totpSetupDetails,
      setupUri,
    );
  }

  final TotpSetupDetails totpSetupDetails;
  final Uri totpSetupUri;

  @override
  List<Object?> get props => [step, totpSetupDetails];

  @override
  String get runtimeTypeName => 'ContinueSignInTotpSetup';
}
