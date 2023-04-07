// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_push_notifications_pinpoint/src/push_notifications_background_processing.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'push_notifications_background_processing_test.mocks.dart';
import 'test_data/fake_amplify_configuration.dart';

@GenerateMocks(
  [AmplifySecureStorage, AmplifyClass],
)
void main() {
  final testWidgetsFlutterBinding =
      TestWidgetsFlutterBinding.ensureInitialized();
  final log = <MethodCall>[];

  Future<Map<String, dynamic>?>? handler(MethodCall methodCall) async {
    log.add(methodCall);
    return null;
  }

  setUp(() {
    testWidgetsFlutterBinding.defaultBinaryMessenger.setMockMethodCallHandler(
      backgroundChannel,
      handler,
    );
  });
  group('amplifyBackgroundProcessing', () {
    test('should fail when the config stored in secure storage is not found',
        () {
      final mockStorage = MockAmplifySecureStorage();
      when(mockStorage.read(key: anyNamed('key')))
          .thenAnswer((_) async => null);

      expect(
        () async => amplifyBackgroundProcessing(
          amplifySecureStorage: mockStorage,
        ),
        throwsA(isA<PushNotificationException>()),
      );
    });
  });

  group('amplifyBackgroundProcessing', () {
    test('should fail when the config stored in secure storage is not found',
        () async {
      log.clear();
      final mockStorage = MockAmplifySecureStorage();
      when(mockStorage.read(key: anyNamed('key')))
          .thenAnswer((_) async => amplifyconfig);
      final mockAmplify = MockAmplifyClass();

      when(mockAmplify.isConfigured).thenReturn(false);
      when(mockAmplify.addPlugins(any))
          .thenAnswer((realInvocation) => Future(() => null));
      when(mockAmplify.configure(any))
          .thenAnswer((realInvocation) => Future(() => null));
      await amplifyBackgroundProcessing(
        amplifySecureStorage: mockStorage,
        mockAmplify: mockAmplify,
      );

      expect(log, <Matcher>[
        isMethodCall('amplifyBackgroundProcessorFinished', arguments: null)
      ]);
    });
  });
}
