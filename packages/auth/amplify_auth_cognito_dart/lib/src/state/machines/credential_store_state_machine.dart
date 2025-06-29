// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/credential_store_keys.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/device_metadata_repository.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/legacy_credential_provider.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/secure_storage_extension.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_device_secrets.dart';
import 'package:amplify_auth_cognito_dart/src/model/session/cognito_sign_in_details.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/auth/auth_outputs.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.credential_store_state_machine}
/// Manages the loading and storing of auth configuration data.
/// {@endtemplate}
final class CredentialStoreStateMachine
    extends AuthStateMachine<CredentialStoreEvent, CredentialStoreState> {
  /// {@macro amplify_auth_cognito.credential_store_state_machine}
  CredentialStoreStateMachine(CognitoAuthStateMachine manager)
    : super(manager, type);

  /// The [CredentialStoreStateMachine] type.
  static const type =
      StateMachineToken<
        CredentialStoreEvent,
        CredentialStoreState,
        AuthEvent,
        AuthState,
        CognitoAuthStateMachine,
        CredentialStoreStateMachine
      >();

  @override
  CredentialStoreState get initialState =>
      const CredentialStoreState.notConfigured();

  @override
  String get runtimeTypeName => 'CredentialStoreStateMachine';

  SecureStorageInterface get _secureStorage => getOrCreate();

  DeviceMetadataRepository get _deviceRepository => getOrCreate();

  AuthOutputs get _authOutputs => expect<AuthOutputs>();

  late final bool _hasUserPool =
      _authOutputs.userPoolId != null && _authOutputs.userPoolClientId != null;
  late final bool _hasIdentityPool = _authOutputs.identityPoolId != null;
  late final bool _hasHostedUi =
      _authOutputs.oauth != null && _authOutputs.userPoolClientId != null;

  @override
  Future<void> resolve(CredentialStoreEvent event) async {
    switch (event) {
      case CredentialStoreLoadCredentialStore _:
        if (currentState case final CredentialStoreSuccess success) {
          emit(success);
        } else {
          emit(const CredentialStoreState.loadingStoredCredentials());
          await onLoadCredentialStore(event);
        }
      case CredentialStoreStoreCredentials _:
        emit(const CredentialStoreState.storingCredentials());
        await onStoreCredentials(event);
      case CredentialStoreClearCredentials _:
        emit(const CredentialStoreState.clearingCredentials());
        await onClearCredentials(event);
      case CredentialStoreSucceeded _:
        emit(CredentialStoreState.success(event.data));
    }
  }

  @override
  CredentialStoreState? resolveError(Object error, StackTrace st) {
    if (error is Exception) {
      return CredentialStoreFailure(error, st);
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
    CognitoSignInDetails? signInDetails;
    CognitoUserPoolTokens? userPoolTokens;

    if (_hasUserPool) {
      final keys = CognitoUserPoolKeys(_authOutputs.userPoolClientId!);
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

    if (_hasHostedUi) {
      final keys = HostedUiKeys(_authOutputs.userPoolClientId!);
      final accessToken = await _secureStorage.read(
        key: keys[HostedUiKey.accessToken],
      );
      final refreshToken = await _secureStorage.read(
        key: keys[HostedUiKey.refreshToken],
      );
      final idToken = await _secureStorage.read(key: keys[HostedUiKey.idToken]);
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
    if (_hasIdentityPool) {
      final keys = CognitoIdentityPoolKeys(_authOutputs.identityPoolId!);
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
      final providerJson = await _secureStorage.read(
        key: keys[CognitoIdentityPoolKey.provider],
      );
      final token = await _secureStorage.read(
        key: keys[CognitoIdentityPoolKey.idToken],
      );
      if (providerJson != null && token != null) {
        signInDetails = CognitoSignInDetailsFederated(
          provider: AuthProvider.fromJson(
            jsonDecode(providerJson) as Map<String, Object?>,
          ),
          token: token,
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

    final items = <String, String>{};
    final deletions = <String>[];

    if (_hasUserPool) {
      final keys = CognitoUserPoolKeys(_authOutputs.userPoolClientId!);
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

    if (_hasHostedUi) {
      final keys = HostedUiKeys(_authOutputs.userPoolClientId!);
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

    if (_hasIdentityPool) {
      final keys = CognitoIdentityPoolKeys(_authOutputs.identityPoolId!);
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
          items[keys[CognitoIdentityPoolKey.expiration]] = expiration
              .toIso8601String();
        } else {
          deletions.add(keys[CognitoIdentityPoolKey.expiration]);
        }
      }
      if (signInDetails is CognitoSignInDetailsFederated) {
        items[keys[CognitoIdentityPoolKey.provider]] = jsonEncode(
          signInDetails.provider.toJson(),
        );
        items[keys[CognitoIdentityPoolKey.idToken]] = signInDetails.token;
      } else {
        deletions
          ..add(keys[CognitoIdentityPoolKey.provider])
          ..add(keys[CognitoIdentityPoolKey.idToken]);
      }
    }
    await _secureStorage.writeMany(items);
    await _secureStorage.deleteMany(deletions);
  }

  /// Migrates legacy credential store data, include AWS Credentials, User Pool
  /// tokens, Device Info, and ASF Device ID.
  Future<void> _migrateLegacyCredentialStore() async {
    final version = await getVersion();
    if (version != CredentialStoreVersion.none) {
      return;
    }
    emit(const CredentialStoreState.migratingLegacyStore());
    final credentialData = await _migrateLegacyCredentials();
    final username = credentialData?.userPoolTokens?.username;
    if (username != null) {
      await _migrateDeviceSecrets(username);
    }
    await _deleteLegacyCredentials();
    await _updateVersion(CredentialStoreVersion.v1);
  }

  /// Migrates AWS Credentials and User Pool tokens.
  Future<CredentialStoreData?> _migrateLegacyCredentials() async {
    final provider = get<LegacyCredentialProvider>();
    if (provider == null) return null;
    CredentialStoreData? legacyData;
    try {
      legacyData = await provider.fetchLegacyCredentials(_authOutputs);
      if (legacyData != null) {
        await _storeCredentials(legacyData);
      }
    } on Object catch (e, s) {
      logger.error('Error migrating legacy credentials', e, s);
    }
    return legacyData;
  }

  /// Migrates legacy device secrets.
  Future<void> _migrateDeviceSecrets(String username) async {
    final credentialProvider = get<LegacyCredentialProvider>();
    final userPoolKeys = CognitoUserPoolKeys(_authOutputs.userPoolClientId!);
    if (credentialProvider == null) return;
    try {
      final legacySecrets = await credentialProvider.fetchLegacyDeviceSecrets(
        username,
        _authOutputs,
      );
      if (legacySecrets != null) {
        final secrets = CognitoDeviceSecrets.fromLegacyDeviceDetails(
          legacySecrets,
        );
        await _deviceRepository.put(username, secrets);
      }

      // Migrate Asf Device ID
      final asfDeviceId = legacySecrets?.asfDeviceId;
      if (asfDeviceId != null) {
        await _secureStorage.write(
          key: userPoolKeys[CognitoUserPoolKey.asfDeviceId],
          value: asfDeviceId,
        );
      }
    } on Object catch (e, s) {
      logger.error('Error migrating legacy device secrets', e, s);
    } finally {
      try {
        await credentialProvider.deleteLegacyDeviceSecrets(
          username,
          _authOutputs,
        );
      } on Object catch (e, s) {
        logger.error('Error clearing legacy device secrets', e, s);
      }
    }
  }

  /// Deletes legacy credentials.
  Future<void> _deleteLegacyCredentials() async {
    final provider = get<LegacyCredentialProvider>();
    if (provider == null) return;
    try {
      await provider.deleteLegacyCredentials(_authOutputs);
    } on Object catch (e, s) {
      logger.error('Error clearing legacy credentials', e, s);
    }
  }

  /// State machine callback for the [CredentialStoreLoadCredentialStore] event.
  Future<void> onLoadCredentialStore(
    CredentialStoreLoadCredentialStore event,
  ) async {
    await _migrateLegacyCredentialStore();
    final data = await _loadCredentialStore();
    emit(CredentialStoreState.success(data));
  }

  /// State machine callback for the [CredentialStoreStoreCredentials] event.
  Future<void> onStoreCredentials(CredentialStoreStoreCredentials event) async {
    await _storeCredentials(event.data);
    final data = await _loadCredentialStore();
    emit(CredentialStoreState.success(data));
  }

  /// State machine callback for the [CredentialStoreClearCredentials] event.
  Future<void> onClearCredentials(CredentialStoreClearCredentials event) async {
    final clearKeys = event.keys;
    final deletions = <String>[];
    bool shouldDelete(String key) =>
        clearKeys.isEmpty || clearKeys.contains(key);

    if (_hasUserPool) {
      final userPoolKeys = CognitoUserPoolKeys(_authOutputs.userPoolClientId!);
      for (final key in userPoolKeys) {
        if (shouldDelete(key)) {
          deletions.add(key);
        }
      }
    }

    if (_hasHostedUi) {
      final hostedUiKeys = HostedUiKeys(_authOutputs.userPoolClientId!);
      for (final key in hostedUiKeys) {
        if (shouldDelete(key)) {
          deletions.add(key);
        }
      }
    }

    if (_hasIdentityPool) {
      final identityPoolKeys = CognitoIdentityPoolKeys(
        _authOutputs.identityPoolId!,
      );
      for (final key in identityPoolKeys) {
        if (shouldDelete(key)) {
          deletions.add(key);
        }
      }
    }

    await _secureStorage.deleteMany(deletions);
    final data = await _loadCredentialStore();
    emit(CredentialStoreState.success(data));
  }
}
