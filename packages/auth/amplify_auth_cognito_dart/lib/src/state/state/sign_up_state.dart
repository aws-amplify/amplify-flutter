// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'auth_state.dart';

/// Discrete state types of the sign up flow.
enum SignUpStateType {
  /// {@macro amplify_auth_cognito.sign_up_not_started}
  notStarted,

  /// {@macro amplify_auth_cognito.sign_up_initiating}
  initiating,

  /// {@macro amplify_auth_cognito.sign_up_needs_confirmation}
  needsConfirmation,

  /// {@macro amplify_auth_cognito.sign_up_confirming}
  confirming,

  /// {@macro amplify_auth_cognito.sign_up_success}
  success,

  /// {@macro amplify_auth_cognito.sign_up_failure}
  failure,
}

/// Discrete states of the sign up flow.
sealed class SignUpState extends AuthState<SignUpStateType> {
  const SignUpState._();

  /// {@macro amplify_auth_cognito.sign_up_not_started}
  const factory SignUpState.notStarted() = SignUpNotStarted;

  /// {@macro amplify_auth_cognito.sign_up_initiating}
  const factory SignUpState.initiating() = SignUpInitiating;

  /// {@macro amplify_auth_cognito.sign_up_needs_confirmation}
  const factory SignUpState.needsConfirmation({
    required String userId,
    CodeDeliveryDetailsType? codeDeliveryDetails,
  }) = SignUpNeedsConfirmation;

  /// {@macro amplify_auth_cognito.sign_up_confirming}
  const factory SignUpState.confirming() = SignUpConfirming;

  /// {@macro amplify_auth_cognito.sign_up_success}
  const factory SignUpState.success({
    String? userId,
  }) = SignUpSuccess;

  /// {@macro amplify_auth_cognito.sign_up_failure}
  const factory SignUpState.failure(
    Exception exception,
    StackTrace stackTrace,
  ) = SignUpFailure;

  @override
  String get runtimeTypeName => 'SignUpState';
}

/// {@template amplify_auth_cognito.sign_up_not_started}
/// Sign up flow has not yet started.
/// {@endtemplate}
final class SignUpNotStarted extends SignUpState {
  /// {@macro amplify_auth_cognito.sign_up_not_started}
  const SignUpNotStarted() : super._();

  @override
  SignUpStateType get type => SignUpStateType.notStarted;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.sign_up_initiating}
/// Sign up flow is initiating.
/// {@endtemplate}
final class SignUpInitiating extends SignUpState {
  /// {@macro amplify_auth_cognito.sign_up_initiating}
  const SignUpInitiating() : super._();

  @override
  SignUpStateType get type => SignUpStateType.initiating;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.sign_up_needs_confirmation}
/// The user is signed up but not yet confirmed.
/// {@endtemplate}
final class SignUpNeedsConfirmation extends SignUpState {
  /// {@macro amplify_auth_cognito.sign_up_needs_confirmation}
  const SignUpNeedsConfirmation({
    required this.userId,
    this.codeDeliveryDetails,
  }) : super._();

  /// The user ID of the unconfirmed user.
  final String userId;

  /// Where and how the confirmation code was sent, if applicable.
  final CodeDeliveryDetailsType? codeDeliveryDetails;

  @override
  SignUpStateType get type => SignUpStateType.needsConfirmation;

  @override
  List<Object?> get props => [type, codeDeliveryDetails, userId];
}

/// {@template amplify_auth_cognito.sign_up_confirming}
/// The user is being confirmed.
/// {@endtemplate}
final class SignUpConfirming extends SignUpState {
  /// {@macro amplify_auth_cognito.sign_up_confirming}
  const SignUpConfirming() : super._();

  @override
  SignUpStateType get type => SignUpStateType.confirming;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.sign_up_success}
/// The user successfully signed up.
/// {@endtemplate}
final class SignUpSuccess extends SignUpState with SuccessState {
  /// {@macro amplify_auth_cognito.sign_up_success}
  const SignUpSuccess({
    this.userId,
  }) : super._();

  /// The ID of the user.
  final String? userId;

  @override
  SignUpStateType get type => SignUpStateType.success;

  @override
  List<Object?> get props => [type, userId];
}

/// {@template amplify_auth_cognito.sign_up_failure}
/// The sign up did not succceed.
/// {@endtemplate}
final class SignUpFailure extends SignUpState with ErrorState {
  /// {@macro amplify_auth_cognito.sign_up_failure}
  const SignUpFailure(this.exception, this.stackTrace) : super._();

  /// The exception thrown during sign up.
  @override
  final Exception exception;

  @override
  final StackTrace stackTrace;

  @override
  SignUpStateType get type => SignUpStateType.failure;

  @override
  List<Object?> get props => [type, exception, stackTrace];
}
