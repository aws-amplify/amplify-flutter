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

  group('ConfigurationStateMachine', () {
    setUp(() {
      stateMachine = CognitoAuthStateMachine();
      secureStorage = MockSecureStorage();
      stateMachine.addInstance(secureStorage);
    });

    test('configure succeeds', () async {
      final configurationStateMachine =
          stateMachine.getOrCreate(ConfigurationStateMachine.type);

      stateMachine.dispatch(ConfigurationEvent.configure(mockConfig));
      await expectLater(
        configurationStateMachine.stream
            .startWith(configurationStateMachine.currentState),
        emitsInOrder(<Matcher>[
          isA<NotConfigured>(),
          isA<Configuring>(),
          isA<Configured>(),
        ]),
      );

      await stateMachine.close();
    });

    test('configure fails', () async {
      final configurationStateMachine =
          stateMachine.getOrCreate(ConfigurationStateMachine.type);

      stateMachine.dispatch(const ConfigurationEvent.configure(badConfig));
      await expectLater(
        configurationStateMachine.stream
            .startWith(configurationStateMachine.currentState),
        emitsInOrder(<Matcher>[
          isA<NotConfigured>(),
          isA<Configuring>(),
          emitsError(isA<ConfigurationError>()),
        ]),
      );

      await stateMachine.close();
    });

    test('multiple configures are ignored', () async {
      final configurationStateMachine =
          stateMachine.getOrCreate(ConfigurationStateMachine.type);

      stateMachine.dispatch(ConfigurationEvent.configure(mockConfig));
      await expectLater(
        configurationStateMachine.stream
            .startWith(configurationStateMachine.currentState),
        emitsInOrder(<Matcher>[
          isA<NotConfigured>(),
          isA<Configuring>(),
          isA<Configured>(),
        ]),
      );

      stateMachine.dispatch(ConfigurationEvent.configure(mockConfig));
      expect(
        configurationStateMachine.stream,
        emitsDone,
      );

      await stateMachine.close();
    });
  });
}
