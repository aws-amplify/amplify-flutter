// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.auth_state_type}
/// Discrete state types of the Auth state machine.
/// {@endtemplate}
enum AuthStateType {
  /// {@macro amplify_auth_cognito.auth_not_configured}
  notConfigured,

  /// {@macro amplify_auth_cognito.auth_configuring}
  configuring,

  /// {@macro amplify_auth_cognito.auth_configured}
  configured,

  /// {@macro amplify_auth_cognito.auth_failure}
  failure,
}

/// {@template amplify_auth_cognito.auth_state}
/// Discrete states of the Auth state machine.
/// {@endtemplate}
abstract class AuthState extends StateMachineState<AuthStateType> {
  /// {@macro amplify_auth_cognito.auth_state}
  const AuthState();

  /// {@macro amplify_auth_cognito.auth_not_configured}
  const factory AuthState.notConfigured() = AuthNotConfigured;

  /// {@macro amplify_auth_cognito.auth_configuring}
  const factory AuthState.configuring() = AuthConfiguring;

  /// {@macro amplify_auth_cognito.auth_configured}
  const factory AuthState.configured(CognitoPluginConfig config) =
      AuthConfigured;

  /// {@macro amplify_auth_cognito.auth_failure}
  const factory AuthState.failure(Exception exception) = AuthFailure;

  @override
  String get runtimeTypeName => 'AuthState';
}

/// {@template amplify_auth_cognito.auth_not_configured}
/// Initial state.
/// {@endtemplate}
class AuthNotConfigured extends AuthState {
  /// {@macro amplify_auth_cognito.auth_not_configured}
  const AuthNotConfigured();

  @override
  AuthStateType get type => AuthStateType.notConfigured;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.auth_configuring}
/// Configuring the Auth category.
/// {@endtemplate}
class AuthConfiguring extends AuthState {
  /// {@macro amplify_auth_cognito.auth_configuring}
  const AuthConfiguring();

  @override
  AuthStateType get type => AuthStateType.configuring;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.auth_configured}
/// Successfully configured the Auth category.
/// {@endtemplate}
class AuthConfigured extends AuthState {
  /// {@macro amplify_auth_cognito.auth_configured}
  const AuthConfigured(this.config);

  /// The configured plugin config.
  final CognitoPluginConfig config;

  @override
  AuthStateType get type => AuthStateType.configured;

  @override
  List<Object?> get props => [config, type];
}

/// {@template amplify_auth_cognito.auth_failure}
/// A failure occurred during configuration of the Auth category.
/// {@endtemplate}
class AuthFailure extends AuthState with ErrorState {
  /// {@macro amplify_auth_cognito.auth_failure}
  const AuthFailure(this.exception);

  /// The exception thrown during configuration.
  @override
  final Exception exception;

  @override
  AuthStateType get type => AuthStateType.failure;

  @override
  List<Object?> get props => [type, exception];
}
