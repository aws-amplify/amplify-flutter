// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_core/amplify_core.dart';

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
abstract class SignUpState extends StateMachineState<SignUpStateType> {
  const SignUpState._();

  /// {@macro amplify_auth_cognito.sign_up_not_started}
  const factory SignUpState.notStarted() = SignUpNotStarted;

  /// {@macro amplify_auth_cognito.sign_up_initiating}
  const factory SignUpState.initiating() = SignUpInitiating;

  /// {@macro amplify_auth_cognito.sign_up_needs_confirmation}
  const factory SignUpState.needsConfirmation([
    CodeDeliveryDetailsType? codeDeliveryDetails,
  ]) = SignUpNeedsConfirmation;

  /// {@macro amplify_auth_cognito.sign_up_confirming}
  const factory SignUpState.confirming() = SignUpConfirming;

  /// {@macro amplify_auth_cognito.sign_up_success}
  const factory SignUpState.success() = SignUpSuccess;

  /// {@macro amplify_auth_cognito.sign_up_failure}
  const factory SignUpState.failure(Exception exception) = SignUpFailure;

  @override
  String get runtimeTypeName => 'SignUpState';
}

/// {@template amplify_auth_cognito.sign_up_not_started}
/// Sign up flow has not yet started.
/// {@endtemplate}
class SignUpNotStarted extends SignUpState {
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
class SignUpInitiating extends SignUpState {
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
class SignUpNeedsConfirmation extends SignUpState {
  /// {@macro amplify_auth_cognito.sign_up_needs_confirmation}
  const SignUpNeedsConfirmation([this.codeDeliveryDetails]) : super._();

  /// Where and how the confirmation code was sent, if applicable.
  final CodeDeliveryDetailsType? codeDeliveryDetails;

  @override
  SignUpStateType get type => SignUpStateType.needsConfirmation;

  @override
  List<Object?> get props => [type, codeDeliveryDetails];
}

/// {@template amplify_auth_cognito.sign_up_confirming}
/// The user is being confirmed.
/// {@endtemplate}
class SignUpConfirming extends SignUpState {
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
class SignUpSuccess extends SignUpState {
  /// {@macro amplify_auth_cognito.sign_up_success}
  const SignUpSuccess() : super._();

  @override
  SignUpStateType get type => SignUpStateType.success;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.sign_up_failure}
/// The sign up did not succceed.
/// {@endtemplate}
class SignUpFailure extends SignUpState with ErrorState {
  /// {@macro amplify_auth_cognito.sign_up_failure}
  const SignUpFailure(this.exception) : super._();

  /// The exception thrown during sign up.
  @override
  final Exception exception;

  @override
  SignUpStateType get type => SignUpStateType.failure;

  @override
  List<Object?> get props => [type, exception];
}
