// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
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
}

/// Discrete events of the hosted UI state machine.
abstract class HostedUiEvent
    extends AuthEvent<HostedUiEventType, HostedUiStateType> {
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
    CognitoSignInWithWebUIPluginOptions options,
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
    this.options = const CognitoSignInWithWebUIPluginOptions(),
    this.provider,
    this.redirectUri,
  }) : super._();

  /// The plugin options.
  final CognitoSignInWithWebUIPluginOptions options;

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
  PreconditionException? checkPrecondition(HostedUiState currentState) {
    if (currentState.type != HostedUiStateType.signingIn) {
      return const AuthPreconditionException(
        'There is no active sign-in session',
        shouldEmit: false,
      );
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
  PreconditionException? checkPrecondition(HostedUiState currentState) {
    switch (currentState.type) {
      case HostedUiStateType.notConfigured:
        return const AuthPreconditionException('Hosted UI is not configured');
      case HostedUiStateType.configuring:
        return const AuthPreconditionException('Hosted UI is configuring');
      case HostedUiStateType.signingIn:
        return const AuthPreconditionException('Hosted UI is signing in');
      case HostedUiStateType.signedOut:
        return const AuthPreconditionException(
          'Hosted UI is already signed out',
          shouldEmit: false,
        );
      case HostedUiStateType.signingOut:
        return const AuthPreconditionException(
          'Hosted UI is already signing out',
        );
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
  List<Object?> get props => [type, tokens];

  @override
  HostedUiEventType get type => HostedUiEventType.succeeded;
}
