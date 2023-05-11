// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'auth_state.dart';

/// Discrete state types of the fetch auth session state machine.
enum FetchAuthSessionStateType {
  /// {@macro amplify_auth_cognito.fetch_auth_session_idle}
  idle,

  /// {@macro amplify_auth_cognito.fetch_auth_session_fetching}
  fetching,

  /// {@macro amplify_auth_cognito.fetch_auth_session_refreshing}
  refreshing,

  /// {@macro amplify_auth_cognito.fetch_auth_session_success}
  success,

  /// {@macro amplify_auth_cognito.fetch_auth_session_failure}
  failure,
}

/// Discrete states of the fetch auth session state machine.
sealed class FetchAuthSessionState
    extends AuthState<FetchAuthSessionStateType> {
  const FetchAuthSessionState._();

  /// {@macro amplify_auth_cognito.fetch_auth_session_idle}
  const factory FetchAuthSessionState.idle() = FetchAuthSessionIdle;

  /// {@macro amplify_auth_cognito.fetch_auth_session_fetching}
  const factory FetchAuthSessionState.fetching() = FetchAuthSessionFetching;

  /// {@macro amplify_auth_cognito.fetch_auth_session_fetching}
  const factory FetchAuthSessionState.refreshing() = FetchAuthSessionRefreshing;

  /// {@macro amplify_auth_cognito.fetch_auth_session_success}
  const factory FetchAuthSessionState.success(
    CognitoAuthSession session,
  ) = FetchAuthSessionSuccess;

  /// {@macro amplify_auth_cognito.fetch_auth_session_failure}
  const factory FetchAuthSessionState.failure(
    Exception exception,
    StackTrace stackTrace,
  ) = FetchAuthSessionFailure;

  @override
  String get runtimeTypeName => 'FetchAuthSessionState';
}

/// {@template amplify_auth_cognito.fetch_auth_session_idle}
/// The state machine is idle and ready to receive a command.
/// {@endtemplate}
final class FetchAuthSessionIdle extends FetchAuthSessionState {
  /// {@macro amplify_auth_cognito.fetch_auth_session_idle}
  const FetchAuthSessionIdle() : super._();

  @override
  FetchAuthSessionStateType get type => FetchAuthSessionStateType.idle;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.fetch_auth_session_fetching}
/// The state machine is fetching the current auth session.
/// {@endtemplate}
final class FetchAuthSessionFetching extends FetchAuthSessionState {
  /// {@macro amplify_auth_cognito.fetch_auth_session_fetching}
  const FetchAuthSessionFetching() : super._();

  @override
  FetchAuthSessionStateType get type => FetchAuthSessionStateType.fetching;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.fetch_auth_session_refreshing}
/// The state machine is refreshing the current auth session.
/// {@endtemplate}
final class FetchAuthSessionRefreshing extends FetchAuthSessionState {
  /// {@macro amplify_auth_cognito.fetch_auth_session_refreshing}
  const FetchAuthSessionRefreshing() : super._();

  @override
  FetchAuthSessionStateType get type => FetchAuthSessionStateType.refreshing;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.fetch_auth_session_success}
/// The state machine successfully fetched the current auth session.
/// {@endtemplate}
final class FetchAuthSessionSuccess extends FetchAuthSessionState
    with SuccessState {
  /// {@macro amplify_auth_cognito.fetch_auth_session_success}
  const FetchAuthSessionSuccess(this.session) : super._();

  /// The active user session.
  final CognitoAuthSession session;

  @override
  FetchAuthSessionStateType get type => FetchAuthSessionStateType.success;

  @override
  List<Object?> get props => [type, session];
}

/// {@template amplify_auth_cognito.fetch_auth_session_failure}
/// The state machine encountered an error fetching the current auth session.
/// {@endtemplate}
final class FetchAuthSessionFailure extends FetchAuthSessionState
    with ErrorState {
  /// {@macro amplify_auth_cognito.fetch_auth_session_failure}
  const FetchAuthSessionFailure(this.exception, this.stackTrace) : super._();

  /// The exception thrown fetching credentials.
  @override
  final Exception exception;

  @override
  final StackTrace stackTrace;

  @override
  FetchAuthSessionStateType get type => FetchAuthSessionStateType.failure;

  @override
  List<Object?> get props => [type, exception, stackTrace];
}
