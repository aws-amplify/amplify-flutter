// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'auth_event.dart';

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
}

/// {@template amplify_auth_cognito.sign_in_event}
/// Discrete events of an auth flow state machine.
/// {@endtemplate}
sealed class SignInEvent extends AuthEvent<SignInEventType, SignInStateType> {
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
  const factory SignInEvent.succeeded(AuthUser user) = SignInSucceeded;

  /// Client metadata for the sign in flow.
  Map<String, String> get clientMetadata => const {};

  @override
  PreconditionException? checkPrecondition(SignInState currentState) => null;

  @override
  String get runtimeTypeName => 'SignInEvent';
}

/// {@template amplify_auth_cognito.sign_in_initiate}
/// Initiates the auth flow.
/// {@endtemplate}
final class SignInInitiate extends SignInEvent {
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
  @override
  final Map<String, String> clientMetadata;

  @override
  SignInEventType get type => SignInEventType.initiate;

  @override
  List<Object?> get props => [type, authFlowType, clientMetadata, parameters];

  @override
  PreconditionException? checkPrecondition(SignInState currentState) {
    return null;
  }
}

/// {@template amplify_auth_cognito.sign_in_respond_to_challenge}
/// Responds to an auth challenge.
/// {@endtemplate}
final class SignInRespondToChallenge extends SignInEvent {
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
  @override
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
    if (currentState is SignInFailure) {
      // If the state machine did not reach a challenge state before the
      // exception was thrown, then any attempts to confirm sign in should
      // not be allowed and the entire flow must be restarted by the user.
      if (currentState.previousState.type != SignInStateType.challenge) {
        return AuthPreconditionException(
          'Sign-in previously failed',
          recoverySuggestion:
              'Restart the sign-in flow by calling Amplify.Auth.signIn',
          underlyingException: currentState.exception,
        );
      }
      // However, if the state machine was in a respond to challenge state when
      // the exception was raised, further attempts to confirm sign in should
      // be allowed.
      //
      // Recoverable exceptions are expected at this stage, such as
      // CodeMismatchException and InvalidPasswordException. These exceptions
      // prompt the user to retry if they've provided an invalid code or weak
      // password, for example. It is not feasible to determine which exception
      // types are non-recoverable, though. For all others, it is better to
      // allow confirm sign in attempts and have Cognito continue to throw the
      // exception.
      return null;
    }
    if (currentState.type != SignInStateType.challenge) {
      return const AuthPreconditionException('There is no active challenge');
    }
    return null;
  }
}

/// {@template amplify_auth_cognito.sign_in_cancelled}
/// Cancels the auth flow.
/// {@endtemplate}
final class SignInCancelled extends SignInEvent {
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
final class SignInSucceeded extends SignInEvent {
  /// {@macro amplify_auth_cognito.sign_in_succeeded}
  const SignInSucceeded(this.user) : super._();

  /// The logged-in user.
  final AuthUser user;

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
