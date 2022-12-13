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

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/auth_plugin_credentials_provider.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/device_metadata_repository.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:stream_transform/stream_transform.dart';

/// Default state machine builders for [CognitoAuthStateMachine].
@visibleForTesting
final stateMachineBuilders = <StateMachineToken, Function>{
  ConfigurationStateMachine.type: ConfigurationStateMachine.new,
  CredentialStoreStateMachine.type: CredentialStoreStateMachine.new,
  FetchAuthSessionStateMachine.type: FetchAuthSessionStateMachine.new,
  HostedUiStateMachine.type: HostedUiStateMachine.new,
  SignUpStateMachine.type: SignUpStateMachine.new,
  SignInStateMachine.type: SignInStateMachine.new,
};

AWSHttpClient _makeAwsHttpClient() =>
    AmplifyHttpClient()..supportedProtocols = SupportedProtocols.http1;

/// Default defaultDependencies for [CognitoAuthStateMachine].
@visibleForTesting
final defaultDependencies = <Token, DependencyBuilder>{
  HostedUiPlatform.token: HostedUiPlatform.new,
  const Token<http.Client>(): http.Client.new,
  const Token<AWSHttpClient>(): _makeAwsHttpClient,
  AuthPluginCredentialsProvider.token: AuthPluginCredentialsProviderImpl.new,
  DeviceMetadataRepository.token: DeviceMetadataRepository.new,
};

/// {@template amplify_auth_cognito.cognito_auth_state_machine}
/// The state machine for managing auth state and relevant work.
/// {@endtemplate}
class CognitoAuthStateMachine extends StateMachineManager<AuthEvent> {
  /// {@macro amplify_auth_cognito.cognito_auth_state_machine}
  CognitoAuthStateMachine({
    DependencyManager? dependencyManager,
  }) : super(
          stateMachineBuilders,
          dependencyManager ?? DependencyManager(defaultDependencies),
        ) {
    addInstance<CognitoAuthStateMachine>(this);
    _listenForEvents();
  }

  final _eventController = StreamController<EventCompleter<AuthEvent>>();

  Future<void> _listenForEvents() async {
    await for (final completer in _eventController.stream) {
      final completion = internalDispatch(completer.event);
      if (!completer.propagate) {
        // Complete public API dispatch as soon as the event is picked up.
        //
        // Side effects should be listened for via the state machine.
        completer.complete();
      }
      try {
        await completion;
      } finally {
        if (completer.propagate) completer.complete();
      }
    }
  }

  @override
  FutureOr<void> internalDispatch(AuthEvent event) async {
    if (event is ConfigurationEvent) {
      return getOrCreate(ConfigurationStateMachine.type).add(event);
    } else if (event is CredentialStoreEvent) {
      return getOrCreate(CredentialStoreStateMachine.type).add(event);
    } else if (event is FetchAuthSessionEvent) {
      return getOrCreate(FetchAuthSessionStateMachine.type).add(event);
    } else if (event is HostedUiEvent) {
      return getOrCreate(HostedUiStateMachine.type).add(event);
    } else if (event is SignUpEvent) {
      return getOrCreate(SignUpStateMachine.type).add(event);
    } else if (event is SignInEvent) {
      return getOrCreate(SignInStateMachine.type).add(event);
    }
    throw StateError('Unhandled event: $event');
  }

  @override
  Future<void> dispatch(
    AuthEvent event, {
    bool propagate = false,
  }) {
    final completer = EventCompleter(
      event,
      propagate: propagate,
    );
    _eventController.add(completer);
    return completer.future;
  }

  /// Loads credentials from the credential store.
  Future<CredentialStoreData> loadCredentials([
    CredentialStoreEvent? event,
  ]) async {
    if (event != null) {
      await internalDispatch(event);
    }
    final machine = getOrCreate(CredentialStoreStateMachine.type);
    final credentialsState =
        await machine.stream.startWith(machine.currentState).firstWhere(
              (state) =>
                  state is CredentialStoreSuccess ||
                  state is CredentialStoreFailure,
            );
    if (credentialsState is CredentialStoreFailure) {
      throw credentialsState.exception;
    }
    return (credentialsState as CredentialStoreSuccess).data;
  }

  /// Clears [keys] from the credential store, or all keys if unspecified.
  Future<void> clearCredentials([Iterable<String> keys = const []]) async {
    await loadCredentials(
      CredentialStoreEvent.clearCredentials(keys),
    );
  }

  /// Loads the user's current session.
  Future<CognitoAuthSession> loadSession([
    FetchAuthSessionEvent? event,
  ]) async {
    if (event != null) {
      await internalDispatch(event);
    }
    final machine = getOrCreate(FetchAuthSessionStateMachine.type);
    final sessionState =
        await machine.stream.startWith(machine.currentState).firstWhere(
              (state) =>
                  state is FetchAuthSessionSuccess ||
                  state is FetchAuthSessionFailure,
            );
    if (sessionState is FetchAuthSessionFailure) {
      throw sessionState.exception;
    }
    return (sessionState as FetchAuthSessionSuccess).session;
  }

  /// Configures the Hosted UI state machine.
  Future<void> configureHostedUi() async {
    await internalDispatch(
      const HostedUiEvent.configure(),
    );
    final machine = getOrCreate(HostedUiStateMachine.type);
    final configuredState =
        await machine.stream.startWith(machine.currentState).firstWhere(
              (state) =>
                  state is HostedUiSignedIn ||
                  state is HostedUiSignedOut ||
                  state is HostedUiFailure,
            );
    if (configuredState is HostedUiFailure) {
      throw configuredState.exception;
    }
  }

  @override
  Future<void> close() {
    _eventController.close();
    return super.close();
  }
}
