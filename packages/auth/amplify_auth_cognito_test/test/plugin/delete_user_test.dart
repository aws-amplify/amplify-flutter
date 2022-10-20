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

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart'
    hide InternalErrorException;
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_configuration.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:mockito/mockito.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

import '../common/mock_config.dart';
import '../common/mock_secure_storage.dart';

final throwsSignedOutException = throwsA(isA<SignedOutException>());

class MockCognitoIdpClient extends Fake
    implements CognitoIdentityProviderClient {
  MockCognitoIdpClient(this._deleteUser);

  final Future<void> Function() _deleteUser;

  @override
  Future<void> deleteUser(
    DeleteUserRequest input, {
    HttpClient? client,
  }) async =>
      _deleteUser();
}

void main() {
  final authConfig = AuthConfiguration.fromConfig(mockConfig.auth!.awsPlugin!);
  final userPoolConfig = authConfig.userPoolConfig!;
  final identityPoolConfig = authConfig.identityPoolConfig!;
  final userPoolKeys = CognitoUserPoolKeys(userPoolConfig);
  final identityPoolKeys = CognitoIdentityPoolKeys(identityPoolConfig);

  late AmplifyAuthCognitoDart plugin;
  late CognitoAuthStateMachine stateMachine;
  late SecureStorageInterface secureStorage;

  late StreamController<AuthHubEvent> hubEventsController;
  late Stream<AuthHubEvent> hubEvents;

  final userDeletedEvent = isA<AuthHubEvent>().having(
    (event) => event.type,
    'type',
    AuthHubEventType.userDeleted,
  );

  group('AmplifyAuthCognitoDart', () {
    setUp(() async {
      secureStorage = MockSecureStorage();
      stateMachine = CognitoAuthStateMachine()..addInstance(secureStorage);

      plugin = AmplifyAuthCognitoDart(credentialStorage: secureStorage)
        ..stateMachine = stateMachine;

      hubEventsController = StreamController();
      hubEvents = hubEventsController.stream;
      Amplify.Hub.listen(HubChannel.Auth, hubEventsController.add);
    });

    tearDown(() {
      Amplify.Hub.close();
    });

    group('deleteUser', () {
      test('throws when signed out', () async {
        await plugin.configure(config: mockConfig);
        await expectLater(plugin.deleteUser(), throwsSignedOutException);

        expect(hubEvents, neverEmits(userDeletedEvent));
        unawaited(hubEventsController.close());
      });

      test('clears credential store when signed in & HTTP succeeds', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
        );
        await plugin.configure(config: mockConfig);

        final mockIdp = MockCognitoIdpClient(() async {});
        stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

        await expectLater(plugin.getCredentials(), completes);
        await expectLater(plugin.deleteUser(), completes);
        expect(plugin.getCredentials(), throwsSignedOutException);
        expect(hubEvents, emitsThrough(userDeletedEvent));
      });

      test('does not clear credentials when signed in & HTTP fails', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
        );
        await plugin.configure(config: mockConfig);

        final mockIdp = MockCognitoIdpClient(() async {
          throw InternalErrorException();
        });
        stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

        await expectLater(plugin.getCredentials(), completes);
        await expectLater(plugin.deleteUser(), throwsA(isA<Exception>()));
        expect(plugin.getCredentials(), completes);
        expect(hubEvents, neverEmits(userDeletedEvent));
        unawaited(hubEventsController.close());
      });
    });
  });
}
