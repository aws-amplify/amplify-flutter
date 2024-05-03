// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_push_notifications_pinpoint/src/push_notifications_background_processing.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'test_data/fake_amplify_configuration.dart';

class MockAmplifyClass extends Mock implements AmplifyClass {}

class MockAmplifySecureStorage extends Mock implements AmplifySecureStorage {}

void main() {
  final testWidgetsFlutterBinding =
      TestWidgetsFlutterBinding.ensureInitialized();
  final log = <MethodCall>[];

  setUp(() {
    testWidgetsFlutterBinding.defaultBinaryMessenger.setMockMethodCallHandler(
      backgroundChannel,
      (MethodCall methodCall) async {
        log.add(methodCall);
        return null;
      },
    );
  });
  group('amplifyBackgroundProcessing', () {
    test('should fail when the config stored in secure storage is not found',
        () {
      final mockStorage = MockAmplifySecureStorage();
      when(() => mockStorage.read(key: any(named: 'key'))).thenAnswer(
        (_) async => null,
      );

      expect(
        () async => amplifyBackgroundProcessing(
          amplifySecureStorage: mockStorage,
        ),
        throwsA(isA<PushNotificationException>()),
      );
    });

    test('should configure Amplify plugins', () async {
      log.clear();
      final mockStorage = MockAmplifySecureStorage();
      when(() => mockStorage.read(key: any(named: 'key'))).thenAnswer(
        (_) async => amplifyconfig,
      );

      final mockAmplify = MockAmplifyClass();

      when(() => mockAmplify.isConfigured).thenReturn(false);
      when(() => mockAmplify.addPlugins(any())).thenAnswer((_) async {});
      when(() => mockAmplify.configure(any())).thenAnswer((_) async {});

      await amplifyBackgroundProcessing(
        amplifySecureStorage: mockStorage,
        amplify: mockAmplify,
      );

      expect(log, <Matcher>[
        isMethodCall('amplifyBackgroundProcessorFinished', arguments: null),
      ]);
    });
  });
}
