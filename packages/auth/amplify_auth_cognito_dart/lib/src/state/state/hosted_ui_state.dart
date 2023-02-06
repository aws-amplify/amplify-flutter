// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

/// Discrete state types of the hosted UI state machine.
enum HostedUiStateType {
  /// {@macro amplify_auth_cognito.hosted_ui_not_configured}
  notConfigured,

  /// {@macro amplify_auth_cognito.hosted_ui_configuring}
  configuring,

  /// {@macro amplify_auth_cognito.hosted_ui_signing_in}
  signingIn,

  /// {@macro amplify_auth_cognito.hosted_ui_signing_out}
  signingOut,

  /// {@macro amplify_auth_cognito.hosted_ui_signed_out}
  signedOut,

  /// {@macro amplify_auth_cognito.hosted_ui_signed_in}
  signedIn,

  /// {@macro amplify_auth_cognito.hosted_ui_failure}
  failure,
}

/// Discrete states of the hosted UI state machine.
abstract class HostedUiState extends AuthState<HostedUiStateType> {
  const HostedUiState._();

  /// {@macro amplify_auth_cognito.hosted_ui_not_configured}
  const factory HostedUiState.notConfigured() = HostedUiNotConfigured;

  /// {@macro amplify_auth_cognito.hosted_ui_configuring}
  const factory HostedUiState.configuring() = HostedUiConfiguring;

  /// {@macro amplify_auth_cognito.hosted_ui_signing_in}
  const factory HostedUiState.signingIn() = HostedUiSigningIn;

  /// {@macro amplify_auth_cognito.hosted_ui_signing_out}
  const factory HostedUiState.signingOut() = HostedUiSigningOut;

  /// {@macro amplify_auth_cognito.hosted_ui_signed_out}
  const factory HostedUiState.signedOut() = HostedUiSignedOut;

  /// {@macro amplify_auth_cognito.hosted_ui_signed_in}
  const factory HostedUiState.signedIn(AuthUser user) = HostedUiSignedIn;

  /// {@macro amplify_auth_cognito.hosted_ui_failure}
  const factory HostedUiState.failure(Exception exception) = HostedUiFailure;

  @override
  String get runtimeTypeName => 'HostedUiState';
}

/// {@template amplify_auth_cognito.hosted_ui_not_configured}
/// The hosted UI flow is not configured and not ready for use.
/// {@endtemplate}
class HostedUiNotConfigured extends HostedUiState {
  /// {@macro amplify_auth_cognito.hosted_ui_not_configured}
  const HostedUiNotConfigured() : super._();

  @override
  List<Object?> get props => [type];

  @override
  HostedUiStateType get type => HostedUiStateType.notConfigured;
}

/// {@template amplify_auth_cognito.hosted_ui_configuring}
/// The hosted UI flow is busy configuring.
/// {@endtemplate}
class HostedUiConfiguring extends HostedUiState {
  /// {@macro amplify_auth_cognito.hosted_ui_configuring}
  const HostedUiConfiguring() : super._();

  @override
  List<Object?> get props => [type];

  @override
  HostedUiStateType get type => HostedUiStateType.configuring;
}

/// {@template amplify_auth_cognito.hosted_ui_signing_in}
/// The user is being signed in via the hosted UI flow.
/// {@endtemplate}
class HostedUiSigningIn extends HostedUiState {
  /// {@macro amplify_auth_cognito.hosted_ui_signing_in}
  const HostedUiSigningIn() : super._();

  @override
  List<Object?> get props => [type];

  @override
  HostedUiStateType get type => HostedUiStateType.signingIn;
}

/// {@template amplify_auth_cognito.hosted_ui_signing_out}
/// The user is being signed out via the hosted UI flow.
/// {@endtemplate}
class HostedUiSigningOut extends HostedUiState {
  /// {@macro amplify_auth_cognito.hosted_ui_signing_out}
  const HostedUiSigningOut() : super._();

  @override
  List<Object?> get props => [type];

  @override
  HostedUiStateType get type => HostedUiStateType.signingOut;
}

/// {@template amplify_auth_cognito.hosted_ui_signed_out}
/// The user is signed out via the hosted UI flow.
/// {@endtemplate}
class HostedUiSignedOut extends HostedUiState {
  /// {@macro amplify_auth_cognito.hosted_ui_signed_out}
  const HostedUiSignedOut() : super._();

  @override
  List<Object?> get props => [type];

  @override
  HostedUiStateType get type => HostedUiStateType.signedOut;
}

/// {@template amplify_auth_cognito.hosted_ui_signed_in}
/// The user is signed in via the hosted UI flow.
/// {@endtemplate}
class HostedUiSignedIn extends HostedUiState with SuccessState {
  /// {@macro amplify_auth_cognito.hosted_ui_signed_in}
  const HostedUiSignedIn(this.user) : super._();

  /// The signed-in user.
  final AuthUser user;

  @override
  List<Object?> get props => [type, user];

  @override
  HostedUiStateType get type => HostedUiStateType.signedIn;
}

/// {@template amplify_auth_cognito.hosted_ui_failure}
/// The Hosted UI flow failed with an [exception].
/// {@endtemplate}
class HostedUiFailure extends HostedUiState with ErrorState {
  /// {@macro amplify_auth_cognito.hosted_ui_failure}
  const HostedUiFailure(this.exception) : super._();

  /// The Hosted UI exception.
  @override
  final Exception exception;

  @override
  List<Object?> get props => [type, exception];

  @override
  HostedUiStateType get type => HostedUiStateType.failure;
}
