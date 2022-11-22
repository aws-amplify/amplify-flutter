// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.state.machines.fetch_auth_session_state_machine_base}
/// Generated definition for the fetch auth session state machine.
/// {@endtemplate}
@internal
abstract class FetchAuthSessionStateMachineBase extends StateMachine<
    FetchAuthSessionEvent, FetchAuthSessionState, CognitoAuthStateMachine> {
  /// {@macro amplify_auth_cognito.state.machines.fetch_auth_session_state_machine_base}
  FetchAuthSessionStateMachineBase(super.manager);

  @override
  FetchAuthSessionState get initialState => const FetchAuthSessionState.idle();

  @override
  Future<void> resolve(FetchAuthSessionEvent event) async {
    switch (event.type) {
      case FetchAuthSessionEventType.fetch:
        event as FetchAuthSessionFetch;
        emit(const FetchAuthSessionState.fetching());
        await onFetchAuthSession(event);
        break;
      case FetchAuthSessionEventType.federate:
        event as FetchAuthSessionFederate;
        emit(const FetchAuthSessionState.fetching());
        await onFederate(event);
        break;
      case FetchAuthSessionEventType.refresh:
        event as FetchAuthSessionRefresh;
        emit(const FetchAuthSessionState.refreshing());
        await onRefresh(event);
        break;
      case FetchAuthSessionEventType.succeeded:
        event as FetchAuthSessionSucceeded;
        emit(FetchAuthSessionState.success(event.session));
        break;
      case FetchAuthSessionEventType.failed:
        event as FetchAuthSessionFailed;
        emit(FetchAuthSessionState.failure(event.exception));
        break;
    }
  }

  @override
  FetchAuthSessionState? resolveError(Object error, [StackTrace? st]) {
    if (error is Exception) {
      return FetchAuthSessionFailure(error);
    }
    return null;
  }

  /// State machine callback for the [FetchAuthSessionFetch] event.
  Future<void> onFetchAuthSession(FetchAuthSessionFetch event);

  /// State machine callback for the [FetchAuthSessionFederate] event.
  Future<void> onFederate(FetchAuthSessionFederate event);

  /// State machine callback for the [FetchAuthSessionRefresh] event.
  Future<void> onRefresh(FetchAuthSessionRefresh event);
}
