// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: invalid_use_of_internal_member, non_constant_identifier_names

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito/src/flows/hosted_ui/hosted_ui_platform_flutter.dart';
import 'package:amplify_auth_cognito/src/native_auth_plugin.g.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_auth_cognito_test/amplify_auth_cognito_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;

  group('HostedUiPlatformFlutter', () {
    late AmplifyAuthCognito plugin;
    late SecureStorageInterface secureStorage;
    late DependencyManager dependencyManager;

    setUp(() async {
      secureStorage = MockSecureStorage();
      dependencyManager = DependencyManager()
        ..addInstance(hostedUiConfig)
        ..addInstance<SecureStorageInterface>(secureStorage)
        ..addInstance<NativeAuthBridge>(ThrowingNativeBridge());
      plugin = AmplifyAuthCognito()
        ..stateMachine = CognitoAuthStateMachine(
          dependencyManager: dependencyManager,
        );
      plugin.stateMachine.addBuilder<HostedUiPlatform>(
        HostedUiPlatformImpl.new,
      );
      await plugin.stateMachine.acceptAndComplete(
        ConfigurationEvent.configure(mockConfig),
      );
    });

    tearDown(() => plugin.close());

    test('can cancel flow', () async {
      // Pretend to be iOS so that the `ThrowingNativeBridge` is called,
      // mimicking a failure from the platform channel.
      debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
      addTearDown(() => debugDefaultTargetPlatformOverride = null);

      final expectation = expectLater(
        plugin.signInWithWebUI(
          provider: AuthProvider.cognito,
        ),
        throwsA(isA<UserCancelledException>()),
      );
      final hostedUiMachine =
          plugin.stateMachine.expect(HostedUiStateMachine.type);
      expect(
        hostedUiMachine.stream,
        emitsInOrder([
          isA<HostedUiSigningIn>(),
          isA<HostedUiFailure>().having(
            (s) => s.exception,
            'exception',
            isA<UserCancelledException>(),
          ),
          emitsDone,
        ]),
      );
      await expectation;
      // Ensure queue is flushed and done event is emitted after
      // signInWithWebUI completes.
      await hostedUiMachine.close();
    });
  });
}

final class ThrowingNativeBridge extends Fake implements NativeAuthBridge {
  @override
  Future<Map<String?, String?>> signInWithUrl(
    String arg_url,
    String arg_callbackUrlScheme,
    bool arg_preferPrivateSession,
    String? arg_browserPackageName,
  ) async {
    throw PlatformException(code: 'CANCELLED');
  }
}
