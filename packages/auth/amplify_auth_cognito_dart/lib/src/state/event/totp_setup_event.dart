// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'auth_event.dart';

/// {@template amplify_auth_cognito.totp_setup_event_type}
/// Discrete event types of the TOTP setup state machine.
/// {@endtemplate}
enum TotpSetupEventType {
  /// {@macro amplify_auth_cognito.totp_setup_initiate}
  initiate,

  /// {@macro amplify_auth_cognito.totp_setup_verify}
  verify,
}

/// {@template amplify_auth_cognito.totp_setup_event}
/// Discrete events of the TOTP setup state machine.
/// {@endtemplate}
sealed class TotpSetupEvent
    extends AuthEvent<TotpSetupEventType, TotpSetupStateType> {
  const TotpSetupEvent._();

  /// {@macro amplify_auth_cognito.totp_setup_initiate}
  const factory TotpSetupEvent.initiate() = TotpSetupInitiate;

  /// {@macro amplify_auth_cognito.totp_setup_verify}
  const factory TotpSetupEvent.verify({
    required String code,
    String? friendlyDeviceName,
  }) = TotpSetupVerify;

  @override
  PreconditionException? checkPrecondition(TotpSetupState currentState) => null;

  @override
  String get runtimeTypeName => 'TotpSetupEvent';
}

/// {@template amplify_auth_cognito.totp_setup_initiate}
/// Inititates a TOTP setup for the current user.
/// {@endtemplate}
final class TotpSetupInitiate extends TotpSetupEvent {
  /// {@macro amplify_auth_cognito.totp_setup_initiate}
  const TotpSetupInitiate() : super._();

  @override
  PreconditionException? checkPrecondition(TotpSetupState currentState) {
    if (currentState.type == TotpSetupStateType.requiresVerification) {
      // This should not happen due to state machine queue.
      return const AuthPreconditionException(
        'TOTP setup already in progress',
        recoverySuggestion:
            'Call Amplify.Auth.verifyTotpSetup to complete the current setup',
      );
    }
    return null;
  }

  @override
  List<Object?> get props => [];

  @override
  TotpSetupEventType get type => TotpSetupEventType.initiate;
}

/// {@template amplify_auth_cognito.totp_setup_verify}
/// Verifies the active TOTP setup with an MFA code.
/// {@endtemplate}
final class TotpSetupVerify extends TotpSetupEvent {
  /// {@macro amplify_auth_cognito.totp_setup_verify}
  const TotpSetupVerify({
    required this.code,
    this.friendlyDeviceName,
  }) : super._();

  /// The MFA code sent to the registered TOTP device.
  final String code;

  /// A unique name to help identify the registered TOTP device.
  final String? friendlyDeviceName;

  @override
  PreconditionException? checkPrecondition(TotpSetupState currentState) {
    if (currentState.type != TotpSetupStateType.requiresVerification) {
      return const AuthPreconditionException(
        'There is no active TOTP setup',
        recoverySuggestion: 'Call Amplify.Auth.setUpTotp first',
      );
    }
    return null;
  }

  @override
  List<Object?> get props => [code, friendlyDeviceName];

  @override
  TotpSetupEventType get type => TotpSetupEventType.verify;
}
