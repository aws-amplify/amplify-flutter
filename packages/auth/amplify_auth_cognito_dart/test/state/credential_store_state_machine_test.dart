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

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:test/test.dart';

import '../common/mock_config.dart';
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
        const CredentialStoreEvent.loadCredentialStore(),
      );

      final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
      await expectLater(
        sm.stream.startWith(sm.currentState),
        emitsInOrder(<Matcher>[
          isA<CredentialStoreNotConfigured>(),
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
      );
      stateMachine.dispatch(
        const CredentialStoreEvent.loadCredentialStore(),
      );

      final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
      await expectLater(
        sm.stream.startWith(sm.currentState),
        emitsInOrder(<Matcher>[
          isA<CredentialStoreNotConfigured>(),
          isA<CredentialStoreLoadingStoredCredentials>(),
          isA<CredentialStoreSuccess>(),
        ]),
      );

      final result = await sm.getCredentialsResult();
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
        stateMachine.dispatch(
          const CredentialStoreEvent.loadCredentialStore(),
        );

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        final storeCredentialsEvent = CredentialStoreEvent.storeCredentials(
          awsCredentials: AWSCredentials(
            accessKeyId,
            secretAccessKey,
            sessionToken,
            expiration,
          ),
          identityId: identityId,
          userPoolTokens: CognitoUserPoolTokens(
            (b) => b
              ..accessToken = accessToken
              ..refreshToken = refreshToken
              ..idToken = idToken,
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
        );
        stateMachine.dispatch(
          const CredentialStoreEvent.loadCredentialStore(),
        );

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
            isA<CredentialStoreLoadingStoredCredentials>(),
            isA<CredentialStoreSuccess>(),
          ]),
        );

        stateMachine.dispatch(
          const CredentialStoreEvent.storeCredentials(
            identityId: identityId,
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
        );
        stateMachine.dispatch(
          const CredentialStoreEvent.loadCredentialStore(),
        );

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
        stateMachine.dispatch(
          const CredentialStoreEvent.storeCredentials(
            awsCredentials: newCredentials,
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
        expect(result.awsCredentials, isNotNull);
        expect(result.awsCredentials?.accessKeyId, newAccessKeyId);
        expect(result.awsCredentials?.secretAccessKey, newSecretAccessKey);
        expect(result.awsCredentials?.sessionToken, isNull);
        expect(result.awsCredentials?.expiration, isNull);

        await stateMachine.close();
      });
    });

    group('clearCredentials', () {
      test('all', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
        );
        stateMachine.dispatch(
          const CredentialStoreEvent.loadCredentialStore(),
        );

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
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
        );
        stateMachine.dispatch(
          const CredentialStoreEvent.loadCredentialStore(),
        );

        final sm = stateMachine.getOrCreate(CredentialStoreStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<CredentialStoreNotConfigured>(),
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
        expect(result.awsCredentials, isNull);
        expect(result.identityId, isNull);
        expect(result.userPoolTokens, isNotNull);

        await stateMachine.close();
      });
    });
  });
}
