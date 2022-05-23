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

import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
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
        emit(
          CredentialStoreState.success(
            userPoolTokens: event.userPoolTokens,
            identityId: event.identityId,
            awsCredentials: event.awsCredentials,
            deviceSecrets: event.deviceSecrets,
          ),
        );
        return;
      case CredentialStoreEventType.failed:
        event as CredentialStoreFailed;
        emit(CredentialStoreState.failure(event.exception));
        return;
    }
  }

  @override
  CredentialStoreState? resolveError(Object error, [StackTrace? st]) {
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
