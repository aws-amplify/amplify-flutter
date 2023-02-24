// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/model/cognito_user.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito_dart.sign_in_state_type}
/// Discrete state types of an auth flow state machine.
/// {@endtemplate}
enum SignInStateType {
  /// {@macro amplify_auth_cognito_dart.sign_in_not_started}
  notStarted,

  /// {@macro amplify_auth_cognito_dart.sign_in_initiating}
  initiating,

  /// {@macro amplify_auth_cognito_dart.sign_in_challenge}
  challenge,

  /// {@macro amplify_auth_cognito_dart.sign_in_success}
  success,

  /// {@macro amplify_auth_cognito_dart.sign_in_cancelling}
  cancelling,

  /// {@macro amplify_auth_cognito_dart.sign_in_failure}
  failure,
}

/// {@template amplify_auth_cognito_dart.sign_in_state}
/// Discrete states of an auth flow state machine.
/// {@endtemplate}
abstract class SignInState extends AuthState<SignInStateType> {
  /// {@macro amplify_auth_cognito_dart.sign_in_state}
  const SignInState();

  /// {@macro amplify_auth_cognito_dart.sign_in_not_started}
  const factory SignInState.notStarted() = SignInNotStarted;

  /// {@macro amplify_auth_cognito_dart.sign_in_initiating}
  const factory SignInState.initiating() = SignInInitiating;

  /// {@macro amplify_auth_cognito_dart.sign_in_challenge}
  const factory SignInState.challenge(
    ChallengeNameType challengeName,
    Map<String, String> challengeParameters,
    List<CognitoUserAttributeKey> requiredAttributes,
  ) = SignInChallenge;

  /// {@macro amplify_auth_cognito_dart.sign_in_success}
  const factory SignInState.success(CognitoUser user) = SignInSuccess;

  /// {@macro amplify_auth_cognito_dart.sign_in_cancelling}
  const factory SignInState.cancelling() = SignInCancelling;

  /// {@macro amplify_auth_cognito_dart.sign_in_failure}
  const factory SignInState.failure(
    Exception exception,
    StackTrace stackTrace,
  ) = SignInFailure;

  @override
  String get runtimeTypeName => 'SignInState';
}

/// {@template amplify_auth_cognito_dart.sign_in_not_started}
/// Initial state.
/// {@endtemplate}
class SignInNotStarted extends SignInState {
  /// {@macro amplify_auth_cognito_dart.sign_in_not_started}
  const SignInNotStarted();

  @override
  SignInStateType get type => SignInStateType.notStarted;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito_dart.sign_in_initiating}
/// Sign in is initiating.
/// {@endtemplate}
class SignInInitiating extends SignInState {
  /// {@macro amplify_auth_cognito_dart.sign_in_initiating}
  const SignInInitiating();

  @override
  SignInStateType get type => SignInStateType.initiating;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito_dart.sign_in_challenge}
/// Sign in is paused and requires user input to continue.
/// {@endtemplate}
class SignInChallenge extends SignInState {
  /// {@macro amplify_auth_cognito.sign_in_challenge}
  const SignInChallenge(
    this.challengeName,
    this.challengeParameters,
    this.requiredAttributes,
  );

  /// The name of the challenge requiring user input.
  final ChallengeNameType challengeName;

  /// The parameters of the challenge.
  final Map<String, String> challengeParameters;

  /// Required user attributes which have not been previously provided.
  final List<CognitoUserAttributeKey> requiredAttributes;

  @override
  SignInStateType get type => SignInStateType.challenge;

  @override
  List<Object?> get props => [
        type,
        challengeName,
        challengeParameters,
        requiredAttributes,
      ];
}

/// {@template amplify_auth_cognito_dart.sign_in_success}
/// Sign in successfully completed.
/// {@endtemplate}
class SignInSuccess extends SignInState with SuccessState {
  /// {@macro amplify_auth_cognito_dart.sign_in_success}
  const SignInSuccess(this.user);

  /// The signed in user.
  final CognitoUser user;

  @override
  SignInStateType get type => SignInStateType.success;

  @override
  List<Object?> get props => [type, user];
}

/// {@template amplify_auth_cognito_dart.sign_in_cancelling}
/// Sign in is being cancelled by the user.
/// {@endtemplate}
class SignInCancelling extends SignInState {
  /// {@macro amplify_auth_cognito_dart.sign_in_cancelling}
  const SignInCancelling();

  @override
  SignInStateType get type => SignInStateType.cancelling;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito_dart.sign_in_failure}
/// Sign in failed with an [exception].
/// {@endtemplate}
class SignInFailure extends SignInState with ErrorState {
  /// {@macro amplify_auth_cognito_dart.sign_in_failure}
  const SignInFailure(this.exception, this.stackTrace);

  /// The exception thrown during sign up.
  @override
  final Exception exception;

  @override
  final StackTrace stackTrace;

  @override
  SignInStateType get type => SignInStateType.failure;

  @override
  List<Object?> get props => [type, exception, stackTrace];
}
