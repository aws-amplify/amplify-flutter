// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:test/test.dart';

import '../common/mock_config.dart';
import '../common/mock_secure_storage.dart';

const badConfig = AmplifyConfig();

void main() {
  late CognitoAuthStateMachine stateMachine;
  late SecureStorageInterface secureStorage;

  group('AuthStateMachine', () {
    setUp(() {
      stateMachine = CognitoAuthStateMachine();
      secureStorage = MockSecureStorage();
      stateMachine.addInstance(secureStorage);
    });

    test('configure succeeds', () async {
      final authStateMachine = stateMachine.getOrCreate(AuthStateMachine.type);

      stateMachine.dispatch(AuthEvent.configure(mockConfig));
      await expectLater(
        authStateMachine.stream.startWith(authStateMachine.currentState),
        emitsInOrder(<Matcher>[
          isA<AuthNotConfigured>(),
          isA<AuthConfiguring>(),
          isA<AuthConfigured>(),
        ]),
      );

      await stateMachine.close();
    });

    test('configure fails', () async {
      final authStateMachine = stateMachine.getOrCreate(AuthStateMachine.type);

      stateMachine.dispatch(const AuthEvent.configure(badConfig));
      await expectLater(
        authStateMachine.stream.startWith(authStateMachine.currentState),
        emitsInOrder(<Matcher>[
          isA<AuthNotConfigured>(),
          isA<AuthConfiguring>(),
          emitsError(isA<ConfigurationError>()),
        ]),
      );

      await stateMachine.close();
    });

    test('multiple configures are ignored', () async {
      final authStateMachine = stateMachine.getOrCreate(AuthStateMachine.type);

      stateMachine.dispatch(AuthEvent.configure(mockConfig));
      await expectLater(
        authStateMachine.stream.startWith(authStateMachine.currentState),
        emitsInOrder(<Matcher>[
          isA<AuthNotConfigured>(),
          isA<AuthConfiguring>(),
          isA<AuthConfigured>(),
        ]),
      );

      stateMachine.dispatch(AuthEvent.configure(mockConfig));
      expect(
        authStateMachine.stream,
        emitsDone,
      );

      await stateMachine.close();
    });
  });
}
