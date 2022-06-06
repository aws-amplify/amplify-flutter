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
    extends StateMachineState<FetchAuthSessionStateType> {
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
class FetchAuthSessionSuccess extends FetchAuthSessionState {
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
  const FetchAuthSessionFailure(this.exception) : super._();

  /// The exception thrown fetching credentials.
  @override
  final Exception exception;

  @override
  FetchAuthSessionStateType get type => FetchAuthSessionStateType.failure;

  @override
  List<Object?> get props => [type, exception];
}
