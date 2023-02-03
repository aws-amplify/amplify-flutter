// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.credential_store_event_type}
/// Discrete event types of the credential store state machine.
/// {@endtemplate}
enum CredentialStoreEventType {
  /// {@macro amplify_auth_cognito.credential_store_load}
  loadCredentialStore,

  /// {@macro amplify_auth_cognito.store_credentials}
  storeCredentials,

  /// {@macro amplify_auth_cognito.clear_credentials}
  clearCredentials,

  /// {@macro amplify_auth_cognito.credential_store_succeeded}
  succeeded,

  /// {@macro amplify_auth_cognito.credential_store_failed}
  failed,
}

/// {@template amplify_auth_cognito.credential_store_event}
/// Discrete events of the credential store state machine.
/// {@endtemplate}
abstract class CredentialStoreEvent
    extends AuthEvent<CredentialStoreEventType, CredentialStoreStateType> {
  /// {@macro amplify_auth_cognito.credential_store_event}
  const CredentialStoreEvent._();

  /// {@macro amplify_auth_cognito.credential_store_load}
  const factory CredentialStoreEvent.loadCredentialStore() =
      CredentialStoreLoadCredentialStore;

  /// {@macro amplify_auth_cognito.store_credentials}
  const factory CredentialStoreEvent.storeCredentials(
    CredentialStoreData data,
  ) = CredentialStoreStoreCredentials;

  /// {@macro amplify_auth_cognito.clear_credentials}
  const factory CredentialStoreEvent.clearCredentials([
    Iterable<String> keys,
  ]) = CredentialStoreClearCredentials;

  /// {@macro amplify_auth_cognito.credential_store_succeeded}
  const factory CredentialStoreEvent.succeeded(CredentialStoreData data) =
      CredentialStoreSucceeded;

  /// {@macro amplify_auth_cognito.credential_store_failed}
  const factory CredentialStoreEvent.failed(Exception exception) =
      CredentialStoreFailed;

  @override
  PreconditionException? checkPrecondition(
    CredentialStoreState currentState,
  ) =>
      null;

  @override
  String get runtimeTypeName => 'CredentialStoreEvent';
}

/// {@template amplify_auth_cognito.credential_store_load}
/// Initiates loading of previously-stored credentials.
/// {@endtemplate}
class CredentialStoreLoadCredentialStore extends CredentialStoreEvent {
  /// {@macro amplify_auth_cognito.credential_store_load}
  const CredentialStoreLoadCredentialStore() : super._();

  @override
  CredentialStoreEventType get type =>
      CredentialStoreEventType.loadCredentialStore;

  @override
  List<Object?> get props => [type];

  @override
  PreconditionException? checkPrecondition(
    CredentialStoreState currentState,
  ) {
    if (currentState.type != CredentialStoreStateType.notConfigured &&
        currentState.type != CredentialStoreStateType.failure) {
      return const AuthPreconditionException(
        'Credential store already configured',
        shouldEmit: false,
      );
    }
    return null;
  }
}

/// {@template amplify_auth_cognito.store_credentials}
/// Initiates storing of user credentials.
/// {@endtemplate}
class CredentialStoreStoreCredentials extends CredentialStoreEvent {
  /// {@macro amplify_auth_cognito.store_credentials}
  const CredentialStoreStoreCredentials(this.data) : super._();

  /// {@macro amplify_auth_cognito_dart.credential_store_state.credential_store_data}
  final CredentialStoreData data;

  @override
  CredentialStoreEventType get type =>
      CredentialStoreEventType.storeCredentials;

  @override
  List<Object?> get props => [
        type,
        data,
      ];

  @override
  PreconditionException? checkPrecondition(
    CredentialStoreState currentState,
  ) {
    if (currentState.type == CredentialStoreStateType.notConfigured) {
      return const AuthPreconditionException(
        'Credential store is not configured',
      );
    }
    if (currentState.type == CredentialStoreStateType.failure) {
      return const AuthPreconditionException(
        'Credential store has error. Re-load before continuing.',
      );
    }
    return null;
  }
}

/// {@template amplify_auth_cognito.clear_credentials}
/// Initiates clearing of the credential store.
/// {@endtemplate}
class CredentialStoreClearCredentials extends CredentialStoreEvent {
  /// {@macro amplify_auth_cognito.clear_credentials}
  const CredentialStoreClearCredentials([
    this.keys = const [],
  ]) : super._();

  /// When set, only these keys will be cleared from the store. Otherwise,
  /// all keys are cleared.
  final Iterable<String> keys;

  @override
  CredentialStoreEventType get type =>
      CredentialStoreEventType.clearCredentials;

  @override
  List<Object?> get props => [type, keys];

  @override
  PreconditionException? checkPrecondition(
    CredentialStoreState currentState,
  ) {
    if (currentState.type == CredentialStoreStateType.notConfigured) {
      return const AuthPreconditionException(
        'Credential store is not configured',
      );
    }
    if (currentState.type == CredentialStoreStateType.failure) {
      return const AuthPreconditionException(
        'Credential store has error. Re-load before continuing.',
      );
    }
    return null;
  }
}

/// {@template amplify_auth_cognito.credential_store_succeeded}
/// Successful completion of a credential store task.
/// {@endtemplate}
class CredentialStoreSucceeded extends CredentialStoreEvent {
  /// {@macro amplify_auth_cognito.credential_store_succeeded}
  const CredentialStoreSucceeded(this.data) : super._();

  /// {@macro amplify_auth_cognito_dart.credential_store_state.credential_store_data}
  final CredentialStoreData data;

  @override
  CredentialStoreEventType get type => CredentialStoreEventType.succeeded;

  @override
  List<Object?> get props => [
        type,
        data,
      ];

  @override
  PreconditionException? checkPrecondition(
    CredentialStoreState currentState,
  ) {
    if (currentState.type == CredentialStoreStateType.notConfigured) {
      return const AuthPreconditionException(
        'Credential store is not configured',
      );
    }
    return null;
  }
}

/// {@template amplify_auth_cognito.credential_store_failed}
/// Failure in a credential store task.
/// {@endtemplate}
class CredentialStoreFailed extends CredentialStoreEvent with ErrorEvent {
  /// {@macro amplify_auth_cognito.credential_store_failed}
  const CredentialStoreFailed(this.exception) : super._();

  /// The credential store exception.
  @override
  final Exception exception;

  @override
  CredentialStoreEventType get type => CredentialStoreEventType.failed;

  @override
  List<Object?> get props => [type, exception];

  @override
  PreconditionException? checkPrecondition(
    CredentialStoreState currentState,
  ) {
    return null;
  }
}
