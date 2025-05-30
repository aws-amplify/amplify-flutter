// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'auth_event.dart';

/// Discrete event types of the fetch auth session state machine.
enum FetchAuthSessionEventType {
  /// {@macro amplify_auth_cognito.fetch_auth_session_fetch}
  fetch,

  /// {@macro amplify_auth_cognito.fetch_auth_session_federate}
  federate,

  /// {@macro amplify_auth_cognito.fetch_auth_session_refresh}
  refresh,

  /// {@macro amplify_auth_cognito.fetch_auth_session_succeeded}
  succeeded,
}

/// Discrete events of the fetch auth session state machine.
sealed class FetchAuthSessionEvent
    extends AuthEvent<FetchAuthSessionEventType, FetchAuthSessionStateType> {
  const FetchAuthSessionEvent._();

  /// {@macro amplify_auth_cognito.fetch_auth_session_fetch}
  const factory FetchAuthSessionEvent.fetch([
    FetchAuthSessionOptions? options,
  ]) = FetchAuthSessionFetch;

  /// {@macro amplify_auth_cognito.fetch_auth_session_federate}
  const factory FetchAuthSessionEvent.federate(
    FederateToIdentityPoolRequest request,
  ) = FetchAuthSessionFederate;

  /// {@macro amplify_auth_cognito.fetch_auth_session_fetch}
  const factory FetchAuthSessionEvent.refresh({
    required bool refreshUserPoolTokens,
    required bool refreshAwsCredentials,
  }) = FetchAuthSessionRefresh;

  /// {@macro amplify_auth_cognito.fetch_auth_session_succeeded}
  const factory FetchAuthSessionEvent.succeeded(CognitoAuthSession session) =
      FetchAuthSessionSucceeded;

  @override
  String get runtimeTypeName => 'FetchAuthSessionEvent';
}

/// {@template amplify_auth_cognito.fetch_auth_session_fetch}
/// Fetch the current user's auth session.
/// {@endtemplate}
final class FetchAuthSessionFetch extends FetchAuthSessionEvent {
  /// {@macro amplify_auth_cognito.fetch_auth_session_fetch}
  const FetchAuthSessionFetch([this.options]) : super._();

  /// Options for the fetch.
  final FetchAuthSessionOptions? options;

  @override
  FetchAuthSessionEventType get type => FetchAuthSessionEventType.fetch;

  @override
  List<Object?> get props => [type, options];

  @override
  PreconditionException? checkPrecondition(FetchAuthSessionState currentState) {
    if (currentState.type == FetchAuthSessionStateType.refreshing ||
        currentState.type == FetchAuthSessionStateType.fetching) {
      return const AuthPreconditionException(
        'Credentials are already being fetched',
        shouldEmit: false,
      );
    }
    return null;
  }
}

/// {@template amplify_auth_cognito.fetch_auth_session_federate}
/// Fetch AWS credentials by federating to the registered identity pool.
/// {@endtemplate}
final class FetchAuthSessionFederate extends FetchAuthSessionEvent {
  /// {@macro amplify_auth_cognito.fetch_auth_session_federate}
  const FetchAuthSessionFederate(this.request) : super._();

  /// The federation request.
  final FederateToIdentityPoolRequest request;

  @override
  FetchAuthSessionEventType get type => FetchAuthSessionEventType.federate;

  @override
  List<Object?> get props => [type, request];

  @override
  PreconditionException? checkPrecondition(FetchAuthSessionState currentState) {
    if (currentState.type == FetchAuthSessionStateType.refreshing ||
        currentState.type == FetchAuthSessionStateType.fetching) {
      return const AuthPreconditionException(
        'Credentials are already being fetched',
      );
    }
    return null;
  }
}

/// {@template amplify_auth_cognito.fetch_auth_session_refresh}
/// Refresh the current user's auth session.
/// {@endtemplate}
final class FetchAuthSessionRefresh extends FetchAuthSessionEvent {
  /// {@macro amplify_auth_cognito.fetch_auth_session_refresh}
  const FetchAuthSessionRefresh({
    required this.refreshUserPoolTokens,
    required this.refreshAwsCredentials,
    this.federationOptions,
  }) : super._();

  /// Whether to refresh the user pool tokens.
  final bool refreshUserPoolTokens;

  /// Whether to refresh or retrieve AWS credentials.
  final bool refreshAwsCredentials;

  /// Options for federation to an identity pool.
  final FederateToIdentityPoolOptions? federationOptions;

  @override
  FetchAuthSessionEventType get type => FetchAuthSessionEventType.refresh;

  @override
  List<Object?> get props => [
    type,
    refreshAwsCredentials,
    refreshUserPoolTokens,
    federationOptions,
  ];

  @override
  PreconditionException? checkPrecondition(FetchAuthSessionState currentState) {
    if (currentState.type == FetchAuthSessionStateType.refreshing) {
      return const AuthPreconditionException(
        'Credentials are already being refreshed.',
        shouldEmit: false,
      );
    }
    return null;
  }
}

/// {@template amplify_auth_cognito.fetch_auth_session_succeeded}
/// Fetching the current user's auth session succeeded.
/// {@endtemplate}
final class FetchAuthSessionSucceeded extends FetchAuthSessionEvent {
  /// {@macro amplify_auth_cognito.fetch_auth_session_succeeded}
  const FetchAuthSessionSucceeded(this.session) : super._();

  /// The active user session.
  final CognitoAuthSession session;

  @override
  FetchAuthSessionEventType get type => FetchAuthSessionEventType.succeeded;

  @override
  List<Object?> get props => [type, session];
}
