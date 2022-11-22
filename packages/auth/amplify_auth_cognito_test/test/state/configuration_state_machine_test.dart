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
