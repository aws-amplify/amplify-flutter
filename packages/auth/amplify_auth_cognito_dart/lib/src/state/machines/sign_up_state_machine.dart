// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/flows/helpers.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.sign_up_state_machine}
/// Manages user sign up with Cognito.
/// {@endtemplate}
class SignUpStateMachine
    extends StateMachine<SignUpEvent, SignUpState, CognitoAuthStateMachine> {
  /// {@macro amplify_auth_cognito.sign_up_state_machine}
  SignUpStateMachine(super.manager);

  /// The [SignUpStateMachine] type.
  static const type = StateMachineToken<SignUpEvent, SignUpState,
      CognitoAuthStateMachine, SignUpStateMachine>();

  @override
  SignUpState get initialState => const SignUpState.notStarted();

  @override
  String get runtimeTypeName => 'SignUpStateMachine';

  CognitoIdentityProviderClient get _cognito => expect();
  CognitoUserPoolConfig get _userPoolConfig => expect();

  @override
  Future<void> resolve(SignUpEvent event) async {
    switch (event.type) {
      case SignUpEventType.initiate:
        event as SignUpInitiate;
        emit(const SignUpState.initiating());
        await onInitiate(event);
        break;
      case SignUpEventType.confirm:
        event as SignUpConfirm;
        emit(const SignUpState.confirming());
        await onConfirm(event);
        break;
      case SignUpEventType.succeeded:
        event as SignUpSucceeded;
        emit(SignUpState.success(userId: event.userId));
        await onSucceeded(event);
        break;
      case SignUpEventType.failed:
        event as SignUpFailed;
        emit(SignUpState.failure(event.exception));
        await onFailed(event);
        break;
    }
  }

  @override
  SignUpState? resolveError(Object error, [StackTrace? st]) {
    if (error is Exception) {
      return SignUpFailure(error);
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
                  name: attr.key,
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
            );

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
      dispatch(SignUpEvent.succeeded(userId: resp.userSub));
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
          ..clientMetadata.addAll(event.clientMetadata);

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

    dispatch(const SignUpEvent.succeeded());
  }

  /// State machine callback for the [SignUpSucceeded] event.
  Future<void> onSucceeded(SignUpSucceeded event) async {}

  /// State machine callback for the [SignUpFailed] event.
  Future<void> onFailed(SignUpFailed event) async {}
}
