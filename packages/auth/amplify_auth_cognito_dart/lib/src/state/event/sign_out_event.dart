// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.sign_out_event_type}
/// Discrete event types of the Sign Out state machine.
/// {@endtemplate}
enum SignOutEventType {
  /// {@macro amplify_auth_cognito.sign_out_initiate}
  initiate,
}

/// {@template amplify_auth_cognito.sign_out_event}
/// Discrete events of the Sign Out state machine.
/// {@endtemplate}
abstract class SignOutEvent
    extends AuthEvent<SignOutEventType, SignOutStateType> {
  const SignOutEvent._();

  /// {@macro amplify_auth_cognito.sign_out_initiate}
  const factory SignOutEvent.initiate(SignOutOptions options) = SignOutInitiate;

  @override
  PreconditionException? checkPrecondition(SignOutState currentState) => null;

  @override
  String get runtimeTypeName => 'SignOutEvent';
}

/// {@template amplify_auth_cognito.sign_out_initiate}
/// Inititates a sign out for the current user.
/// {@endtemplate}
class SignOutInitiate extends SignOutEvent {
  /// {@macro amplify_auth_cognito.sign_out_initiate}
  const SignOutInitiate(this.options) : super._();

  /// Options for the sign out flow.
  final SignOutOptions options;

  @override
  PreconditionException? checkPrecondition(SignOutState currentState) {
    if (currentState.type == SignOutStateType.signingOut) {
      // This should not happen due to state machine queue.
      return const AuthPreconditionException('Sign out already in progress');
    }
    return null;
  }

  @override
  List<Object?> get props => [options];

  @override
  SignOutEventType get type => SignOutEventType.initiate;
}
