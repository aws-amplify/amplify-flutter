// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/credential_store_keys.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:test/test.dart';

import '../common/mock_config.dart';
import '../common/mock_legacy_credential_provider.dart';
import '../common/mock_secure_storage.dart';

void main() {
  test('CognitoKeys', () {
    expect(userPoolKeys, hasLength(CognitoUserPoolKey.values.length));
    expect(identityPoolKeys, hasLength(CognitoIdentityPoolKey.values.length));
  });

  group('CredentialStoreStateMachine', () {
    late DependencyManager manager;
    late CognitoAuthStateMachine stateMachine;
    late SecureStorageInterface secureStorage;

    setUp(() {
      secureStorage = MockSecureStorage();
      manager = DependencyManager()
        ..addInstance(secureStorage)
        ..addInstance(mockConfig)
        ..addInstance(authConfig);
      stateMachine = CognitoAuthStateMachine(dependencyManager: manager);
    });

    // Load an empty credential store.
    test('loadCredentialStore (empty)', () async {
      stateMachine.dispatch(
        const CredentialStoreEvent.migrateLegacyCredentialStore(),
      );

      final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
      await expectLater(
        sm.stream.startWith(sm.currentState),
        emitsInOrder(<Matcher>[
          isA<CredentialStoreNotConfigured>(),
          isA<CredentialStoreMigratingLegacyStore>(),
          isA<CredentialStoreLoadingStoredCredentials>(),
          isA<CredentialStoreSuccess>(),
        ]),
      );

      await stateMachine.close();
    });

    // Load a credential store which is already seeded.
    test('loadCredentialStore', () async {
      seedStorage(
        secureStorage,
        userPoolKeys: userPoolKeys,
        identityPoolKeys: identityPoolKeys,
        version: CredentialStoreVersion.v1,
      );
      stateMachine.dispatch(
        const CredentialStoreEvent.migrateLegacyCredentialStore(),
      );

      final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
      await expectLater(
        sm.stream.startWith(sm.currentState),
        emitsInOrder(<Matcher>[
          isA<CredentialStoreNotConfigured>(),
          isA<CredentialStoreMigratingLegacyStore>(),
          isA<CredentialStoreLoadingStoredCredentials>(),
          isA<CredentialStoreSuccess>(),
        ]),
      );

      final result = await sm.getCredentialsResult();
      expect(result.data.awsCredentials, isNotNull);
      expect(result.data.awsCredentials?.accessKeyId, accessKeyId);
      expect(result.data.awsCredentials?.secretAccessKey, secretAccessKey);
      expect(result.data.awsCredentials?.sessionToken, sessionToken);
      expect(result.data.awsCredentials?.expiration, expiration);
      expect(result.data.identityId, identityId);
      expect(result.data.userPoolTokens, isNotNull);
      expect(result.data.userPoolTokens?.accessToken, accessToken);
      expect(result.data.userPoolTokens?.refreshToken, refreshToken);
      expect(result.data.userPoolTokens?.idToken, idToken);

      await stateMachine.close();
    });

    group('storeCredentials', () {
      test('all', () async {
        stateMachine.dispatch(
          const CredentialStoreEvent.migrateLegacyCredentialStore(),
        );

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreMigratingLegacyStore>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        final storeCredentialsEvent = CredentialStoreEvent.storeCredentials(
          CredentialStoreData(
            awsCredentials: AWSCredentials(
              accessKeyId,
              secretAccessKey,
              sessionToken,
              expiration,
            ),
            identityId: identityId,
            userPoolTokens: CognitoUserPoolTokens(
              accessToken: accessToken,
              refreshToken: refreshToken,
              idToken: idToken,
            ),
          ),
        );
        stateMachine.dispatch(storeCredentialsEvent);

        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreSuccess>(),
            isA<CredentialStoreStoringCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        final result = await sm.getCredentialsResult();
        expect(result.data.awsCredentials, isNotNull);
        expect(result.data.awsCredentials?.accessKeyId, accessKeyId);
        expect(result.data.awsCredentials?.secretAccessKey, secretAccessKey);
        expect(result.data.awsCredentials?.sessionToken, sessionToken);
        expect(result.data.awsCredentials?.expiration, expiration);
        expect(result.data.identityId, identityId);
        expect(result.data.userPoolTokens, isNotNull);
        expect(result.data.userPoolTokens?.accessToken, accessToken);
        expect(result.data.userPoolTokens?.refreshToken, refreshToken);
        expect(result.data.userPoolTokens?.idToken, idToken);

        await stateMachine.close();
      });

      test('partial', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
          version: CredentialStoreVersion.v1,
        );
        stateMachine.dispatch(
          const CredentialStoreEvent.migrateLegacyCredentialStore(),
        );

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreMigratingLegacyStore>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        stateMachine.dispatch(
          const CredentialStoreEvent.storeCredentials(
            CredentialStoreData(
              identityId: identityId,
            ),
          ),
        );
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreSuccess>(),
            isA<CredentialStoreStoringCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        final result = await sm.getCredentialsResult();
        expect(result.data.awsCredentials, isNotNull);
        expect(result.data.awsCredentials?.accessKeyId, accessKeyId);
        expect(result.data.awsCredentials?.secretAccessKey, secretAccessKey);
        expect(result.data.awsCredentials?.sessionToken, sessionToken);
        expect(result.data.awsCredentials?.expiration, expiration);
        expect(result.data.identityId, identityId);
        expect(result.data.userPoolTokens, isNotNull);
        expect(result.data.userPoolTokens?.accessToken, accessToken);
        expect(result.data.userPoolTokens?.refreshToken, refreshToken);
        expect(result.data.userPoolTokens?.idToken, idToken);

        await stateMachine.close();
      });

      test('overwrite', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
          version: CredentialStoreVersion.v1,
        );
        stateMachine.dispatch(
          const CredentialStoreEvent.migrateLegacyCredentialStore(),
        );

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreMigratingLegacyStore>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        const newAccessKeyId = 'newAccessKeyId';
        const newSecretAccessKey = 'newSecretAccessKey';
        const newCredentials = AWSCredentials(
          newAccessKeyId,
          newSecretAccessKey,
        );
        stateMachine.dispatch(
          const CredentialStoreEvent.storeCredentials(
            CredentialStoreData(
              awsCredentials: newCredentials,
            ),
          ),
        );
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreSuccess>(),
            isA<CredentialStoreStoringCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        final result = await sm.getCredentialsResult();
        expect(result.data.awsCredentials, isNotNull);
        expect(result.data.awsCredentials?.accessKeyId, newAccessKeyId);
        expect(result.data.awsCredentials?.secretAccessKey, newSecretAccessKey);
        expect(result.data.awsCredentials?.sessionToken, isNull);
        expect(result.data.awsCredentials?.expiration, isNull);

        await stateMachine.close();
      });
    });

    group('clearCredentials', () {
      test('all', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
          version: CredentialStoreVersion.v1,
        );
        stateMachine.dispatch(
          const CredentialStoreEvent.migrateLegacyCredentialStore(),
        );

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreMigratingLegacyStore>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        stateMachine.dispatch(
          const CredentialStoreEvent.clearCredentials(),
        );

        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreSuccess>(),
            isA<CredentialStoreClearingCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        final result = await sm.getCredentialsResult();
        expect(result.data.awsCredentials, isNull);
        expect(result.data.identityId, isNull);
        expect(result.data.userPoolTokens, isNull);

        await stateMachine.close();
      });

      test('partial', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
          version: CredentialStoreVersion.v1,
        );
        stateMachine.dispatch(
          const CredentialStoreEvent.migrateLegacyCredentialStore(),
        );

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreMigratingLegacyStore>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        stateMachine.dispatch(
          CredentialStoreEvent.clearCredentials(
            identityPoolKeys,
          ),
        );

        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreSuccess>(),
            isA<CredentialStoreClearingCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        final result = await sm.getCredentialsResult();
        expect(result.data.awsCredentials, isNull);
        expect(result.data.identityId, isNull);
        expect(result.data.userPoolTokens, isNotNull);

        await stateMachine.close();
      });
    });

    group('migrateCredentials', () {
      test('no legacy credentials', () async {
        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);

        // verify credential store is not migrated.
        expect(await sm.getVersion(), CredentialStoreVersion.none);

        stateMachine.dispatch(
          const CredentialStoreEvent.migrateLegacyCredentialStore(),
        );

        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreMigratingLegacyStore>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        // verify credential store version has been updated.
        expect(await sm.getVersion(), CredentialStoreVersion.v1);

        await stateMachine.close();
      });

      test('all', () async {
        // seed legacy credentials.
        manager.addInstance<LegacyCredentialProvider>(
          MockLegacyCredentialProvider(
            initialData: CredentialStoreData(
              identityId: identityId,
              userPoolTokens: userPoolTokens,
              awsCredentials: awsCredentials,
            ),
          ),
        );

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);

        // verify credential store is not migrated.
        expect(await sm.getVersion(), CredentialStoreVersion.none);

        stateMachine.dispatch(
          const CredentialStoreEvent.migrateLegacyCredentialStore(),
        );

        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreMigratingLegacyStore>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        // verify credentials have been migrated.
        final result = await sm.getCredentialsResult();
        expect(result.data.awsCredentials, isNotNull);
        expect(result.data.awsCredentials?.accessKeyId, accessKeyId);
        expect(result.data.awsCredentials?.secretAccessKey, secretAccessKey);
        expect(result.data.awsCredentials?.sessionToken, sessionToken);
        expect(result.data.awsCredentials?.expiration, expiration);
        expect(result.data.identityId, identityId);
        expect(result.data.userPoolTokens, isNotNull);
        expect(result.data.userPoolTokens?.accessToken, accessToken);
        expect(result.data.userPoolTokens?.refreshToken, refreshToken);
        expect(result.data.userPoolTokens?.idToken, idToken);

        // verify credential store version has been updated.
        expect(await sm.getVersion(), CredentialStoreVersion.v1);

        await stateMachine.close();
      });

      test('partial', () async {
        // seed legacy credentials.
        manager.addInstance<LegacyCredentialProvider>(
          MockLegacyCredentialProvider(
            initialData: CredentialStoreData(
              identityId: identityId,
              awsCredentials: awsCredentials,
            ),
          ),
        );

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);

        // verify credential store is not migrated.
        expect(await sm.getVersion(), CredentialStoreVersion.none);

        stateMachine.dispatch(
          const CredentialStoreEvent.migrateLegacyCredentialStore(),
        );

        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreMigratingLegacyStore>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        // verify credentials have been migrated.
        final result = await sm.getCredentialsResult();
        expect(result.data.awsCredentials, isNotNull);
        expect(result.data.awsCredentials?.accessKeyId, accessKeyId);
        expect(result.data.awsCredentials?.secretAccessKey, secretAccessKey);
        expect(result.data.awsCredentials?.sessionToken, sessionToken);
        expect(result.data.awsCredentials?.expiration, expiration);
        expect(result.data.identityId, identityId);
        expect(result.data.userPoolTokens, isNull);
        expect(result.data.userPoolTokens?.accessToken, isNull);
        expect(result.data.userPoolTokens?.refreshToken, isNull);
        expect(result.data.userPoolTokens?.idToken, isNull);

        // verify credential store version has been updated.
        expect(await sm.getVersion(), CredentialStoreVersion.v1);

        await stateMachine.close();
      });

      test('already migrated', () async {
        // seed legacy credentials.
        manager.addInstance<LegacyCredentialProvider>(
          MockLegacyCredentialProvider(
            initialData: CredentialStoreData(
              identityId: identityId,
              userPoolTokens: userPoolTokens,
              awsCredentials: awsCredentials,
            ),
          ),
        );

        // seed version to v1.
        seedStorage(secureStorage, version: CredentialStoreVersion.v1);

        stateMachine.dispatch(
          const CredentialStoreEvent.migrateLegacyCredentialStore(),
        );

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreMigratingLegacyStore>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        // verify legacy credentials are not migrated.
        final result = await sm.getCredentialsResult();
        expect(result.data.awsCredentials, isNull);
        expect(result.data.awsCredentials?.accessKeyId, isNull);
        expect(result.data.awsCredentials?.secretAccessKey, isNull);
        expect(result.data.awsCredentials?.sessionToken, isNull);
        expect(result.data.awsCredentials?.expiration, isNull);
        expect(result.data.identityId, isNull);
        expect(result.data.userPoolTokens, isNull);
        expect(result.data.userPoolTokens?.accessToken, isNull);
        expect(result.data.userPoolTokens?.refreshToken, isNull);
        expect(result.data.userPoolTokens?.idToken, isNull);

        await stateMachine.close();
      });
    });
  });
}
