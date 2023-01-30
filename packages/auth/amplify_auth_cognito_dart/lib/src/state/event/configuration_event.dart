// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.configuration_event_type}
/// Discrete event types of the Auth state machine.
/// {@endtemplate}
enum ConfigurationEventType {
  /// {@macro amplify_auth_cognito.configuration_event.configure}
  configure,

  /// {@macro amplify_auth_cognito.configuration_event.configure_succeeded}
  configureSucceeded,

  /// {@macro amplify_auth_cognito.configuration_event.configure_failed}
  configureFailed,
}

/// {@template amplify_auth_cognito.auth_event}
/// Discrete events of the Auth state machine.
/// {@endtemplate}
abstract class ConfigurationEvent
    extends AuthEvent<ConfigurationEventType, ConfigurationStateType> {
  const ConfigurationEvent._();

  /// {@macro amplify_auth_cognito.configuration_event.configure}
  const factory ConfigurationEvent.configure(AmplifyConfig config) = Configure;

  /// {@macro amplify_auth_cognito.configuration_event.configure_succeeded}
  const factory ConfigurationEvent.configureSucceeded(
    CognitoPluginConfig config,
  ) = ConfigureSucceeded;

  /// {@macro amplify_auth_cognito.configuration_event.configure_failed}
  const factory ConfigurationEvent.configureFailed(Exception exception) =
      ConfigureFailed;

  @override
  PreconditionException? checkPrecondition(ConfigurationState currentState) =>
      null;

  @override
  String get runtimeTypeName => 'ConfigurationEvent';
}

/// {@template amplify_auth_cognito.configuration_event.configure}
/// Triggers configuration of the Auth category.
/// {@endtemplate}
class Configure extends ConfigurationEvent {
  /// {@macro amplify_auth_cognito.configuration_event.configure}
  const Configure(this.config) : super._();

  /// The user's Amplify configuration.
  final AmplifyConfig config;

  @override
  ConfigurationEventType get type => ConfigurationEventType.configure;

  @override
  PreconditionException? checkPrecondition(ConfigurationState currentState) {
    if (currentState.type == ConfigurationStateType.configuring) {
      return const AuthPreconditionException(
        'Already configuring',
        shouldEmit: false,
      );
    }
    if (currentState.type == ConfigurationStateType.configured) {
      return const AuthPreconditionException(
        'Runtime re-configuration is not supported',
        shouldEmit: false,
      );
    }
    return null;
  }

  @override
  List<Object?> get props => [type, config];
}

/// {@template amplify_auth_cognito.configuration_event.configure_succeeded}
/// Successful configuration of the Auth plugin.
/// {@endtemplate}
class ConfigureSucceeded extends ConfigurationEvent {
  /// {@macro amplify_auth_cognito.configuration_event.configure_succeeded}
  const ConfigureSucceeded(this.config) : super._();

  /// The Cognito plugin configuration.
  final CognitoPluginConfig config;

  @override
  ConfigurationEventType get type => ConfigurationEventType.configureSucceeded;

  @override
  List<Object?> get props => [type, config];
}

/// {@template amplify_auth_cognito.configuration_event.configure_failed}
/// An exception occurred during configuration of the Auth plugin.
/// {@endtemplate}
class ConfigureFailed extends ConfigurationEvent with ErrorEvent {
  /// {@macro amplify_auth_cognito.configuration_event.configure_failed}
  const ConfigureFailed(this.exception) : super._();

  /// The configuration exception.
  @override
  final Exception exception;

  @override
  ConfigurationEventType get type => ConfigurationEventType.configureFailed;

  @override
  List<Object?> get props => [type, exception];
}
