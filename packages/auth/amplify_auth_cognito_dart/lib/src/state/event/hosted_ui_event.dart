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

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

/// Discrete event types of the hosted UI state machine.
enum HostedUiEventType {
  /// {@macro amplify_auth_cognito.hosted_ui_configure}
  configure,

  /// {@macro amplify_auth_cognito.hosted_ui_found_state}
  foundState,

  /// {@macro amplify_auth_cognito.hosted_ui_sign_in}
  signIn,

  /// {@macro amplify_auth_cognito.hosted_ui_cancel_sign_in}
  cancelSignIn,

  /// {@macro amplify_auth_cognito.hosted_ui_exchange}
  exchange,

  /// {@macro amplify_auth_cognito.hosted_ui_sign_out}
  signOut,

  /// {@macro amplify_auth_cognito.hosted_ui_succeeded}
  succeeded,

  /// {@macro amplify_auth_cognito.hosted_ui_failed}
  failed,
}

/// Discrete events of the hosted UI state machine.
abstract class HostedUiEvent extends StateMachineEvent<HostedUiEventType> {
  const HostedUiEvent._();

  /// {@macro amplify_auth_cognito.hosted_ui_configure}
  const factory HostedUiEvent.configure() = HostedUiConfigure;

  /// {@macro amplify_auth_cognito.hosted_ui_found_state}
  const factory HostedUiEvent.foundState({
    required String state,
    required String codeVerifier,
  }) = HostedUiFoundState;

  /// {@macro amplify_auth_cognito.hosted_ui_sign_in}
  const factory HostedUiEvent.signIn({
    CognitoSignInWithWebUIOptions options,
    AuthProvider? provider,
    Uri? redirectUri,
  }) = HostedUiSignIn;

  /// {@macro amplify_auth_cognito.hosted_ui_cancel_sign_in}
  const factory HostedUiEvent.cancelSignIn() = HostedUiCancelSignIn;

  /// {@macro amplify_auth_cognito.hosted_ui_exchange}
  const factory HostedUiEvent.exchange(OAuthParameters parameters) =
      HostedUiExchange;

  /// {@macro amplify_auth_cognito.hosted_ui_sign_out}
  const factory HostedUiEvent.signOut() = HostedUiSignOut;

  /// {@macro amplify_auth_cognito.hosted_ui_succeeded}
  const factory HostedUiEvent.succeeded(
    CognitoUserPoolTokens tokens,
  ) = HostedUiSucceeded;

  /// {@macro amplify_auth_cognito.hosted_ui_failed}
  const factory HostedUiEvent.failed(Exception exception) = HostedUiFailed;

  @override
  String get runtimeTypeName => 'HostedUiEvent';
}

/// {@template amplify_auth_cognito.hosted_ui_configure}
/// Configure the hosted UI flow for use.
/// {@endtemplate}
class HostedUiConfigure extends HostedUiEvent {
  /// {@macro amplify_auth_cognito.hosted_ui_configure}
  const HostedUiConfigure() : super._();

  @override
  List<Object?> get props => [type];

  @override
  HostedUiEventType get type => HostedUiEventType.configure;
}

/// {@template amplify_auth_cognito.hosted_ui_found_state}
/// The hosted UI flow was found to be in a partially complete state.
/// {@endtemplate}
class HostedUiFoundState extends HostedUiEvent {
  /// {@macro amplify_auth_cognito.hosted_ui_found_state}
  const HostedUiFoundState({
    required this.state,
    required this.codeVerifier,
  }) : super._();

  /// The previous OAuth state found in storage.
  final String state;

  /// The previous OAuth code verifier found in storage.
  final String codeVerifier;

  @override
  List<Object?> get props => [type, state, codeVerifier];

  @override
  HostedUiEventType get type => HostedUiEventType.foundState;
}

/// {@template amplify_auth_cognito.hosted_ui_sign_in}
/// Sign in via the hosted UI flow.
/// {@endtemplate}
class HostedUiSignIn extends HostedUiEvent {
  /// {@macro amplify_auth_cognito.hosted_ui_sign_in}
  const HostedUiSignIn({
    this.options = const CognitoSignInWithWebUIOptions(),
    this.provider,
    this.redirectUri,
  }) : super._();

