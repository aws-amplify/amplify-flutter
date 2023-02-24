// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.configuration_state.configuration_state_type}
/// Discrete state types of the Auth state machine.
/// {@endtemplate}
enum ConfigurationStateType {
  /// {@macro amplify_auth_cognito.configuration_state.not_configured}
  notConfigured,

  /// {@macro amplify_auth_cognito.configuration_state.configuring}
  configuring,

  /// {@macro amplify_auth_cognito.configuration_state.configured}
  configured,

  /// {@macro amplify_auth_cognito.configuration_state.configure_failure}
  failure,
}

/// {@template amplify_auth_cognito.configuration_state}
/// Discrete states of the Auth state machine.
/// {@endtemplate}
abstract class ConfigurationState extends AuthState<ConfigurationStateType> {
  /// {@macro amplify_auth_cognito.configuration_state}
  const ConfigurationState();

  /// {@macro amplify_auth_cognito.configuration_state.not_configured}
  const factory ConfigurationState.notConfigured() = NotConfigured;

  /// {@macro amplify_auth_cognito.configuration_state.configuring}
  const factory ConfigurationState.configuring() = Configuring;

  /// {@macro amplify_auth_cognito.configuration_state.configured}
  const factory ConfigurationState.configured(CognitoPluginConfig config) =
      Configured;

  /// {@macro amplify_auth_cognito.configuration_state.configure_failure}
  const factory ConfigurationState.failure(
    Exception exception,
    StackTrace stackTrace,
  ) = ConfigureFailure;

  @override
  String get runtimeTypeName => 'ConfigurationState';
}

/// {@template amplify_auth_cognito.configuration_state.not_configured}
/// Initial state.
/// {@endtemplate}
class NotConfigured extends ConfigurationState {
  /// {@macro amplify_auth_cognito.configuration_state.not_configured}
  const NotConfigured();

  @override
  ConfigurationStateType get type => ConfigurationStateType.notConfigured;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.configuration_state.configuring}
/// Configuring the Auth category.
/// {@endtemplate}
class Configuring extends ConfigurationState {
  /// {@macro amplify_auth_cognito.configuration_state.configuring}
  const Configuring();

  @override
  ConfigurationStateType get type => ConfigurationStateType.configuring;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.configuration_state.configured}
/// Successfully configured the Auth category.
/// {@endtemplate}
class Configured extends ConfigurationState with SuccessState {
  /// {@macro amplify_auth_cognito.configuration_state.configured}
  const Configured(this.config);

  /// The configured plugin config.
  final CognitoPluginConfig config;

  @override
  ConfigurationStateType get type => ConfigurationStateType.configured;

  @override
  List<Object?> get props => [config, type];
}

/// {@template amplify_auth_cognito.configuration_state.configure_failure}
/// A failure occurred during configuration of the Auth category.
/// {@endtemplate}
class ConfigureFailure extends ConfigurationState with ErrorState {
  /// {@macro amplify_auth_cognito.configuration_state.configure_failure}
  const ConfigureFailure(this.exception, this.stackTrace);

  /// The exception thrown during configuration.
  @override
  final Exception exception;

  @override
  final StackTrace stackTrace;

  @override
  ConfigurationStateType get type => ConfigurationStateType.failure;

  @override
  List<Object?> get props => [type, exception, stackTrace];
}
