// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_push/amplify_push.dart';
import 'package:amplify_push/src/push_flutter_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'test_data/fake_notification_messages.dart';

class MockPushServiceProvider extends Mock implements PushServiceProvider {}

class FakePushEvent extends Fake implements PushEvent {}

void main() {
  late PushFlutterApi flutterApi;
  late MockPushServiceProvider mockProvider;

  setUpAll(() {
    registerFallbackValue(FakePushEvent());
  });

  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({});
    PushFlutterApi.reset();
    flutterApi = PushFlutterApi.instance;
    mockProvider = MockPushServiceProvider();
  });

  test('dispatches background notification to provider', () async {
    when(() => mockProvider.onPushEvent(any())).thenAnswer((_) async {});
    flutterApi.provider = mockProvider;

    await flutterApi.onNotificationReceivedInBackground(
      standardAndroidPushMessage.cast(),
    );

    final captured = verify(() => mockProvider.onPushEvent(captureAny()))
        .captured
        .single as PushEvent;
    expect(captured.type, PushEventType.backgroundReceived);
    expect(captured.notification.title, 'TITLE');
  });

  test('dispatches to registered iOS background callbacks', () async {
    PushNotificationMessage? received;
    flutterApi.registerBackgroundCallback((msg) async {
      received = msg;
    });

    await flutterApi.onNotificationReceivedInBackground(
      standardAndroidPushMessage.cast(),
    );

    expect(received, isNotNull);
    expect(received!.title, 'TITLE');
  });

  test('works without provider (standalone mode)', () async {
    // No provider set — should not throw
    await flutterApi.onNotificationReceivedInBackground(
      standardAndroidPushMessage.cast(),
    );
    // If we get here without exception, standalone mode works
  });

  test('provider error does not prevent callback dispatch', () async {
    when(() => mockProvider.onPushEvent(any())).thenThrow(Exception('fail'));
    flutterApi.provider = mockProvider;

    PushNotificationMessage? received;
    flutterApi.registerBackgroundCallback((msg) async {
      received = msg;
    });

    await flutterApi.onNotificationReceivedInBackground(
      standardAndroidPushMessage.cast(),
    );

    // Callback still fired despite provider error
    expect(received, isNotNull);
    expect(received!.title, 'TITLE');
  });

  test('nullifyLaunchNotification calls registered callback', () {
    var called = false;
    flutterApi.onNullifyLaunchNotification = () => called = true;
    flutterApi.nullifyLaunchNotification();
    expect(called, isTrue);
  });
}
