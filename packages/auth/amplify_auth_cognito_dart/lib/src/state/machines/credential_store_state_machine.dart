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

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_configuration.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_device_secrets.dart';
import 'package:amplify_auth_cognito_dart/src/state/machines/generated/credential_store_state_machine_base.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:stream_transform/stream_transform.dart';

/// {@template amplify_auth_cognito.auth_store_state_machine}
/// Manages the loading and storing of auth configuration data.
/// {@endtemplate}
class CredentialStoreStateMachine extends CredentialStoreStateMachineBase {
  /// {@macro amplify_auth_cognito.auth_store_state_machine}
  CredentialStoreStateMachine(super.manager);

  /// The [CredentialStoreStateMachine] type.
  static const type = StateMachineToken<CredentialStoreEvent,
      CredentialStoreState, CredentialStoreStateMachine>();

  SecureStorageInterface get _secureStorage => getOrCreate();

  /// Gets the current credentials result.
  Future<CredentialStoreSuccess> getCredentialsResult() async {
    // Wait for any pending events to be processed and their initial states to
    // fire. Helps protect against the case where we call `credentialStoreMachine.clear()`
    // in the same loop as `credentialStoreMachine.get()`, we want the second
    // call to fail.
    await Future<void>.delayed(Duration.zero);
    final credentialsState = await stream.startWith(currentState).firstWhere(
          (state) =>
              state is CredentialStoreFailure ||
              state is CredentialStoreSuccess,
        );
    if (credentialsState is CredentialStoreFailure) {
      throw credentialsState.exception;
    }
    return credentialsState as CredentialStoreSuccess;
  }

