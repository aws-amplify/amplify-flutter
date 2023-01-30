// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/model/sign_up_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

/// Discrete event types of the sign up flow.
enum SignUpEventType {
  /// {@macro amplify_auth_cognito.sign_up_inititate}
  initiate,

  /// {@macro amplify_auth_cognito.sign_up_confirm}
  confirm,

  /// {@macro amplify_auth_cognito.sign_up_succeeded}
  succeeded,

  /// {@macro amplify_auth_cognito.sign_up_failed}
  failed,
}

/// Discrete events of the sign up flow.
abstract class SignUpEvent extends AuthEvent<SignUpEventType, SignUpStateType> {
  const SignUpEvent._();

  /// {@macro amplify_auth_cognito.sign_up_inititate}
  const factory SignUpEvent.initiate({
    required SignUpParameters parameters,
    Map<String, String>? clientMetadata,
    Map<String, String>? userAttributes,
    Map<String, String>? validationData,
  }) = SignUpInitiate;

  /// {@macro amplify_auth_cognito.sign_up_confirm}
  const factory SignUpEvent.confirm({
    required String username,
    required String confirmationCode,
    Map<String, String>? clientMetadata,
  }) = SignUpConfirm;

  /// {@macro amplify_auth_cognito.sign_up_succeeded}
  const factory SignUpEvent.succeeded({
    String? userId,
  }) = SignUpSucceeded;

  /// {@macro amplify_auth_cognito.sign_up_failed}
  const factory SignUpEvent.failed(Exception exception) = SignUpFailed;

  @override
  String get runtimeTypeName => 'SignUpEvent';
}

/// {@template amplify_auth_cognito.sign_up_inititate}
/// Initiates the sign up flow.
/// {@endtemplate}
class SignUpInitiate extends SignUpEvent {
  /// {@macro amplify_auth_cognito.sign_up_inititate}
  const SignUpInitiate({
    required this.parameters,
    Map<String, String>? clientMetadata,
    Map<String, String>? userAttributes,
    Map<String, String>? validationData,
  })  : clientMetadata = clientMetadata ?? const {},
        userAttributes = userAttributes ?? const {},
        validationData = validationData ?? const {},
        super._();

  /// Flow-specific parameters.
  final SignUpParameters parameters;

  /// Client metadata.
  final Map<String, String> clientMetadata;

  /// User attributes.
  final Map<String, String> userAttributes;

  /// Validation data.
  final Map<String, String> validationData;

  @override
  SignUpEventType get type => SignUpEventType.initiate;

  @override
  List<Object?> get props => [
        type,
        parameters,
        clientMetadata,
        userAttributes,
        validationData,
      ];
}

/// {@template amplify_auth_cognito.sign_up_confirm}
/// Confirms a sign up.
/// {@endtemplate}
class SignUpConfirm extends SignUpEvent {
  /// {@macro amplify_auth_cognito.sign_up_confirm}
  const SignUpConfirm({
    required this.username,
    required this.confirmationCode,
    Map<String, String>? clientMetadata,
  })  : clientMetadata = clientMetadata ?? const {},
        super._();

  /// Username to confirm.
  final String username;

  /// Confirmation code provided by user.
  final String confirmationCode;

  /// Client metadata.
  final Map<String, String> clientMetadata;

  @override
  SignUpEventType get type => SignUpEventType.confirm;

  @override
  List<Object?> get props => [
        type,
        username,
        confirmationCode,
        clientMetadata,
      ];
}

/// {@template amplify_auth_cognito.sign_up_succeeded}
/// A successful sign up/confirm sign up event.
/// {@endtemplate}
class SignUpSucceeded extends SignUpEvent {
  /// {@macro amplify_auth_cognito.sign_up_succeeded}
  const SignUpSucceeded({
    this.userId,
  }) : super._();

  /// The ID of the user.
  final String? userId;

  @override
  SignUpEventType get type => SignUpEventType.succeeded;

  @override
  List<Object?> get props => [type, userId];
}

/// {@template amplify_auth_cognito.sign_up_failed}
/// A failure in a sign up/confirm sign up event.
/// {@endtemplate}
class SignUpFailed extends SignUpEvent with ErrorEvent {
  /// {@macro amplify_auth_cognito.sign_up_failed}
  const SignUpFailed(this.exception) : super._();

  /// The exception thrown signing up.
  @override
  final Exception exception;

  @override
  SignUpEventType get type => SignUpEventType.failed;

  @override
  List<Object?> get props => [type, exception];
}
