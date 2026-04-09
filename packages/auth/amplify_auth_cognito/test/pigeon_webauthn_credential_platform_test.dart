// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/src/native_auth_plugin.g.dart';
import 'package:amplify_auth_cognito/src/pigeon_webauthn_credential_platform.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late BinaryMessenger messenger;
  late WebAuthnBridgeApi bridge;
  late PigeonWebAuthnCredentialPlatform platform;

  const createChannel =
      'dev.flutter.pigeon.amplify_auth_cognito.WebAuthnBridgeApi.createCredential';
  const getChannel =
      'dev.flutter.pigeon.amplify_auth_cognito.WebAuthnBridgeApi.getCredential';
  const isSupportedChannel =
      'dev.flutter.pigeon.amplify_auth_cognito.WebAuthnBridgeApi.isPasskeySupported';

  setUp(() {
    messenger = TestDefaultBinaryMessenger(
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger,
    );
    bridge = WebAuthnBridgeApi(binaryMessenger: messenger);
    platform = PigeonWebAuthnCredentialPlatform(bridge);
  });

  void setMockHandler(
    String channel, {
    Object? result,
    String? errorCode,
    String? errorMessage,
  }) {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockDecodedMessageHandler<Object?>(
          BasicMessageChannel<Object?>(
            channel,
            WebAuthnBridgeApi.pigeonChannelCodec,
          ),
          (Object? message) async {
            if (errorCode != null) {
              return [errorCode, errorMessage, null];
            }
            return [result];
          },
        );
  }

  tearDown(() {
    for (final channel in [createChannel, getChannel, isSupportedChannel]) {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockDecodedMessageHandler<Object?>(
            BasicMessageChannel<Object?>(
              channel,
              WebAuthnBridgeApi.pigeonChannelCodec,
            ),
            null,
          );
    }
  });

  group('PigeonWebAuthnCredentialPlatform', () {
    group('createCredential', () {
      test('returns result on success', () async {
        setMockHandler(createChannel, result: '{"id":"cred-1"}');
        final result = await platform.createCredential('{}');
        expect(result, '{"id":"cred-1"}');
      });

      test('maps cancelled error to PasskeyCancelledException', () async {
        setMockHandler(
          createChannel,
          errorCode: WebAuthnErrorCodes.cancelled,
          errorMessage: 'User cancelled',
        );
        expect(
          () => platform.createCredential('{}'),
          throwsA(isA<PasskeyCancelledException>()),
        );
      });

      test('maps notSupported error to PasskeyNotSupportedException', () async {
        setMockHandler(
          createChannel,
          errorCode: WebAuthnErrorCodes.notSupported,
          errorMessage: 'Not supported',
        );
        expect(
          () => platform.createCredential('{}'),
          throwsA(isA<PasskeyNotSupportedException>()),
        );
      });

      test('maps rpMismatch error to PasskeyRpMismatchException', () async {
        setMockHandler(
          createChannel,
          errorCode: WebAuthnErrorCodes.rpMismatch,
          errorMessage: 'RP mismatch',
        );
        expect(
          () => platform.createCredential('{}'),
          throwsA(isA<PasskeyRpMismatchException>()),
        );
      });

      test(
        'maps unknown error to PasskeyRegistrationFailedException',
        () async {
          setMockHandler(
            createChannel,
            errorCode: 'unknownError',
            errorMessage: 'Something failed',
          );
          expect(
            () => platform.createCredential('{}'),
            throwsA(isA<PasskeyRegistrationFailedException>()),
          );
        },
      );

      test('preserves error message', () async {
        setMockHandler(
          createChannel,
          errorCode: WebAuthnErrorCodes.cancelled,
          errorMessage: 'User tapped cancel',
        );
        try {
          await platform.createCredential('{}');
          fail('Expected PasskeyCancelledException');
        } on PasskeyCancelledException catch (e) {
          expect(e.message, 'User tapped cancel');
        }
      });

      test('preserves underlying exception', () async {
        setMockHandler(
          createChannel,
          errorCode: WebAuthnErrorCodes.cancelled,
          errorMessage: 'Cancelled',
        );
        try {
          await platform.createCredential('{}');
          fail('Expected PasskeyCancelledException');
        } on PasskeyCancelledException catch (e) {
          expect(e.underlyingException, isA<PlatformException>());
        }
      });
    });

    group('getCredential', () {
      test('returns result on success', () async {
        setMockHandler(getChannel, result: '{"id":"cred-1"}');
        final result = await platform.getCredential('{}');
        expect(result, '{"id":"cred-1"}');
      });

      test('maps cancelled error to PasskeyCancelledException', () async {
        setMockHandler(
          getChannel,
          errorCode: WebAuthnErrorCodes.cancelled,
          errorMessage: 'User cancelled',
        );
        expect(
          () => platform.getCredential('{}'),
          throwsA(isA<PasskeyCancelledException>()),
        );
      });

      test('maps notSupported error to PasskeyNotSupportedException', () async {
        setMockHandler(
          getChannel,
          errorCode: WebAuthnErrorCodes.notSupported,
          errorMessage: 'Not supported',
        );
        expect(
          () => platform.getCredential('{}'),
          throwsA(isA<PasskeyNotSupportedException>()),
        );
      });

      test('maps rpMismatch error to PasskeyRpMismatchException', () async {
        setMockHandler(
          getChannel,
          errorCode: WebAuthnErrorCodes.rpMismatch,
          errorMessage: 'RP mismatch',
        );
        expect(
          () => platform.getCredential('{}'),
          throwsA(isA<PasskeyRpMismatchException>()),
        );
      });

      test('maps unknown error to PasskeyAssertionFailedException', () async {
        setMockHandler(
          getChannel,
          errorCode: 'unknownError',
          errorMessage: 'Something failed',
        );
        expect(
          () => platform.getCredential('{}'),
          throwsA(isA<PasskeyAssertionFailedException>()),
        );
      });
    });

    group('isPasskeySupported', () {
      test('returns true when supported', () async {
        setMockHandler(isSupportedChannel, result: true);
        expect(await platform.isPasskeySupported(), isTrue);
      });

      test('returns false when not supported', () async {
        setMockHandler(isSupportedChannel, result: false);
        expect(await platform.isPasskeySupported(), isFalse);
      });

      test('maps PlatformException to PasskeyException', () async {
        setMockHandler(
          isSupportedChannel,
          errorCode: 'unknown',
          errorMessage: 'Check failed',
        );
        expect(
          () => platform.isPasskeySupported(),
          throwsA(isA<PasskeyException>()),
        );
      });
    });
  });
}
