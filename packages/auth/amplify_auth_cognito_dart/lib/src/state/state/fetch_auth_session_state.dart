// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

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
abstract class FetchAuthSessionState
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
class FetchAuthSessionIdle extends FetchAuthSessionState {
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
class FetchAuthSessionFetching extends FetchAuthSessionState {
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
class FetchAuthSessionRefreshing extends FetchAuthSessionState {
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
class FetchAuthSessionSuccess extends FetchAuthSessionState with SuccessState {
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
class FetchAuthSessionFailure extends FetchAuthSessionState with ErrorState {
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