  /// Loads the credential store from storage and emits the resulting values.
  Future<void> _loadCredentialStore() async {
    final authConfig = expect<AuthConfiguration>();

    CognitoUserPoolTokens? userPoolTokens;
    CognitoDeviceSecrets? deviceSecrets;
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
      if (accessToken != null && refreshToken != null && idToken != null) {
        userPoolTokens = CognitoUserPoolTokens(
          signInMethod: CognitoSignInMethod.default$,
          accessToken: JsonWebToken.parse(accessToken),
          refreshToken: refreshToken,
          idToken: JsonWebToken.parse(idToken),
        );
      }

      final deviceKey = await _secureStorage.read(
        key: keys[CognitoUserPoolKey.deviceKey],
      );
      final deviceGroupKey = await _secureStorage.read(
        key: keys[CognitoUserPoolKey.deviceGroupKey],
      );
      if (deviceKey != null && deviceGroupKey != null) {
        deviceSecrets = CognitoDeviceSecrets(
          (b) => b
            ..deviceKey = deviceKey
            ..deviceGroupKey = deviceGroupKey,
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
      if (accessToken != null && refreshToken != null && idToken != null) {
        userPoolTokens = CognitoUserPoolTokens(
          signInMethod: CognitoSignInMethod.hostedUi,
          accessToken: JsonWebToken.parse(accessToken),
          refreshToken: refreshToken,
          idToken: JsonWebToken.parse(idToken),
        );
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

    emit(
      CredentialStoreState.success(
        userPoolTokens: userPoolTokens,
        identityId: identityId,
        awsCredentials: awsCredentials,
        deviceSecrets: deviceSecrets,
      ),
    );
  }

  @override
  Future<void> onLoadCredentialStore(
    CredentialStoreLoadCredentialStore event,
  ) async {
    await _loadCredentialStore();
  }

  @override
  Future<void> onMigrateLegacyCredentialStore(
    CredentialStoreMigrateLegacyCredentialStore event,
  ) async {
    // TODO(Jordan-Nelson): Implement migration flow
    emit(const CredentialStoreState.success());
  }

  @override
  Future<void> onStoreCredentials(
    CredentialStoreStoreCredentials event,
  ) async {
    final authConfig = expect<AuthConfiguration>();

    final userPoolConfig = authConfig.userPoolConfig;
    if (userPoolConfig != null) {
      final keys = CognitoUserPoolKeys(userPoolConfig);
      final userPoolTokens = event.userPoolTokens;
      if (userPoolTokens != null &&
          userPoolTokens.signInMethod == CognitoSignInMethod.default$) {
        _secureStorage
          ..write(
            key: keys[CognitoUserPoolKey.accessToken],
            value: userPoolTokens.accessToken.raw,
          )
          ..write(
            key: keys[CognitoUserPoolKey.refreshToken],
            value: userPoolTokens.refreshToken,
          )
          ..write(
            key: keys[CognitoUserPoolKey.idToken],
            value: userPoolTokens.idToken.raw,
          );
      }

      final deviceSecrets = event.deviceSecrets;
      if (deviceSecrets != null) {
        _secureStorage
          ..write(
            key: keys[CognitoUserPoolKey.deviceKey],
            value: deviceSecrets.deviceKey,
          )
          ..write(
            key: keys[CognitoUserPoolKey.deviceGroupKey],
            value: deviceSecrets.deviceGroupKey,
          );
      }
    }

    final hostedUiConfig = authConfig.hostedUiConfig;
    if (hostedUiConfig != null) {
      final keys = HostedUiKeys(hostedUiConfig);
      final userPoolTokens = event.userPoolTokens;
      if (userPoolTokens != null &&
          userPoolTokens.signInMethod == CognitoSignInMethod.hostedUi) {
        _secureStorage
          ..write(
            key: keys[HostedUiKey.accessToken],
            value: userPoolTokens.accessToken.raw,
          )
          ..write(
            key: keys[HostedUiKey.refreshToken],
            value: userPoolTokens.refreshToken,
          )
          ..write(
            key: keys[HostedUiKey.idToken],
            value: userPoolTokens.idToken.raw,
          );
      }
    }

    final identityPoolConfig = authConfig.identityPoolConfig;
    if (identityPoolConfig != null) {
      final keys = CognitoIdentityPoolKeys(identityPoolConfig);
      final identityId = event.identityId;
      if (identityId != null) {
        _secureStorage.write(
          key: keys[CognitoIdentityPoolKey.identityId],
          value: identityId,
        );
      }
      final awsCredentials = event.awsCredentials;
      if (awsCredentials != null) {
        _secureStorage
          ..write(
            key: keys[CognitoIdentityPoolKey.accessKeyId],
            value: awsCredentials.accessKeyId,
          )
          ..write(
            key: keys[CognitoIdentityPoolKey.secretAccessKey],
            value: awsCredentials.secretAccessKey,
          );
        final sessionToken = awsCredentials.sessionToken;
        if (sessionToken != null) {
          _secureStorage.write(
            key: keys[CognitoIdentityPoolKey.sessionToken],
            value: sessionToken,
          );
        } else {
          _secureStorage.delete(
            key: keys[CognitoIdentityPoolKey.sessionToken],
          );
        }
        final expiration = awsCredentials.expiration;
        if (expiration != null) {
          _secureStorage.write(
            key: keys[CognitoIdentityPoolKey.expiration],
            value: expiration.toIso8601String(),
          );
        } else {
          _secureStorage.delete(
            key: keys[CognitoIdentityPoolKey.expiration],
          );
        }
      }
    }

    await _loadCredentialStore();
  }

  @override
  Future<void> onClearCredentials(
    CredentialStoreClearCredentials event,
  ) async {
    final authConfig = expect<AuthConfiguration>();

    final clearKeys = event.keys;
    bool shouldDelete(String key) =>
        clearKeys.isEmpty || clearKeys.contains(key);

    final userPoolConfig = authConfig.userPoolConfig;
    if (userPoolConfig != null) {
      final userPoolKeys = CognitoUserPoolKeys(userPoolConfig);
      for (final key in userPoolKeys) {
        if (shouldDelete(key)) {
          _secureStorage.delete(key: key);
        }
      }
    }

    final hostedUiConfig = authConfig.hostedUiConfig;
    if (hostedUiConfig != null) {
      final hostedUiKeys = HostedUiKeys(hostedUiConfig);
      for (final key in hostedUiKeys) {
        if (shouldDelete(key)) {
          _secureStorage.delete(key: key);
        }
      }
    }

    final identityPoolConfig = authConfig.identityPoolConfig;
    if (identityPoolConfig != null) {
      final identityPoolKeys = CognitoIdentityPoolKeys(identityPoolConfig);
      for (final key in identityPoolKeys) {
        if (shouldDelete(key)) {
          _secureStorage.delete(key: key);
        }
      }
    }

    await _loadCredentialStore();
  }
}