  /// The plugin options.
  final CognitoSignInWithWebUIOptions options;

  /// The provider used for sign-in.
  ///
  /// If none is provided, the default login page will be shown.
  final AuthProvider? provider;

  /// The redirect URI to use, if different from the the default.
  final Uri? redirectUri;

  @override
  List<Object?> get props => [
        type,
        options,
        provider,
        redirectUri,
      ];

  @override
  HostedUiEventType get type => HostedUiEventType.signIn;
}

/// {@template amplify_auth_cognito.hosted_ui_cancel_sign_in}
/// Cancels the hosted UI flow.
/// {@endtemplate}
class HostedUiCancelSignIn extends HostedUiEvent {
  /// {@macro amplify_auth_cognito.hosted_ui_cancel_sign_in}
  const HostedUiCancelSignIn() : super._();

  @override
  List<Object?> get props => [type];

  @override
  HostedUiEventType get type => HostedUiEventType.cancelSignIn;

  @override
  String? checkPrecondition(HostedUiState currentState) {
    if (currentState.type != HostedUiStateType.signingIn) {
      return 'There is no active sign-in session';
    }
    return null;
  }
}

/// {@template amplify_auth_cognito.hosted_ui_exchange}
/// Perform the `exchange` portion of the hosted UI flow.
/// {@endtemplate}
class HostedUiExchange extends HostedUiEvent {
  /// {@macro amplify_auth_cognito.hosted_ui_exchange}
  const HostedUiExchange(this.parameters) : super._();

  /// The query parameters returned from the call to `authorize`.
  final OAuthParameters parameters;

  @override
  List<Object?> get props => [type, parameters];

  @override
  HostedUiEventType get type => HostedUiEventType.exchange;
}

/// {@template amplify_auth_cognito.hosted_ui_sign_out}
/// Signs out a user who signed in with the Hosted UI flow.
/// {@endtemplate}
class HostedUiSignOut extends HostedUiEvent {
  /// {@macro amplify_auth_cognito.hosted_ui_sign_out}
  const HostedUiSignOut() : super._();

  @override
  List<Object?> get props => [type];

  @override
  HostedUiEventType get type => HostedUiEventType.signOut;

  @override
  String? checkPrecondition(HostedUiState currentState) {
    switch (currentState.type) {
      case HostedUiStateType.notConfigured:
        return 'Hosted UI is not configured';
      case HostedUiStateType.configuring:
        return 'Hosted UI is configuring';
      case HostedUiStateType.signingIn:
        return 'Hosted UI is signing in';
      case HostedUiStateType.signedOut:
        return 'Hosted UI is already signed out';
      case HostedUiStateType.signingOut:
        return 'Hosted UI is already signing out';
      case HostedUiStateType.signedIn:
      case HostedUiStateType.failure:
        return null;
    }
  }
}

/// {@template amplify_auth_cognito.hosted_ui_succeeded}
/// The user successfully logged in via the hosted UI flow.
/// {@endtemplate}
class HostedUiSucceeded extends HostedUiEvent {
  /// {@macro amplify_auth_cognito.hosted_ui_succeeded}
  const HostedUiSucceeded(this.tokens) : super._();

  /// The tokens retrieved via the hosted UI flow.
  final CognitoUserPoolTokens tokens;

  @override
  List<Object?> get props => [type];

  @override
  HostedUiEventType get type => HostedUiEventType.succeeded;
}

/// {@template amplify_auth_cognito.hosted_ui_failed}
/// The Hosted UI flow failed with an [exception].
/// {@endtemplate}
class HostedUiFailed extends HostedUiEvent with ErrorEvent {
  /// {@macro amplify_auth_cognito.hosted_ui_failed}
  const HostedUiFailed(this.exception) : super._();

  /// The Hosted UI exception.
  @override
  final Exception exception;

  @override
  List<Object?> get props => [type, exception];

  @override
  HostedUiEventType get type => HostedUiEventType.failed;
}
