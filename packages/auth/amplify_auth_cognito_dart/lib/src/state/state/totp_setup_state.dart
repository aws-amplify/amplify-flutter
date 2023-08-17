// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'auth_state.dart';

/// {@template amplify_auth_cognito.totp_setup_state_type}
/// Discrete state types of the TOTP setup state machine.
/// {@endtemplate}
enum TotpSetupStateType {
  /// {@macro amplify_auth_cognito.totp_setup_idle}
  idle,

  /// {@macro amplify_auth_cognito.totp_setup_requires_verification}
  requiresVerification,

  /// {@macro amplify_auth_cognito.totp_setup_failure}
  failure,

  /// {@macro amplify_auth_cognito.totp_setup_success}
  success,
}

/// {@template amplify_auth_cognito.totp_setup_state}
/// Discrete states of the TOTP setup state machine.
/// {@endtemplate}
sealed class TotpSetupState extends AuthState<TotpSetupStateType> {
  const TotpSetupState._();

  /// {@macro amplify_auth_cognito.totp_setup_idle}
  const factory TotpSetupState.idle() = TotpSetupIdle;

  /// {@macro amplify_auth_cognito.totp_setup_success}
  const factory TotpSetupState.requiresVerification(TotpSetupDetails result) =
      TotpSetupRequiresVerification;

  /// {@macro amplify_auth_cognito.totp_setup_failure}
  const factory TotpSetupState.failure(
    Exception exception,
    StackTrace stackTrace,
  ) = TotpSetupFailure;

  /// {@macro amplify_auth_cognito.totp_setup_success}
  const factory TotpSetupState.success() = TotpSetupSuccess;

  @override
  String get runtimeTypeName => 'TotpSetupState';
}

/// {@template amplify_auth_cognito.totp_setup_idle}
/// The state machine is not busy and can initiate a setup.
/// {@endtemplate}
final class TotpSetupIdle extends TotpSetupState {
  /// {@macro amplify_auth_cognito.totp_setup_idle}
  const TotpSetupIdle() : super._();

  @override
  List<Object?> get props => const [];

  @override
  TotpSetupStateType get type => TotpSetupStateType.idle;
}

/// {@template amplify_auth_cognito.totp_setup_requires_verification}
/// The TOTP device requires verification.
/// {@endtemplate}
final class TotpSetupRequiresVerification extends TotpSetupState
    with SuccessState<TotpSetupStateType> {
  /// {@macro amplify_auth_cognito.totp_setup_requires_verification}
  const TotpSetupRequiresVerification(this.result) : super._();

  /// The result of setting up a new TOTP device.
  final TotpSetupDetails result;

  @override
  List<Object?> get props => [result];

  @override
  TotpSetupStateType get type => TotpSetupStateType.requiresVerification;
}

/// {@template amplify_auth_cognito.totp_setup_success}
/// The setup flow completed successfully.
/// {@endtemplate}
final class TotpSetupSuccess extends TotpSetupState
    with SuccessState<TotpSetupStateType> {
  /// {@macro amplify_auth_cognito.totp_setup_success}
  const TotpSetupSuccess() : super._();

  @override
  List<Object?> get props => [];

  @override
  TotpSetupStateType get type => TotpSetupStateType.success;
}

/// {@template amplify_auth_cognito.totp_setup_failure}
/// The setup flow failed unrecoverably with [exception].
/// {@endtemplate}
final class TotpSetupFailure extends TotpSetupState
    with ErrorState<TotpSetupStateType> {
  /// {@macro amplify_auth_cognito.totp_setup_failure}
  const TotpSetupFailure(this.exception, this.stackTrace) : super._();

  /// The exception which triggered the failure.
  @override
  final Exception exception;

  /// The stack trace when the [exception] occurred.
  @override
  final StackTrace stackTrace;

  @override
  List<Object?> get props => [exception, stackTrace];

  @override
  TotpSetupStateType get type => TotpSetupStateType.failure;
}
