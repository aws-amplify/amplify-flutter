// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.sign_out_state_machine}
/// Manages signing out a user and clearing credentials from the local store.
/// {@endtemplate}
class SignOutStateMachine extends AuthStateMachine<SignOutEvent, SignOutState> {
  /// {@macro amplify_auth_cognito.sign_out_state_machine}
  SignOutStateMachine(CognitoAuthStateMachine manager) : super(manager, type);

  /// The [SignOutStateMachine] type.
  static const type = StateMachineToken<SignOutEvent, SignOutState, AuthEvent,
      AuthState, CognitoAuthStateMachine, SignOutStateMachine>();

  @override
  SignOutState get initialState => const SignOutState.idle();

  @override
  Future<void> resolve(SignOutEvent event) async {
    switch (event.type) {
      case SignOutEventType.initiate:
        event as SignOutInitiate;
        await _onInitiate(event);
        break;
    }
  }

  @override
  SignOutState? resolveError(Object error, StackTrace st) {
    if (error is Exception) {
      return SignOutFailure(error);
    }
    return null;
  }

  @override
  String get runtimeTypeName => 'SignOutStateMachine';

  /// The Cognito Identity Provider client.
  CognitoIdentityProviderClient get _cognitoIdp => expect();

  /// The Cognito identity pool configuration.
  CognitoIdentityCredentialsProvider? get _identityPoolConfig => get();

  /// The Cognito user pool configuration.
  CognitoUserPoolConfig get _userPoolConfig => expect();

  Future<void> _onInitiate(SignOutInitiate event) async {
    final options = event.options;

    // Try to retrieve tokens and return successfully if already logged out.
    // Do not clear other storage items (e.g. AWS credentials) in this case,
    // since an unauthenticated user may still be cached.
    final CognitoUserPoolTokens tokens;
    try {
      tokens = await manager.getUserPoolTokens();
    } on SignedOutException {
      return emit(const SignOutState.success());
    }

    // Capture results of individual steps to determine overall success.
    HostedUiException? hostedUiException;
    GlobalSignOutException? globalSignOutException;
    RevokeTokenException? revokeTokenException;

    // Sign out via Hosted UI, if configured.
    Future<void> signOutHostedUi() async {
      if (tokens.signInMethod == CognitoSignInMethod.hostedUi) {
        final hostedUiResult = await manager.signOutHostedUI();
        if (hostedUiResult is HostedUiFailure) {
          final exception = hostedUiResult.exception;
          if (exception is UserCancelledException) {
            throw exception;
          }
          hostedUiException = HostedUiException(
            underlyingException: hostedUiResult.exception,
          );
        }
      }
    }

    // On native platforms, Hosted UI should be logged out first. This gives
    // users the opportunity to cancel the sign out flow if they wish before
    // credentials are revoked and cleared.
    //
    // On Web, this should be the very last thing to happen. Since we redirect
    // as a result of signing out Hosted UI, credentials should be revoked and
    // cleared before this happens.
    if (!zIsWeb) {
      await signOutHostedUi();
    }

    // Do not try to send Cognito requests for plugin configs without an
    // Identity Pool, since the requests will fail.
    if (_identityPoolConfig != null) {
      if (options.globalSignOut) {
        // Revokes the refresh token
        try {
          await _cognitoIdp
              .globalSignOut(
                GlobalSignOutRequest(
                  accessToken: tokens.accessToken.raw,
                ),
              )
              .result;
        } on Exception catch (e) {
          globalSignOutException = GlobalSignOutException(
            accessToken: tokens.accessToken.raw,
            underlyingException: e,
          );
        }
      }
      // Revokes the access token
      if (globalSignOutException != null) {
        revokeTokenException = RevokeTokenException(
          refreshToken: tokens.refreshToken,
          underlyingException: Exception(
            'RevokeToken not attempted because GlobalSignOut failed.',
          ),
        );
      } else {
        try {
          await _cognitoIdp
              .revokeToken(
                RevokeTokenRequest(
                  clientId: _userPoolConfig.appClientId,
                  clientSecret: _userPoolConfig.appClientSecret,
                  token: tokens.refreshToken,
                ),
              )
              .result;
        } on Exception catch (e) {
          revokeTokenException = RevokeTokenException(
            refreshToken: tokens.refreshToken,
            underlyingException: e,
          );
        }
      }
    }

    // Credentials are cleared for all partial sign out cases.
    await dispatchAndComplete(
      const CredentialStoreEvent.clearCredentials(),
    );

    if (globalSignOutException != null || revokeTokenException != null) {
      return emit(
        SignOutState.partialFailure(
          hostedUiException: hostedUiException,
          globalSignOutException: globalSignOutException,
          revokeTokenException: revokeTokenException,
        ),
      );
    }

    if (zIsWeb) {
      await signOutHostedUi();
    }

    if (hostedUiException != null) {
      return emit(
        SignOutState.partialFailure(
          hostedUiException: hostedUiException,
          globalSignOutException: globalSignOutException,
          revokeTokenException: revokeTokenException,
        ),
      );
    }

    return emit(const SignOutState.success());
  }
}
