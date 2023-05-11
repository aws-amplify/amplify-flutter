// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/flows/helpers.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.sign_up_state_machine}
/// Manages user sign up with Cognito.
/// {@endtemplate}
final class SignUpStateMachine
    extends AuthStateMachine<SignUpEvent, SignUpState> {
  /// {@macro amplify_auth_cognito.sign_up_state_machine}
  SignUpStateMachine(CognitoAuthStateMachine manager) : super(manager, type);

  /// The [SignUpStateMachine] type.
  static const type = StateMachineToken<SignUpEvent, SignUpState, AuthEvent,
      AuthState, CognitoAuthStateMachine, SignUpStateMachine>();

  @override
  SignUpState get initialState => const SignUpState.notStarted();

  @override
  String get runtimeTypeName => 'SignUpStateMachine';

  CognitoIdentityProviderClient get _cognito {
    final cognitoIdp = get<CognitoIdentityProviderClient>();
    if (cognitoIdp == null) {
      throw const InvalidAccountTypeException.noUserPool();
    }
    return cognitoIdp;
  }

  CognitoUserPoolConfig get _userPoolConfig {
    final userPoolConfig = get<CognitoUserPoolConfig>();
    if (userPoolConfig == null) {
      throw const InvalidAccountTypeException.noUserPool();
    }
    return userPoolConfig;
  }

  @override
  Future<void> resolve(SignUpEvent event) async {
    switch (event) {
      case SignUpInitiate _:
        emit(const SignUpState.initiating());
        await onInitiate(event);
      case SignUpConfirm _:
        emit(const SignUpState.confirming());
        await onConfirm(event);
      case SignUpSucceeded(:final userId):
        emit(SignUpState.success(userId: userId));
        await onSucceeded(event);
    }
  }

  @override
  SignUpState? resolveError(Object error, StackTrace st) {
    if (error is Exception) {
      return SignUpFailure(error, st);
    }
    return null;
  }

  /// State machine callback for the [SignUpInitiate] event.
  Future<void> onInitiate(SignUpInitiate event) async {
    final resp = await _cognito.signUp(
      SignUpRequest.build(
        (b) {
          b
            ..clientId = _userPoolConfig.appClientId
            ..username = event.parameters.username
            ..password = event.parameters.password
            ..clientMetadata.addAll(event.clientMetadata)
            ..userAttributes.addAll(
              event.userAttributes.entries.map(
                (attr) => AttributeType(
                  name: attr.key.key,
                  value: attr.value,
                ),
              ),
            )
            ..validationData.addAll(
              event.validationData.entries.map(
                (attr) => AttributeType(
                  name: attr.key,
                  value: attr.value,
                ),
              ),
            )
            ..analyticsMetadata = get<AnalyticsMetadataType>()?.toBuilder();

          final clientSecret = _userPoolConfig.appClientSecret;
          if (clientSecret != null) {
            b.secretHash = computeSecretHash(
              event.parameters.username,
              _userPoolConfig.appClientId,
              clientSecret,
            );
          }
        },
      ),
    ).result;

    if (resp.userConfirmed) {
      emit(SignUpState.success(userId: resp.userSub));
    } else {
      emit(
        SignUpState.needsConfirmation(
          userId: resp.userSub,
          codeDeliveryDetails: resp.codeDeliveryDetails,
        ),
      );
    }
  }

  /// State machine callback for the [SignUpConfirm] event.
  Future<void> onConfirm(SignUpConfirm event) async {
    await _cognito.confirmSignUp(
      ConfirmSignUpRequest.build((b) {
        b
          ..clientId = _userPoolConfig.appClientId
          ..username = event.username
          ..confirmationCode = event.confirmationCode
          ..clientMetadata.addAll(event.clientMetadata)
          ..analyticsMetadata = get<AnalyticsMetadataType>()?.toBuilder();

        final clientSecret = _userPoolConfig.appClientSecret;
        if (clientSecret != null) {
          b.secretHash = computeSecretHash(
            event.username,
            _userPoolConfig.appClientId,
            clientSecret,
          );
        }
      }),
    ).result;

    emit(const SignUpState.success());
  }

  /// State machine callback for the [SignUpSucceeded] event.
  Future<void> onSucceeded(SignUpSucceeded event) async {}
}
