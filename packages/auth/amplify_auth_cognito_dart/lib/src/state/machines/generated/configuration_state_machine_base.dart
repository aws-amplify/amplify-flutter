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
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.state.machines.configuration_state_machine_base}
/// Generated definition for the configuration state machine.
/// {@endtemplate}
@internal
abstract class ConfigurationStateMachineBase extends StateMachine<
    ConfigurationEvent, ConfigurationState, CognitoAuthStateMachine> {
  /// {@template amplify_auth_cognito.state.machines.configuration_state_machine_base}
  ConfigurationStateMachineBase(super.manager);

  @override
  ConfigurationState get initialState =>
      const ConfigurationState.notConfigured();

  @override
  Future<void> resolve(ConfigurationEvent event) async {
    switch (event.type) {
      case ConfigurationEventType.configure:
        final castEvent = event as Configure;
        emit(const ConfigurationState.configuring());
        await onConfigure(castEvent);
        return;
      case ConfigurationEventType.configureSucceeded:
        final castEvent = event as ConfigureSucceeded;
        emit(ConfigurationState.configured(event.config));
        await onConfigureSucceeded(castEvent);
        return;
      case ConfigurationEventType.configureFailed:
        final castEvent = event as ConfigureFailed;
        emit(ConfigurationState.failure(castEvent.exception));
        await onConfigureFailed(castEvent);
        return;
    }
  }

  @override
  ConfigurationState? resolveError(Object error, [StackTrace? st]) {
    if (error is Exception) {
      return ConfigureFailure(error);
    }
    return null;
  }

  /// State machine callback for the [Configure] event.
  Future<void> onConfigure(Configure event);

  /// State machine callback for the [ConfigureSucceeded] event.
  Future<void> onConfigureSucceeded(ConfigureSucceeded event);

  /// State machine callback for the [ConfigureFailed] event.
  Future<void> onConfigureFailed(ConfigureFailed event);
}
