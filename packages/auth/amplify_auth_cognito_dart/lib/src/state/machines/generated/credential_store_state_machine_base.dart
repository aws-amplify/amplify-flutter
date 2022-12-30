// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.state.machines.credential_store_state_machine_base}
/// Generated definition for the credential store state machine.
/// {@endtemplate}
@internal
abstract class CredentialStoreStateMachineBase
    extends StateMachine<CredentialStoreEvent, CredentialStoreState> {
  /// {@macro amplify_auth_cognito.state.machines.credential_store_state_machine_base}
  CredentialStoreStateMachineBase(super.manager);

  @override
  CredentialStoreState get initialState =>
      const CredentialStoreState.notConfigured();

  @override
  Future<void> resolve(CredentialStoreEvent event) async {
    switch (event.type) {
      case CredentialStoreEventType.loadCredentialStore:
        event as CredentialStoreLoadCredentialStore;
        emit(const CredentialStoreState.loadingStoredCredentials());
        await onLoadCredentialStore(event);
        return;
      case CredentialStoreEventType.migrateLegacyCredentialStore:
        event as CredentialStoreMigrateLegacyCredentialStore;
        emit(const CredentialStoreState.migratingLegacyStore());
        await onMigrateLegacyCredentialStore(event);
        return;
      case CredentialStoreEventType.storeCredentials:
        event as CredentialStoreStoreCredentials;
        emit(const CredentialStoreState.storingCredentials());
        await onStoreCredentials(event);
        return;
      case CredentialStoreEventType.clearCredentials:
        event as CredentialStoreClearCredentials;
        emit(const CredentialStoreState.clearingCredentials());
        await onClearCredentials(event);
        return;
      case CredentialStoreEventType.succeeded:
        event as CredentialStoreSucceeded;
        emit(CredentialStoreState.success(event.data));
        return;
      case CredentialStoreEventType.failed:
        event as CredentialStoreFailed;
        emit(CredentialStoreState.failure(event.exception));
        return;
    }
  }

  @override
  CredentialStoreState? resolveError(Object error, [StackTrace? st]) {
    if (error is Exception) {
      return CredentialStoreFailure(error);
    }
    return null;
  }

  /// State machine callback for the [CredentialStoreLoadCredentialStore] event.
  Future<void> onLoadCredentialStore(CredentialStoreLoadCredentialStore event);

  /// State machine callback for the [CredentialStoreMigrateLegacyCredentialStore]
  /// event.
  Future<void> onMigrateLegacyCredentialStore(
    CredentialStoreMigrateLegacyCredentialStore event,
  );

  /// State machine callback for the [CredentialStoreStoreCredentials] event.
  Future<void> onStoreCredentials(CredentialStoreStoreCredentials event);

  /// State machine callback for the [CredentialStoreClearCredentials] event.
  Future<void> onClearCredentials(CredentialStoreClearCredentials event);
}
