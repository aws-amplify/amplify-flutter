// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_info_store_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_store_keys.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_auth_cognito_test/common/mock_config.dart';
import 'package:amplify_auth_cognito_test/common/mock_secure_storage.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:test/test.dart';

const badConfig = AmplifyOutputs(version: '1');

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

      stateMachine.dispatch(ConfigurationEvent.configure(mockConfig)).ignore();
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

      expect(
        stateMachine
            .dispatch(const ConfigurationEvent.configure(badConfig))
            .completed,
        throwsA(isA<ConfigurationError>()),
      );
      await expectLater(
        configurationStateMachine.stream,
        emitsThrough(emitsError(isA<ConfigurationError>())),
      );

      await stateMachine.close();
    });

    test('multiple configures are ignored', () async {
      final configurationStateMachine =
          stateMachine.getOrCreate(ConfigurationStateMachine.type);

      stateMachine.dispatch(ConfigurationEvent.configure(mockConfig)).ignore();
      await expectLater(
        configurationStateMachine.stream
            .startWith(configurationStateMachine.currentState),
        emitsInOrder(<Matcher>[
          isA<NotConfigured>(),
          isA<Configuring>(),
          isA<Configured>(),
        ]),
      );

      stateMachine.dispatch(ConfigurationEvent.configure(mockConfig)).ignore();
      expect(
        configurationStateMachine.stream,
        emitsDone,
      );

      await stateMachine.close();
    });

    test('reads existing analytics metadata if analytics is configured',
        () async {
      const testEndpointId = 'testEndpointId';

      // Add state machine dependencies.
      stateMachine.addInstance(
        EndpointInfoStoreManager(
          store: MockSecureStorage()
            ..write(
              key: testPinpointAppId + EndpointStoreKey.endpointId.name,
              value: testEndpointId,
            ),
        ),
      );

      final configurationStateMachine =
          stateMachine.getOrCreate(ConfigurationStateMachine.type);

      stateMachine
          .dispatch(ConfigurationEvent.configure(mockConfigWithPinpoint))
          .ignore();
      await expectLater(
        configurationStateMachine.stream
            .startWith(configurationStateMachine.currentState),
        emitsThrough(
          isA<Configured>(),
        ),
      );

      expect(
        stateMachine.get<AnalyticsMetadataType>()?.analyticsEndpointId,
        testEndpointId,
      );

      await stateMachine.close();
    });

    test('creates analytics metadata if analytics is configured', () async {
      // Add state machine dependencies.
      stateMachine.addInstance(
        EndpointInfoStoreManager(
          store: MockSecureStorage(),
        ),
      );

      final configurationStateMachine =
          stateMachine.getOrCreate(ConfigurationStateMachine.type);

      stateMachine
          .dispatch(ConfigurationEvent.configure(mockConfigWithPinpoint))
          .ignore();
      await expectLater(
        configurationStateMachine.stream
            .startWith(configurationStateMachine.currentState),
        emitsThrough(
          isA<Configured>(),
        ),
      );

      expect(
        stateMachine.get<AnalyticsMetadataType>()?.analyticsEndpointId,
        isNotNull,
      );

      await stateMachine.close();
    });
  });
}
