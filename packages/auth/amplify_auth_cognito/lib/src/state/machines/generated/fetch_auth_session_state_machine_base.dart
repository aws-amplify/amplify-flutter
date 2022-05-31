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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

/// {@template amplify_auth_cognito.state.machines.fetch_auth_session_state_machine_base}
/// Generated definition for the fetch auth session state machine.
/// {@endtemplate}
@internal
abstract class FetchAuthSessionStateMachineBase
    extends StateMachine<FetchAuthSessionEvent, FetchAuthSessionState> {
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
    if (error is AuthException) {
      return FetchAuthSessionState.failure(error);
    } else if (error is SmithyException) {
      return FetchAuthSessionState.failure(error);
    }
    return FetchAuthSessionState.failure(
      UnknownException(
        'An unknown error occurred',
        underlyingException: error.toString(),
      ),
    );
  }

  /// State machine callback for the [FetchAuthSessionFetch] event.
  Future<void> onFetchAuthSession(FetchAuthSessionFetch event);

  /// State machine callback for the [FetchAuthSessionRefresh] event.
  Future<void> onRefresh(FetchAuthSessionRefresh event);
}
