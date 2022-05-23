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

/// {@template amplify_auth_cognito.state.machines.hosted_ui_state_machine_base}
/// Generated definition for the hosted UI state machine.
/// {@endtemplate}
@internal
abstract class HostedUiStateMachineBase
    extends StateMachine<HostedUiEvent, HostedUiState> {
  /// {@macro amplify_auth_cognito.state.machines.hosted_ui_state_machine_base}
  HostedUiStateMachineBase(super.manager);

  @override
  HostedUiState get initialState => const HostedUiState.notConfigured();

  @override
  Future<void> resolve(HostedUiEvent event) async {
    switch (event.type) {
      case HostedUiEventType.configure:
        event as HostedUiConfigure;
        emit(const HostedUiState.configuring());
        await onConfigure(event);
        break;
      case HostedUiEventType.foundState:
        event as HostedUiFoundState;
        await onFoundState(event);
        break;
      case HostedUiEventType.exchange:
        event as HostedUiExchange;
        emit(const HostedUiState.signingIn());
        await onExchange(event);
        break;
      case HostedUiEventType.signIn:
        event as HostedUiSignIn;
        emit(const HostedUiState.signingIn());
        await onSignIn(event);
        break;
      case HostedUiEventType.cancelSignIn:
        await onCancelSignIn(event.cast());
        break;
      case HostedUiEventType.signOut:
        event as HostedUiSignOut;
        emit(const HostedUiState.signingOut());
        await onSignOut(event);
        break;
      case HostedUiEventType.succeeded:
        event as HostedUiSucceeded;
        emit(const HostedUiState.signedIn());
        await onSucceeded(event);
        break;
      case HostedUiEventType.failed:
        event as HostedUiFailed;
        emit(HostedUiState.failure(event.exception));
        await onFailed(event);
        break;
    }
  }

  @override
  HostedUiState? resolveError(Object error, [StackTrace? st]) {
    if (error is AuthException) {
      return HostedUiState.failure(error);
    } else if (error is SmithyException) {
      return HostedUiState.failure(error);
    }
    return HostedUiState.failure(
      UnknownException(
        'An unknown error occurred',
        underlyingException: error.toString(),
      ),
    );
  }

  /// State machine callback for the [HostedUiConfigure] event.
  Future<void> onConfigure(HostedUiConfigure event);

  /// State machine callback for the [HostedUiFoundState] event.
  Future<void> onFoundState(HostedUiFoundState event);

  /// State machine callback for the [HostedUiSignIn] event.
  Future<void> onSignIn(HostedUiSignIn event);

  /// State machine callback for the [HostedUiCancelSignIn] event.
  Future<void> onCancelSignIn(HostedUiCancelSignIn event);

  /// State machine callback for the [HostedUiExchange] event.
  Future<void> onExchange(HostedUiExchange event);

  /// State machine callback for the [HostedUiSignOut] event.
  Future<void> onSignOut(HostedUiSignOut event);

  /// State machine callback for the [HostedUiSucceeded] event.
  Future<void> onSucceeded(HostedUiSucceeded event);

  /// State machine callback for the [HostedUiFailed] event.
  Future<void> onFailed(HostedUiFailed event);
}
