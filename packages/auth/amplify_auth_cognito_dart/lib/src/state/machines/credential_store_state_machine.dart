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
import 'dart:convert';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/credential_store_keys.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/secure_storage_extension.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_configuration.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.auth_store_state_machine}
/// Manages the loading and storing of auth configuration data.
/// {@endtemplate}
class CredentialStoreStateMachine extends StateMachine<CredentialStoreEvent,
    CredentialStoreState, CognitoAuthStateMachine> {
  /// {@macro amplify_auth_cognito.auth_store_state_machine}
  CredentialStoreStateMachine(super.manager);

  /// The [CredentialStoreStateMachine] type.
  static const type = StateMachineToken<
      CredentialStoreEvent,
      CredentialStoreState,
      CognitoAuthStateMachine,
      CredentialStoreStateMachine>();

  @override
  CredentialStoreState get initialState =>
      const CredentialStoreState.notConfigured();

  @override
  String get runtimeTypeName => 'CredentialStoreStateMachine';

  SecureStorageInterface get _secureStorage => getOrCreate();

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

  /// Fetches the current credential store version.
  @visibleForTesting
  Future<CredentialStoreVersion> getVersion() async {
    final version = await _secureStorage.read(
      key: CredentialStoreKey.version.name,
    );
    return CredentialStoreVersion.values.byName(
      version ?? CredentialStoreVersion.none.name,
    );
  }

  /// Updates the current credential store version.
  FutureOr<void> _updateVersion(CredentialStoreVersion version) {
    return _secureStorage.write(
      key: CredentialStoreKey.version.name,
      value: version.name,
    );
  }

  /// Loads the credential store from storage and returns the data.
  Future<CredentialStoreData> _loadCredentialStore() async {
    final authConfig = expect<AuthConfiguration>();

    CognitoSignInDetails? signInDetails;
    CognitoUserPoolTokens? userPoolTokens;
    final userPoolConfig = authConfig.userPoolConfig;
    if (userPoolConfig != null) {
      final keys = CognitoUserPoolKeys(userPoolConfig);
      final accessToken = await _secureStorage.read(
        key: keys[CognitoUserPoolKey.accessToken],
      );
      final refreshToken = await _secureStorage.read(
        key: keys[CognitoUserPoolKey.refreshToken],
      );
      final idToken = await _secureStorage.read(
        key: keys[CognitoUserPoolKey.idToken],
      );
      final username = await _secureStorage.read(
        key: keys[CognitoUserPoolKey.username],
      );
      final authFlowType = await _secureStorage.read(
        key: keys[CognitoUserPoolKey.authFlowType],
      );
      if (accessToken != null && refreshToken != null && idToken != null) {
        final parsedIdToken = JsonWebToken.parse(idToken);
        userPoolTokens = CognitoUserPoolTokens(
          signInMethod: CognitoSignInMethod.default$,
          accessToken: JsonWebToken.parse(accessToken),
          refreshToken: refreshToken,
          idToken: parsedIdToken,
        );
        signInDetails = CognitoSignInDetails.apiBased(
          username: username ?? CognitoIdToken(parsedIdToken).username,
          authFlowType: authFlowType == null
              ? null
              : AuthFlowType.values.byValue(authFlowType),
        );
      }
    }

    final hostedUiConfig = authConfig.hostedUiConfig;
    if (hostedUiConfig != null) {
      final keys = HostedUiKeys(hostedUiConfig);
      final accessToken = await _secureStorage.read(
        key: keys[HostedUiKey.accessToken],
      );
      final refreshToken = await _secureStorage.read(
        key: keys[HostedUiKey.refreshToken],
      );
      final idToken = await _secureStorage.read(
        key: keys[HostedUiKey.idToken],
      );
      final provider = await _secureStorage.read(
        key: keys[HostedUiKey.provider],
      );
      if (accessToken != null && refreshToken != null && idToken != null) {
        userPoolTokens = CognitoUserPoolTokens(
          signInMethod: CognitoSignInMethod.hostedUi,
          accessToken: JsonWebToken.parse(accessToken),
          refreshToken: refreshToken,
          idToken: JsonWebToken.parse(idToken),
        );
        AuthProvider? authProvider;
        if (provider != null) {
          authProvider = AuthProvider.fromJson(
            jsonDecode(provider) as Map<String, Object?>,
          );
        }
        signInDetails = CognitoSignInDetails.hostedUi(provider: authProvider);
      }
    }

    String? identityId;
    AWSCredentials? awsCredentials;
    final identityPoolConfig = authConfig.identityPoolConfig;
    if (identityPoolConfig != null) {
      final keys = CognitoIdentityPoolKeys(identityPoolConfig);
      identityId = await _secureStorage.read(
        key: keys[CognitoIdentityPoolKey.identityId],
      );
      final accessKeyId = await _secureStorage.read(
        key: keys[CognitoIdentityPoolKey.accessKeyId],
      );
      final secretAccessKey = await _secureStorage.read(
        key: keys[CognitoIdentityPoolKey.secretAccessKey],
      );
      final sessionToken = await _secureStorage.read(
        key: keys[CognitoIdentityPoolKey.sessionToken],
      );
      final expirationStr = await _secureStorage.read(
        key: keys[CognitoIdentityPoolKey.expiration],
      );
      if (accessKeyId != null && secretAccessKey != null) {
        DateTime? expiration;
        if (expirationStr != null) {
          expiration = DateTime.tryParse(expirationStr);
        }
        awsCredentials = AWSCredentials(
          accessKeyId,
          secretAccessKey,
          sessionToken,
          expiration,
        );
      }
    }

    return CredentialStoreData(
      userPoolTokens: userPoolTokens,
      identityId: identityId,
      awsCredentials: awsCredentials,
      signInDetails: signInDetails,
    );
  }

  /// Stores the data to storage.
  Future<void> _storeCredentials(CredentialStoreData data) async {
    final userPoolTokens = data.userPoolTokens;
    final identityId = data.identityId;
    final awsCredentials = data.awsCredentials;
    final signInDetails = data.signInDetails;
    final authConfig = expect<AuthConfiguration>();

    final items = <String, String>{};
    final deletions = <String>[];

    final userPoolConfig = authConfig.userPoolConfig;
    if (userPoolConfig != null) {
      final keys = CognitoUserPoolKeys(userPoolConfig);
      if (userPoolTokens != null &&
          userPoolTokens.signInMethod == CognitoSignInMethod.default$) {
        signInDetails as CognitoSignInDetailsApiBased?;
        final username = signInDetails?.username;
        final authFlowType = signInDetails?.authFlowType;
        items.addAll({
          keys[CognitoUserPoolKey.accessToken]: userPoolTokens.accessToken.raw,
          keys[CognitoUserPoolKey.refreshToken]: userPoolTokens.refreshToken,
          keys[CognitoUserPoolKey.idToken]: userPoolTokens.idToken.raw,
          if (username != null) keys[CognitoUserPoolKey.username]: username,
          if (authFlowType != null)
            keys[CognitoUserPoolKey.authFlowType]: authFlowType.value,
        });
      }
    }

    final hostedUiConfig = authConfig.hostedUiConfig;
    if (hostedUiConfig != null) {
      final keys = HostedUiKeys(hostedUiConfig);
      if (userPoolTokens != null &&
          (userPoolTokens.signInMethod == CognitoSignInMethod.hostedUi)) {
        signInDetails as CognitoSignInDetailsHostedUi?;
        final provider = signInDetails?.provider;
        items.addAll({
          keys[HostedUiKey.accessToken]: userPoolTokens.accessToken.raw,
          keys[HostedUiKey.refreshToken]: userPoolTokens.refreshToken,
          keys[HostedUiKey.idToken]: userPoolTokens.idToken.raw,
          if (provider != null)
            keys[HostedUiKey.provider]: jsonEncode(provider),
        });
      }
    }

    final identityPoolConfig = authConfig.identityPoolConfig;
    if (identityPoolConfig != null) {
      final keys = CognitoIdentityPoolKeys(identityPoolConfig);
      if (identityId != null) {
        items[keys[CognitoIdentityPoolKey.identityId]] = identityId;
      }
      if (awsCredentials != null) {
        items.addAll({
          keys[CognitoIdentityPoolKey.accessKeyId]: awsCredentials.accessKeyId,
          keys[CognitoIdentityPoolKey.secretAccessKey]:
              awsCredentials.secretAccessKey,
        });

        final sessionToken = awsCredentials.sessionToken;
        if (sessionToken != null) {
          items[keys[CognitoIdentityPoolKey.sessionToken]] = sessionToken;
        } else {
          deletions.add(keys[CognitoIdentityPoolKey.sessionToken]);
        }
        final expiration = awsCredentials.expiration;
        if (expiration != null) {
          items[keys[CognitoIdentityPoolKey.expiration]] =
              expiration.toIso8601String();
        } else {
          deletions.add(keys[CognitoIdentityPoolKey.expiration]);
        }
      }
    }
    await _secureStorage.writeMany(items);
    await _secureStorage.deleteMany(deletions);
  }

  /// State machine callback for the
  /// [CredentialStoreMigrateLegacyCredentialStore] event.
  Future<void> onMigrateLegacyCredentialStore(
    CredentialStoreMigrateLegacyCredentialStore event,
  ) async {
    final version = await getVersion();
    if (version == CredentialStoreVersion.none) {
      final legacyCredentialProvider = get<LegacyCredentialProvider>();
      if (legacyCredentialProvider != null) {
        final authConfig = expect<AuthConfiguration>();
        try {
          final legacyData =
              await legacyCredentialProvider.fetchLegacyCredentials(
            userPoolConfig: authConfig.userPoolConfig,
            identityPoolConfig: authConfig.identityPoolConfig,
            hostedUiConfig: authConfig.hostedUiConfig,
          );
          if (legacyData != null) {
            await _storeCredentials(legacyData);
          }
        } on Object catch (e, s) {
          logger.error('Error migrating legacy credentials', e, s);
        } finally {
          try {
            await legacyCredentialProvider.deleteLegacyCredentials(
              userPoolConfig: authConfig.userPoolConfig,
              identityPoolConfig: authConfig.identityPoolConfig,
              hostedUiConfig: authConfig.hostedUiConfig,
            );
          } on Object catch (e, s) {
            logger.error('Error clearing legacy credentials', e, s);
          }
        }
      }

      await _updateVersion(CredentialStoreVersion.v1);
    }
    dispatch(const CredentialStoreEvent.loadCredentialStore());
  }

  /// State machine callback for the [CredentialStoreLoadCredentialStore] event.
  Future<void> onLoadCredentialStore(
    CredentialStoreLoadCredentialStore event,
  ) async {
    final data = await _loadCredentialStore();
    dispatch(CredentialStoreEvent.succeeded(data));
  }

  /// State machine callback for the [CredentialStoreStoreCredentials] event.
  Future<void> onStoreCredentials(
    CredentialStoreStoreCredentials event,
  ) async {
    await _storeCredentials(event.data);
    final data = await _loadCredentialStore();
    dispatch(CredentialStoreEvent.succeeded(data));
  }

  /// State machine callback for the [CredentialStoreClearCredentials] event.
  Future<void> onClearCredentials(
    CredentialStoreClearCredentials event,
  ) async {
    final authConfig = expect<AuthConfiguration>();

    final clearKeys = event.keys;
    final deletions = <String>[];
    bool shouldDelete(String key) =>
        clearKeys.isEmpty || clearKeys.contains(key);

    final userPoolConfig = authConfig.userPoolConfig;
    if (userPoolConfig != null) {
      final userPoolKeys = CognitoUserPoolKeys(userPoolConfig);
      for (final key in userPoolKeys) {
        if (shouldDelete(key)) {
          deletions.add(key);
        }
      }
    }

    final hostedUiConfig = authConfig.hostedUiConfig;
    if (hostedUiConfig != null) {
      final hostedUiKeys = HostedUiKeys(hostedUiConfig);
      for (final key in hostedUiKeys) {
        if (shouldDelete(key)) {
          deletions.add(key);
        }
      }
    }

    final identityPoolConfig = authConfig.identityPoolConfig;
    if (identityPoolConfig != null) {
      final identityPoolKeys = CognitoIdentityPoolKeys(identityPoolConfig);
      for (final key in identityPoolKeys) {
        if (shouldDelete(key)) {
          deletions.add(key);
        }
      }
    }

    await _secureStorage.deleteMany(deletions);
    final data = await _loadCredentialStore();
    dispatch(CredentialStoreEvent.succeeded(data));
  }
}
