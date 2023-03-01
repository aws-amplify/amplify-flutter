// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';

/// {@template amplify_auth_cognito.sign_out_state_type}
/// Discrete state types of the Sign Out state machine.
/// {@endtemplate}
enum SignOutStateType {
  /// {@macro amplify_auth_cognito.sign_out_idle}
  idle,

  /// {@macro amplify_auth_cognito.sign_out_signing_out}
  signingOut,

  /// {@macro amplify_auth_cognito.sign_out_partial_failure}
  partialFailure,

  /// {@macro amplify_auth_cognito.sign_out_failure}
  failure,

  /// {@macro amplify_auth_cognito.sign_out_success}
  success,
}

/// {@template amplify_auth_cognito.sign_out_state}
/// Discrete states of the Sign Out state machine.
/// {@endtemplate}
abstract class SignOutState extends AuthState<SignOutStateType> {
  const SignOutState._();

  /// {@macro amplify_auth_cognito.sign_out_idle}
  const factory SignOutState.idle() = SignOutIdle;

  /// {@macro amplify_auth_cognito.sign_out_signing_out}
  const factory SignOutState.signingOut() = SignOutSigningOut;

  /// {@macro amplify_auth_cognito.sign_out_partial_failure}
  const factory SignOutState.partialFailure({
    HostedUiException? hostedUiException,
    GlobalSignOutException? globalSignOutException,
    RevokeTokenException? revokeTokenException,
  }) = SignOutPartialFailure;

  /// {@macro amplify_auth_cognito.sign_out_failure}
  const factory SignOutState.failure(AuthException exception) = SignOutFailure;

  /// {@macro amplify_auth_cognito.sign_out_success}
  const factory SignOutState.success() = SignOutSuccess;

  @override
  String get runtimeTypeName => 'SignOutState';
}

/// {@template amplify_auth_cognito.sign_out_idle}
/// The state machine is not busy and can initiate a sign out.
/// {@endtemplate}
class SignOutIdle extends SignOutState {
  /// {@macro amplify_auth_cognito.sign_out_idle}
  const SignOutIdle() : super._();

  @override
  List<Object?> get props => const [];

  @override
  SignOutStateType get type => SignOutStateType.idle;
}

/// {@template amplify_auth_cognito.sign_out_signing_out}
/// The state machine is busy signing out.
/// {@endtemplate}
class SignOutSigningOut extends SignOutState {
  /// {@macro amplify_auth_cognito.sign_out_signing_out}
  const SignOutSigningOut() : super._();

  @override
  List<Object?> get props => const [];

  @override
  SignOutStateType get type => SignOutStateType.signingOut;
}

/// {@template amplify_auth_cognito.sign_out_partial_failure}
/// The sign out flow partially failed.
/// {@endtemplate}
class SignOutPartialFailure extends SignOutState {
  /// {@macro amplify_auth_cognito.sign_out_partial_failure}
  const SignOutPartialFailure({
    this.hostedUiException,
    this.globalSignOutException,
    this.revokeTokenException,
  }) : super._();

  /// The exception that occurred during Hosted UI sign out.
  final HostedUiException? hostedUiException;

  /// The exception that occurred during global sign out.
  final GlobalSignOutException? globalSignOutException;

  /// The exception that occurred while revoking the token.
  final RevokeTokenException? revokeTokenException;

  @override
  List<Object?> get props => [
        hostedUiException,
        globalSignOutException,
        revokeTokenException,
      ];

  @override
  SignOutStateType get type => SignOutStateType.partialFailure;
}

/// {@template amplify_auth_cognito.sign_out_failure}
/// The sign out flow failed unrecoverably with [exception].
/// {@endtemplate}
class SignOutFailure extends SignOutState {
  /// {@macro amplify_auth_cognito.sign_out_failure}
  const SignOutFailure(this.exception) : super._();

  /// The exception which triggered the failure.
  final Exception exception;

  @override
  List<Object?> get props => [exception];

  @override
  SignOutStateType get type => SignOutStateType.failure;
}

/// {@template amplify_auth_cognito.sign_out_success}
/// The sign out flow completed successfully.
/// {@endtemplate}
class SignOutSuccess extends SignOutState {
  /// {@macro amplify_auth_cognito.sign_out_success}
  const SignOutSuccess() : super._();

  @override
  List<Object?> get props => const [];

  @override
  SignOutStateType get type => SignOutStateType.success;
}
