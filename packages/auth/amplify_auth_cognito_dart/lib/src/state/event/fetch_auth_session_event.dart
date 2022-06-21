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

/// Discrete event types of the fetch auth session state machine.
enum FetchAuthSessionEventType {
  /// {@macro amplify_auth_cognito.fetch_auth_session_fetch}
  fetch,

  /// {@macro amplify_auth_cognito.fetch_auth_session_refresh}
  refresh,

  /// {@macro amplify_auth_cognito.fetch_auth_session_succeeded}
  succeeded,

  /// {@macro amplify_auth_cognito.fetch_auth_session_failed}
  failed,
}

/// Discrete events of the fetch auth session state machine.
abstract class FetchAuthSessionEvent
    extends StateMachineEvent<FetchAuthSessionEventType> {
  const FetchAuthSessionEvent._();

  /// {@macro amplify_auth_cognito.fetch_auth_session_fetch}
  const factory FetchAuthSessionEvent.fetch([
    CognitoSessionOptions? options,
  ]) = FetchAuthSessionFetch;

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
  String? checkPrecondition(FetchAuthSessionState currentState) {
    if (currentState.type == FetchAuthSessionStateType.refreshing ||
        currentState.type == FetchAuthSessionStateType.fetching) {
      return 'Credentials are already being fetched...';
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
  }) : super._();

  /// Whether to refresh the user pool tokens.
  final bool refreshUserPoolTokens;

  /// Whether to refresh or retrieve AWS credentials.
  final bool refreshAwsCredentials;

  @override
  FetchAuthSessionEventType get type => FetchAuthSessionEventType.refresh;

  @override
  List<Object?> get props => [
        type,
        refreshAwsCredentials,
        refreshUserPoolTokens,
      ];

  @override
  String? checkPrecondition(FetchAuthSessionState currentState) {
    if (currentState.type == FetchAuthSessionStateType.refreshing) {
      return 'Credentials are already being refreshed...';
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
