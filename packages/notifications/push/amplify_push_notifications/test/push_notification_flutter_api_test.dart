// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_push_notifications/amplify_push_notifications.dart';
import 'package:amplify_push_notifications/src/push_notifications_flutter_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:os_detect/override.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'amplify_push_notifications_impl_test.mocks.dart';
import 'test_data/fake_notification_messges.dart';
import 'test_data/test_amplify_push_notifications_impl.dart';

void testGlobalCallbackFunction(PushNotificationMessage pushMessage) {
  expect(
    pushMessage.title,
    PushNotificationMessage.fromJson(
      standardAndroidPushMessage.cast(),
    ).title,
  );
}

void main() {
  late AmplifyPushNotificationsFlutterApi flutterApi;

  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    AmplifyPushNotificationsFlutterApi.reset();
    flutterApi = AmplifyPushNotificationsFlutterApi.instance;
    SharedPreferences.setMockInitialValues({});
  });

  test('should queue events when the serviceClient is not ready', () {
    flutterApi.onNotificationReceivedInBackground(
      standardAndroidPushMessage.cast(),
    );
    expect(flutterApi.eventQueue.length, 1);
  });

  test('should flush events when the serviceClient is ready', () async {
    await flutterApi.onNotificationReceivedInBackground(
      standardAndroidPushMessage.cast(),
    );
    expect(flutterApi.eventQueue.length, 1);
    final mockServiceClient = MockServiceProviderClient();
    when(
      mockServiceClient.recordNotificationEvent(
        eventType: anyNamed('eventType'),
        notification: anyNamed('notification'),
      ),
    ).thenAnswer(
      (_) async {},
    );
    flutterApi.serviceProviderClient = mockServiceClient;
    await Future.delayed(const Duration(microseconds: 1), () {});
    expect(flutterApi.eventQueue.length, 0);
  });

  test('should call the external callback function for iOS', () async {
    void externalCallback(PushNotificationMessage pushMessage) {
      expect(
        pushMessage.title,
        PushNotificationMessage.fromJson(
          standardAndroidPushMessage.cast(),
        ).title,
      );
    }

    flutterApi.registerOnReceivedInBackgroundCallback(
      expectAsync1(externalCallback),
    );
    await flutterApi.onNotificationReceivedInBackground(
      standardAndroidPushMessage.cast(),
    );
  });

  test(
      'should invoke the top-level or static external callback function on Android',
      () async {
    await overrideOperatingSystem(
      const OperatingSystem('android', ''),
      () async {
        final pref = await SharedPreferences.getInstance();
        TestAmplifyPushNotifications(
          serviceProviderClient: MockServiceProviderClient(),
          backgroundProcessor: () async => {},
        ).onNotificationReceivedInBackground(
          testGlobalCallbackFunction,
        );

        // TODO(Samaritan1011001): Remove the wait time here by using expectAsync and completer if possible
        await Future.delayed(const Duration(microseconds: 1), () {});
        expect(pref.containsKey(externalHandleKey), true);

        await flutterApi.onNotificationReceivedInBackground(
          standardAndroidPushMessage.cast(),
        );
      },
    );
  });
}
