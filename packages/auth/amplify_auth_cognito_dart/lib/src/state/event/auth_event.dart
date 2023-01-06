// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.auth_event_type}
/// Discrete event types of the Auth state machine.
/// {@endtemplate}
enum AuthEventType {
  /// {@macro amplify_auth_cognito.auth_configure}
  configure,

  /// {@macro amplify_auth_cognito.auth_configure_succeeded}
  configureSucceeded,

  /// {@macro amplify_auth_cognito.auth_configure_failed}
  configureFailed,
}

/// {@template amplify_auth_cognito.auth_event}
/// Discrete events of the Auth state machine.
/// {@endtemplate}
abstract class AuthEvent
    extends StateMachineEvent<AuthEventType, AuthStateType> {
  const AuthEvent._();

  /// {@macro amplify_auth_cognito.auth_configure}
  const factory AuthEvent.configure(AmplifyConfig config) = AuthConfigure;

  /// {@macro amplify_auth_cognito.auth_configure_succeeded}
  const factory AuthEvent.configureSucceeded(CognitoPluginConfig config) =
      AuthConfigureSucceeded;

  /// {@macro amplify_auth_cognito.auth_configure_failed}
  const factory AuthEvent.configureFailed(Exception exception) =
      AuthConfigureFailed;

  @override
  PreconditionException? checkPrecondition(AuthState currentState) => null;

  @override
  String get runtimeTypeName => 'AuthEvent';
}

/// {@template amplify_auth_cognito.auth_configure}
/// Triggers configuration of the Auth category.
/// {@endtemplate}
class AuthConfigure extends AuthEvent {
  /// {@macro amplify_auth_cognito.auth_configure}
  const AuthConfigure(this.config) : super._();

  /// The user's Amplify configuration.
  final AmplifyConfig config;

  @override
  AuthEventType get type => AuthEventType.configure;

  @override
  PreconditionException? checkPrecondition(AuthState currentState) {
    if (currentState.type == AuthStateType.configuring) {
      return const AuthPreconditionException(
        'Already configuring',
        shouldEmit: false,
      );
    }
    if (currentState.type == AuthStateType.configured) {
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

/// {@template amplify_auth_cognito.auth_configure_succeeded}
/// Successful configuration of the Auth plugin.
/// {@endtemplate}
class AuthConfigureSucceeded extends AuthEvent {
  /// {@macro amplify_auth_cognito.auth_configure_succeeded}
  const AuthConfigureSucceeded(this.config) : super._();

  /// The Cognito plugin configuration.
  final CognitoPluginConfig config;

  @override
  AuthEventType get type => AuthEventType.configureSucceeded;

  @override
  List<Object?> get props => [type];
}

/// {@template amplify_auth_cognito.auth_configure_failed}
/// An exception occurred during configuration of the Auth plugin.
/// {@endtemplate}
class AuthConfigureFailed extends AuthEvent with ErrorEvent {
  /// {@macro amplify_auth_cognito.auth_configure_failed}
  const AuthConfigureFailed(this.exception) : super._();

  /// The configuration exception.
  @override
  final Exception exception;

  @override
  AuthEventType get type => AuthEventType.configureFailed;

  @override
  List<Object?> get props => [type, exception];
}
