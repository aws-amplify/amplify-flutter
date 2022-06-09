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

import 'package:amplify_auth_cognito_dart/src/state/state/auth_state.dart';
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
abstract class AuthEvent extends StateMachineEvent<AuthEventType> {
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
  String? checkPrecondition(AuthState currentState) => null;

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
  String? checkPrecondition(AuthState currentState) {
    if (currentState.type == AuthStateType.configuring) {
      return 'Already configuring';
    }
    if (currentState.type == AuthStateType.configured) {
      return 'Runtime re-configuration is not supported';
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
