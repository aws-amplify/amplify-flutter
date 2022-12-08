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

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_user.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_in_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.sign_in_event_type}
/// Discrete event types of an auth flow state machine.
/// {@endtemplate}
enum SignInEventType {
  /// {@macro amplify_auth_cognito.sign_in_initiate}
  initiate,

  /// {@macro amplify_auth_cognito.sign_in_respond_to_challenge}
  respondToChallenge,

  /// {@macro amplify_auth_cognito.sign_in_cancelled}
  cancelled,

  /// {@macro amplify_auth_cognito.sign_in_succeeded}
  succeeded,

  /// {@macro amplify_auth_cognito.sign_in_failed}
  failed,
}

/// {@template amplify_auth_cognito.sign_in_event}
/// Discrete events of an auth flow state machine.
/// {@endtemplate}
abstract class SignInEvent
    extends StateMachineEvent<SignInEventType, SignInStateType> {
  /// {@macro amplify_auth_cognito.sign_in_event}
  const SignInEvent._();

  /// {@macro amplify_auth_cognito.sign_in_initiate}
  const factory SignInEvent.initiate({
    AuthenticationFlowType? authFlowType,
    required SignInParameters parameters,
    Map<String, String>? clientMetadata,
  }) = SignInInitiate;

  /// {@macro amplify_auth_cognito.sign_in_respond_to_challenge}
  const factory SignInEvent.respondToChallenge({
    required String answer,
    Map<String, String>? clientMetadata,
    Map<CognitoUserAttributeKey, String>? userAttributes,
  }) = SignInRespondToChallenge;

  /// {@macro amplify_auth_cognito.sign_in_cancelled}
  const factory SignInEvent.cancelled() = SignInCancelled;

  /// {@macro amplify_auth_cognito.sign_in_succeeded}
  const factory SignInEvent.succeeded(CognitoUser user) = SignInSucceeded;

  /// {@macro amplify_auth_cognito.sign_in_failed}
  const factory SignInEvent.failed(Exception exception) = SignInFailed;

  @override
  PreconditionException? checkPrecondition(SignInState currentState) => null;

  @override
  String get runtimeTypeName => 'SignInEvent';
}

/// {@template amplify_auth_cognito.sign_in_initiate}
/// Initiates the auth flow.
/// {@endtemplate}
class SignInInitiate extends SignInEvent {
  /// {@macro amplify_auth_cognito.sign_in_initiate}
  const SignInInitiate({
    this.authFlowType,
    required this.parameters,
    Map<String, String>? clientMetadata,
  })  : clientMetadata = clientMetadata ?? const {},
        super._();

  /// Runtime override of the Authentication flow.
  final AuthenticationFlowType? authFlowType;

  /// The flow-specific parameters.
  final SignInParameters parameters;

  /// The optional client metadata.
  final Map<String, String> clientMetadata;

  @override
  SignInEventType get type => SignInEventType.initiate;

  @override
  List<Object?> get props => [type, authFlowType, clientMetadata, parameters];

  @override
  PreconditionException? checkPrecondition(SignInState currentState) {
    if (currentState.type != SignInStateType.notStarted) {
      return const AuthPreconditionException(
        'Auth flow has already been initiated',
      );
    }
    return null;
  }
}

/// {@template amplify_auth_cognito.sign_in_respond_to_challenge}
/// Responds to an auth challenge.
/// {@endtemplate}
class SignInRespondToChallenge extends SignInEvent {
  /// {@macro amplify_auth_cognito.sign_in_respond_to_challenge}
  const SignInRespondToChallenge({
    required this.answer,
    Map<String, String>? clientMetadata,
    Map<CognitoUserAttributeKey, String>? userAttributes,
  })  : clientMetadata = clientMetadata ?? const {},
        userAttributes = userAttributes ?? const {},
        super._();

  /// The answer to the challenge.
  final String answer;

  /// The optional client metadata.
  final Map<String, String> clientMetadata;

  /// Required user attributes which were not previously provided.
  final Map<CognitoUserAttributeKey, String> userAttributes;

  @override
  SignInEventType get type => SignInEventType.respondToChallenge;

  @override
  List<Object?> get props => [
        type,
        answer,
        clientMetadata,
        userAttributes,
      ];

  @override
  PreconditionException? checkPrecondition(SignInState currentState) {
    if (currentState.type != SignInStateType.challenge && !(currentState is SignInFailure && currentState.exception is CodeMismatchException)) {
      return const AuthPreconditionException('There is no active challenge');
    }
    return null;
  }
}

/// {@template amplify_auth_cognito.sign_in_cancelled}
/// Cancels the auth flow.
/// {@endtemplate}
class SignInCancelled extends SignInEvent {
  /// {@macro amplify_auth_cognito.sign_in_cancelled}
  const SignInCancelled() : super._();

  @override
  SignInEventType get type => SignInEventType.cancelled;

  @override
  List<Object?> get props => [type];

  @override
  PreconditionException? checkPrecondition(SignInState currentState) {
    return null;
  }
}

/// {@template amplify_auth_cognito.sign_in_succeeded}
/// Successful auth flow completion.
/// {@endtemplate}
class SignInSucceeded extends SignInEvent {
  /// {@macro amplify_auth_cognito.sign_in_succeeded}
  const SignInSucceeded(this.user) : super._();

  /// The logged-in user.
  final CognitoUser user;

  @override
  SignInEventType get type => SignInEventType.succeeded;

  @override
  List<Object?> get props => [type, user];

  @override
  PreconditionException? checkPrecondition(SignInState currentState) {
    if (currentState.type == SignInStateType.success) {
      return const AuthPreconditionException('Auth flow was already completed');
    }
    return null;
  }
}

/// {@template amplify_auth_cognito.sign_in_failed}
/// Failure in the auth flow.
/// {@endtemplate}
class SignInFailed extends SignInEvent with ErrorEvent {
  /// {@macro amplify_auth_cognito.sign_in_failed}
  const SignInFailed(this.exception) : super._();

  /// The sign in flow exception.
  @override
  final Exception exception;

  @override
  SignInEventType get type => SignInEventType.failed;

  @override
  List<Object?> get props => [type, exception];

  @override
  PreconditionException? checkPrecondition(SignInState currentState) {
    if (currentState.type == SignInStateType.failure) {
      return const AuthPreconditionException(
        'Auth flow already completed with error',
        shouldEmit: false,
      );
    }
    return null;
  }
}
