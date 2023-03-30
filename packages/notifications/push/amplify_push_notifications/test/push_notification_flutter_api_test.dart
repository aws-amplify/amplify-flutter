import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_push_notifications/amplify_push_notifications.dart';
import 'package:amplify_push_notifications/src/push_notifications_flutter_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'amplify_push_noitfications_impl_test.mocks.dart';
import 'test_data/fake_notification_messges.dart';

void testGlobalCallbackFunction(PushNotificationMessage pushMessage) {
  expect(
    pushMessage.title,
    PushNotificationMessage.fromJson(standardAndroidPushMessage).title,
  );
}

void main() {
  late AmplifyPushNotificationsFlutterApi flutterApi;

  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    flutterApi = AmplifyPushNotificationsFlutterApi();
  });
  test('should queue events when the serviceClient is not ready', () {
    flutterApi.onNotificationReceivedInBackground(standardAndroidPushMessage);
    expect(flutterApi.eventQueue.length, 1);
  });

  test('should flush events when the serviceClient is ready', () async {
    SharedPreferences.setMockInitialValues({});
    await flutterApi
        .onNotificationReceivedInBackground(standardAndroidPushMessage);
    expect(flutterApi.eventQueue.length, 1);
    final mockServiceClient = MockServiceProviderClient();
    when(
      mockServiceClient.recordNotificationEvent(
        eventType: anyNamed('eventType'),
        notification: anyNamed('notification'),
      ),
    ).thenAnswer(
      (_) => Future(() => null),
    );
    flutterApi.serviceProviderClient = mockServiceClient;
    await Future.delayed(const Duration(seconds: 3), () {});
    expect(flutterApi.eventQueue.length, 0);
  });

  test('should call the external callback function', () async {
    SharedPreferences.setMockInitialValues({});
    void externalCallback(PushNotificationMessage pushMessage) {
      expect(
        pushMessage.title,
        PushNotificationMessage.fromJson(standardAndroidPushMessage).title,
      );
    }

    flutterApi.registerOnReceivedInBackgroundCallback(externalCallback);
    await flutterApi
        .onNotificationReceivedInBackground(standardAndroidPushMessage);
  });

  test('should invoke the top-level or static external callback function',
      () async {
    await runZoned(
      () async {
        SharedPreferences.setMockInitialValues({});
        final pref = await SharedPreferences.getInstance();
        AmplifyPushNotifications(
          serviceProviderClient: MockServiceProviderClient(),
          backgroundProcessor: () async => {},
          // dependencyManager: dependencyManager,
        ).onNotificationReceivedInBackground(
          testGlobalCallbackFunction,
        );
        flutterApi
            .registerOnReceivedInBackgroundCallback(testGlobalCallbackFunction);

        await Future.delayed(const Duration(seconds: 3), () {});

        expect(pref.containsKey(externalHandleKey), true);

        await flutterApi
            .onNotificationReceivedInBackground(standardAndroidPushMessage);
      },
      zoneValues: {
        androidCheckOverride: true,
      },
    );
  });
}
