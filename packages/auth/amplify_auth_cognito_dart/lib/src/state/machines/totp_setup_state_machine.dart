// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/jwt/src/cognito.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    hide EnableSoftwareTokenMfaException, CodeMismatchException;
import 'package:amplify_auth_cognito_dart/src/sdk/sdk_bridge.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/sdk_exception.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.totp_setup_state_machine}
/// Manages setting up a TOTP device for the active user.
/// {@endtemplate}
final class TotpSetupStateMachine
    extends AuthStateMachine<TotpSetupEvent, TotpSetupState> {
  /// {@macro amplify_auth_cognito.totp_setup_state_machine}
  TotpSetupStateMachine(CognitoAuthStateMachine manager) : super(manager, type);

  /// The [TotpSetupStateMachine] type.
  static const type = StateMachineToken<TotpSetupEvent, TotpSetupState,
      AuthEvent, AuthState, CognitoAuthStateMachine, TotpSetupStateMachine>();

  @override
  TotpSetupState get initialState => const TotpSetupState.idle();

  @override
  Future<void> resolve(TotpSetupEvent event) async {
    switch (event) {
      case TotpSetupInitiate _:
        await _onInitiate(event);
      case TotpSetupVerify _:
        await _onVerify(event);
    }
  }

  @override
  TotpSetupState? resolveError(Object error, StackTrace st) {
    if (error is Exception) {
      return TotpSetupFailure(error, st);
    }
    return null;
  }

  @override
  String get runtimeTypeName => 'TotpSetupStateMachine';

  /// The Cognito Identity Provider client.
  CognitoIdentityProviderClient get _cognitoIdp => expect();

  String? _session;
  TotpSetupDetails? _details;

  Future<void> _onInitiate(TotpSetupInitiate event) async {
    final tokens = await manager.getUserPoolTokens();
    final response = await _cognitoIdp
        .associateSoftwareToken(
          AssociateSoftwareTokenRequest(
            accessToken: tokens.accessToken.raw,
          ),
        )
        .result;
    _session = response.session;
    _details = TotpSetupDetails(
      username: CognitoIdToken(tokens.idToken).username,
      sharedSecret: response.secretCode!,
    );
    emit(
      TotpSetupState.requiresVerification(
        _details!,
      ),
    );
  }

  Future<void> _onVerify(TotpSetupVerify event) async {
    final tokens = await manager.getUserPoolTokens();
    final accessToken = tokens.accessToken.raw;

    try {
      await _cognitoIdp
          .verifySoftwareToken(
            VerifySoftwareTokenRequest(
              accessToken: accessToken,
              session: _session,
              userCode: event.code,
              friendlyDeviceName: event.friendlyDeviceName,
            ),
          )
          .result;
    } on Exception catch (e) {
      // Handle mismatch code exception that may occur during TOTP verification.
      // See: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_VerifySoftwareToken.html#API_VerifySoftwareToken_Errors
      if (e is EnableSoftwareTokenMfaException || e is CodeMismatchException) {
        assert(
          _details != null,
          'TotpSetupDetails should not be null. Please report this issue.',
        );
        logger.verbose(
          'Failed to verify TOTP code. Allowing retry...',
          e,
        );
        emit(
          TotpSetupState.requiresVerification(
            _details!,
          ),
        );
        return;
      }
      rethrow;
    }

    try {
      await _cognitoIdp.setMfaSettings(
        accessToken: accessToken,
        totp: MfaPreference.enabled,
      );
    } on Exception catch (e, st) {
      logger.error(
        'Failed to set MFA settings. '
        'Call `Amplify.Auth.updateMfaPreference(totp: MfaPreference.enabled)` to fix this.',
        e,
        st,
      );
    } finally {
      _session = null;
      emit(const TotpSetupState.success());
    }
  }
}
