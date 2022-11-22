// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

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

  /// {@macro amplify_auth_cognito.fetch_auth_session_failed}
  failed,
}

/// Discrete events of the fetch auth session state machine.
abstract class FetchAuthSessionEvent
    extends AuthEvent<FetchAuthSessionEventType, FetchAuthSessionStateType> {
  const FetchAuthSessionEvent._();

  /// {@macro amplify_auth_cognito.fetch_auth_session_fetch}
  const factory FetchAuthSessionEvent.fetch([
    CognitoSessionOptions? options,
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
  const factory FetchAuthSessionEvent.succeeded(
    CognitoAuthSession session,
  ) = FetchAuthSessionSucceeded;

  /// {@macro amplify_auth_cognito.fetch_auth_session_failed}
  const factory FetchAuthSessionEvent.failed(
    Exception exception,
  ) = FetchAuthSessionFailed;

  @override
  String get runtimeTypeName => 'FetchAuthSessionEvent';
}

/// {@template amplify_auth_cognito.fetch_auth_session_fetch}
/// Fetch the current user's auth session.
/// {@endtemplate}
class FetchAuthSessionFetch extends FetchAuthSessionEvent {
  /// {@macro amplify_auth_cognito.fetch_auth_session_fetch}
  const FetchAuthSessionFetch([this.options]) : super._();

  /// Options for the fetch.
  final CognitoSessionOptions? options;

  @override
  FetchAuthSessionEventType get type => FetchAuthSessionEventType.fetch;

  @override
  List<Object?> get props => [type, options];

  @override
  PreconditionException? checkPrecondition(
    FetchAuthSessionState currentState,
  ) {
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
class FetchAuthSessionFederate extends FetchAuthSessionEvent {
  /// {@macro amplify_auth_cognito.fetch_auth_session_federate}
  const FetchAuthSessionFederate(this.request) : super._();

  /// The federation request.
  final FederateToIdentityPoolRequest request;

  @override
  FetchAuthSessionEventType get type => FetchAuthSessionEventType.federate;

  @override
  List<Object?> get props => [type, request];

  @override
  PreconditionException? checkPrecondition(
    FetchAuthSessionState currentState,
  ) {
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
class FetchAuthSessionRefresh extends FetchAuthSessionEvent {
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
  PreconditionException? checkPrecondition(
    FetchAuthSessionState currentState,
  ) {
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
class FetchAuthSessionSucceeded extends FetchAuthSessionEvent {
  /// {@macro amplify_auth_cognito.fetch_auth_session_succeeded}
  const FetchAuthSessionSucceeded(this.session) : super._();

  /// The active user session.
  final CognitoAuthSession session;

  @override
  FetchAuthSessionEventType get type => FetchAuthSessionEventType.succeeded;

  @override
  List<Object?> get props => [type, session];
}

/// {@template amplify_auth_cognito.fetch_auth_session_failed}
/// Fetching the current user's auth session failed.
/// {@endtemplate}
class FetchAuthSessionFailed extends FetchAuthSessionEvent with ErrorEvent {
  /// {@macro amplify_auth_cognito.fetch_auth_session_failed}
  const FetchAuthSessionFailed(this.exception) : super._();

  /// The exception thrown fetching credentials.
  @override
  final Exception exception;

  @override
  FetchAuthSessionEventType get type => FetchAuthSessionEventType.failed;

  @override
  List<Object?> get props => [type, exception];
}
