// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/credential_store_keys.dart';
import 'package:amplify_auth_cognito_dart/src/model/session/cognito_sign_in_details.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_auth_cognito_test/common/mock_config.dart';
import 'package:amplify_auth_cognito_test/common/mock_legacy_credential_provider.dart';
import 'package:amplify_auth_cognito_test/common/mock_secure_storage.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:test/test.dart';

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
      stateMachine
          .dispatch(
            const CredentialStoreEvent.loadCredentialStore(),
          )
          .ignore();

      final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
      await expectLater(
        sm.stream.startWith(sm.currentState),
        emitsInOrder(<Matcher>[
          isA<CredentialStoreNotConfigured>(),
          isA<CredentialStoreLoadingStoredCredentials>(),
          isA<CredentialStoreMigratingLegacyStore>(),
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
      stateMachine
          .dispatch(
            const CredentialStoreEvent.loadCredentialStore(),
          )
          .ignore();

      final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
      await expectLater(
        sm.stream.startWith(sm.currentState),
        emitsInOrder(<Matcher>[
          isA<CredentialStoreNotConfigured>(),
          isA<CredentialStoreLoadingStoredCredentials>(),
          isA<CredentialStoreSuccess>(),
        ]),
      );

      final result = await stateMachine.loadCredentials();
      expect(result.awsCredentials, isNotNull);
      expect(result.awsCredentials?.accessKeyId, accessKeyId);
      expect(result.awsCredentials?.secretAccessKey, secretAccessKey);
      expect(result.awsCredentials?.sessionToken, sessionToken);
      expect(result.awsCredentials?.expiration, expiration);
      expect(result.identityId, identityId);
      expect(result.userPoolTokens, isNotNull);
      expect(result.userPoolTokens?.accessToken, accessToken);
      expect(result.userPoolTokens?.refreshToken, refreshToken);
      expect(result.userPoolTokens?.idToken, idToken);

      await stateMachine.close();
    });

    group('storeCredentials', () {
      test('all', () async {
        stateMachine
            .dispatch(
              const CredentialStoreEvent.loadCredentialStore(),
            )
            .ignore();

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreMigratingLegacyStore>(),
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
        stateMachine.dispatch(storeCredentialsEvent).ignore();

        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreSuccess>(),
            isA<CredentialStoreStoringCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        final result = await stateMachine.loadCredentials();
        expect(result.awsCredentials, isNotNull);
        expect(result.awsCredentials?.accessKeyId, accessKeyId);
        expect(result.awsCredentials?.secretAccessKey, secretAccessKey);
        expect(result.awsCredentials?.sessionToken, sessionToken);
        expect(result.awsCredentials?.expiration, expiration);
        expect(result.identityId, identityId);
        expect(result.userPoolTokens, isNotNull);
        expect(result.userPoolTokens?.accessToken, accessToken);
        expect(result.userPoolTokens?.refreshToken, refreshToken);
        expect(result.userPoolTokens?.idToken, idToken);

        await stateMachine.close();
      });

      test('partial', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
          version: CredentialStoreVersion.v1,
        );
        stateMachine
            .dispatch(
              const CredentialStoreEvent.loadCredentialStore(),
            )
            .ignore();

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        stateMachine
            .dispatch(
              const CredentialStoreEvent.storeCredentials(
                CredentialStoreData(
                  identityId: identityId,
                ),
              ),
            )
            .ignore();
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreSuccess>(),
            isA<CredentialStoreStoringCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        final result = await stateMachine.loadCredentials();
        expect(result.awsCredentials, isNotNull);
        expect(result.awsCredentials?.accessKeyId, accessKeyId);
        expect(result.awsCredentials?.secretAccessKey, secretAccessKey);
        expect(result.awsCredentials?.sessionToken, sessionToken);
        expect(result.awsCredentials?.expiration, expiration);
        expect(result.identityId, identityId);
        expect(result.userPoolTokens, isNotNull);
        expect(result.userPoolTokens?.accessToken, accessToken);
        expect(result.userPoolTokens?.refreshToken, refreshToken);
        expect(result.userPoolTokens?.idToken, idToken);

        await stateMachine.close();
      });

      test('overwrite', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
          version: CredentialStoreVersion.v1,
        );
        stateMachine
            .dispatch(
              const CredentialStoreEvent.loadCredentialStore(),
            )
            .ignore();

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
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
        stateMachine
            .dispatch(
              const CredentialStoreEvent.storeCredentials(
                CredentialStoreData(
                  awsCredentials: newCredentials,
                ),
              ),
            )
            .ignore();
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreSuccess>(),
            isA<CredentialStoreStoringCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        final result = await stateMachine.loadCredentials();
        expect(result.awsCredentials, isNotNull);
        expect(result.awsCredentials?.accessKeyId, newAccessKeyId);
        expect(result.awsCredentials?.secretAccessKey, newSecretAccessKey);
        expect(result.awsCredentials?.sessionToken, isNull);
        expect(result.awsCredentials?.expiration, isNull);

        await stateMachine.close();
      });

      test('federation', () async {
        seedStorage(secureStorage, identityPoolKeys: identityPoolKeys);
        await stateMachine
            .dispatch(
              const CredentialStoreEvent.loadCredentialStore(),
            )
            .completed;
        final result = await stateMachine.loadCredentials();

        expect(result.awsCredentials, isNotNull);
        expect(result.awsCredentials?.accessKeyId, accessKeyId);
        expect(result.awsCredentials?.secretAccessKey, secretAccessKey);
        expect(result.awsCredentials?.sessionToken, sessionToken);
        expect(result.awsCredentials?.expiration, expiration);
        expect(result.signInDetails, isNull);

        const provider = AuthProvider.custom('custom');
        const providerToken = '12345';
        await stateMachine.storeCredentials(
          CredentialStoreData(
            awsCredentials: AWSCredentials(
              accessKeyId,
              secretAccessKey,
              sessionToken,
              expiration,
            ),
            identityId: identityId,
            signInDetails: const CognitoSignInDetailsFederated(
              provider: provider,
              token: providerToken,
            ),
          ),
        );

        final newResult = await stateMachine.loadCredentials();
        expect(newResult.awsCredentials, isNotNull);
        expect(newResult.awsCredentials?.accessKeyId, accessKeyId);
        expect(newResult.awsCredentials?.secretAccessKey, secretAccessKey);
        expect(newResult.awsCredentials?.sessionToken, sessionToken);
        expect(newResult.awsCredentials?.expiration, expiration);
        expect(
          newResult.signInDetails,
          isA<CognitoSignInDetailsFederated>()
              .having(
                (details) => details.provider,
                'provider',
                provider,
              )
              .having(
                (details) => details.token,
                'token',
                providerToken,
              ),
        );

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
        stateMachine
            .dispatch(
              const CredentialStoreEvent.loadCredentialStore(),
            )
            .ignore();

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        stateMachine
            .dispatch(
              const CredentialStoreEvent.clearCredentials(),
            )
            .ignore();

        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreSuccess>(),
            isA<CredentialStoreClearingCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        final result = await stateMachine.loadCredentials();
        expect(result.awsCredentials, isNull);
        expect(result.identityId, isNull);
        expect(result.userPoolTokens, isNull);

        await stateMachine.close();
      });

      test('partial', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
          version: CredentialStoreVersion.v1,
        );
        stateMachine
            .dispatch(
              const CredentialStoreEvent.loadCredentialStore(),
            )
            .ignore();

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        stateMachine
            .dispatch(
              CredentialStoreEvent.clearCredentials(
                identityPoolKeys,
              ),
            )
            .ignore();

        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreSuccess>(),
            isA<CredentialStoreClearingCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        final result = await stateMachine.loadCredentials();
        expect(result.awsCredentials, isNull);
        expect(result.identityId, isNull);
        expect(result.userPoolTokens, isNotNull);

        await stateMachine.close();
      });
    });

    group('migrateCredentials', () {
      test('no legacy credentials', () async {
        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);

        // verify credential store is not migrated.
        expect(await sm.getVersion(), CredentialStoreVersion.none);

        stateMachine
            .dispatch(
              const CredentialStoreEvent.loadCredentialStore(),
            )
            .ignore();

        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreMigratingLegacyStore>(),
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

        stateMachine
            .dispatch(
              const CredentialStoreEvent.loadCredentialStore(),
            )
            .ignore();

        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreMigratingLegacyStore>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        // verify credentials have been migrated.
        final result = await stateMachine.loadCredentials();
        expect(result.awsCredentials, isNotNull);
        expect(result.awsCredentials?.accessKeyId, accessKeyId);
        expect(result.awsCredentials?.secretAccessKey, secretAccessKey);
        expect(result.awsCredentials?.sessionToken, sessionToken);
        expect(result.awsCredentials?.expiration, expiration);
        expect(result.identityId, identityId);
        expect(result.userPoolTokens, isNotNull);
        expect(result.userPoolTokens?.accessToken, accessToken);
        expect(result.userPoolTokens?.refreshToken, refreshToken);
        expect(result.userPoolTokens?.idToken, idToken);

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

        stateMachine
            .dispatch(
              const CredentialStoreEvent.loadCredentialStore(),
            )
            .ignore();

        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreMigratingLegacyStore>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        // verify credentials have been migrated.
        final result = await stateMachine.loadCredentials();
        expect(result.awsCredentials, isNotNull);
        expect(result.awsCredentials?.accessKeyId, accessKeyId);
        expect(result.awsCredentials?.secretAccessKey, secretAccessKey);
        expect(result.awsCredentials?.sessionToken, sessionToken);
        expect(result.awsCredentials?.expiration, expiration);
        expect(result.identityId, identityId);
        expect(result.userPoolTokens, isNull);
        expect(result.userPoolTokens?.accessToken, isNull);
        expect(result.userPoolTokens?.refreshToken, isNull);
        expect(result.userPoolTokens?.idToken, isNull);

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

        stateMachine
            .dispatch(
              const CredentialStoreEvent.loadCredentialStore(),
            )
            .ignore();

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        // verify legacy credentials are not migrated.
        final result = await stateMachine.loadCredentials();
        expect(result.awsCredentials, isNull);
        expect(result.awsCredentials?.accessKeyId, isNull);
        expect(result.awsCredentials?.secretAccessKey, isNull);
        expect(result.awsCredentials?.sessionToken, isNull);
        expect(result.awsCredentials?.expiration, isNull);
        expect(result.identityId, isNull);
        expect(result.userPoolTokens, isNull);
        expect(result.userPoolTokens?.accessToken, isNull);
        expect(result.userPoolTokens?.refreshToken, isNull);
        expect(result.userPoolTokens?.idToken, isNull);

        await stateMachine.close();
      });
    });
  });
}
