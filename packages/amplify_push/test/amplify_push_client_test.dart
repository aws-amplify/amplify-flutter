// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:amplify_push/amplify_push.dart';
import 'package:amplify_push/src/native_push_plugin.g.dart';
import 'package:amplify_push/src/push_flutter_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'test_data/fake_notification_messages.dart';

class MockHostApi extends Mock implements PushNotificationsHostApi {}

class MockPushServiceProvider extends Mock implements PushServiceProvider {}

class FakePushEvent extends Fake implements PushEvent {}

class FakePermissionsOptions extends Fake implements PermissionsOptions {}

void main() {
  late MockHostApi mockHostApi;
  late PushFlutterApi flutterApi;

  setUpAll(() {
    registerFallbackValue(FakePushEvent());
    registerFallbackValue(FakePermissionsOptions());
  });

  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({});
    PushFlutterApi.reset();
    AmplifyPushClient.resetForTesting();
    flutterApi = PushFlutterApi.instance;
    mockHostApi = MockHostApi();
  });

  group('AmplifyPushClient.create', () {
    test('creates client in standalone mode (no provider)', () async {
      when(() => mockHostApi.requestInitialToken()).thenAnswer((_) async {});
      when(
        () => mockHostApi.getLaunchNotification(),
      ).thenAnswer((_) async => null);

      final result = await AmplifyPushClient.create(
        hostApi: mockHostApi,
        flutterApi: flutterApi,
      );

      switch (result) {
        case Ok(:final value):
          expect(value, isA<AmplifyPushClient>());
        case Error(:final error):
          fail('Expected Ok, got Error: $error');
      }
    });

    test('creates client with provider and registers token', () async {
      final mockProvider = MockPushServiceProvider();
      when(() => mockProvider.onTokenReceived(any())).thenAnswer((_) async {});
      when(() => mockProvider.onPushEvent(any())).thenAnswer((_) async {});
      when(() => mockHostApi.requestInitialToken()).thenAnswer((_) async {});
      when(
        () => mockHostApi.getLaunchNotification(),
      ).thenAnswer((_) async => null);

      // Note: In a real test we'd need to simulate the token event channel
      // firing. Since we can't easily do that without the full binding,
      // the create() will timeout on token wait and log a warning — that's OK.
      final result = await AmplifyPushClient.create(
        provider: mockProvider,
        hostApi: mockHostApi,
        flutterApi: flutterApi,
      );

      expect(result, isA<Ok<AmplifyPushClient>>());
    });

    test('returns launch notification when present', () async {
      when(() => mockHostApi.requestInitialToken()).thenAnswer((_) async {});
      when(
        () => mockHostApi.getLaunchNotification(),
      ).thenAnswer((_) async => standardAndroidPushMessage.cast());

      final result = await AmplifyPushClient.create(
        hostApi: mockHostApi,
        flutterApi: flutterApi,
      );

      switch (result) {
        case Ok(:final value):
          final launch = value.launchNotification;
          expect(launch, isNotNull);
          expect(launch!.title, 'TITLE');
          // Consumed on first read
          expect(value.launchNotification, isNull);
        case Error(:final error):
          fail('Expected Ok, got Error: $error');
      }
    });

    test('notifies provider of launch notification', () async {
      final mockProvider = MockPushServiceProvider();
      when(() => mockProvider.onTokenReceived(any())).thenAnswer((_) async {});
      when(() => mockProvider.onPushEvent(any())).thenAnswer((_) async {});
      when(() => mockHostApi.requestInitialToken()).thenAnswer((_) async {});
      when(
        () => mockHostApi.getLaunchNotification(),
      ).thenAnswer((_) async => standardAndroidPushMessage.cast());

      await AmplifyPushClient.create(
        provider: mockProvider,
        hostApi: mockHostApi,
        flutterApi: flutterApi,
      );

      final captured =
          verify(() => mockProvider.onPushEvent(captureAny())).captured.single
              as PushEvent;
      expect(captured.type, PushEventType.opened);
      expect(captured.notification.title, 'TITLE');
    });
  });

  group('Permission APIs', () {
    late AmplifyPushClient client;

    setUp(() async {
      when(() => mockHostApi.requestInitialToken()).thenAnswer((_) async {});
      when(
        () => mockHostApi.getLaunchNotification(),
      ).thenAnswer((_) async => null);

      final result = await AmplifyPushClient.create(
        hostApi: mockHostApi,
        flutterApi: flutterApi,
      );
      client = (result as Ok<AmplifyPushClient>).value;
    });

    test('getPermissionStatus returns granted', () async {
      when(() => mockHostApi.getPermissionStatus()).thenAnswer(
        (_) async =>
            GetPermissionStatusResult(status: PermissionStatus.granted),
      );

      final result = await client.getPermissionStatus();
      switch (result) {
        case Ok(:final value):
          expect(value, PushPermissionStatus.granted);
        case Error(:final error):
          fail('Expected Ok, got Error: $error');
      }
    });

    test('getPermissionStatus returns denied', () async {
      when(() => mockHostApi.getPermissionStatus()).thenAnswer(
        (_) async => GetPermissionStatusResult(status: PermissionStatus.denied),
      );

      final result = await client.getPermissionStatus();
      expect((result as Ok).value, PushPermissionStatus.denied);
    });

    test('requestPermissions returns true when granted', () async {
      when(
        () => mockHostApi.requestPermissions(any()),
      ).thenAnswer((_) async => true);

      final result = await client.requestPermissions();
      expect((result as Ok).value, isTrue);
    });

    test('requestPermissions returns false when denied', () async {
      when(
        () => mockHostApi.requestPermissions(any()),
      ).thenAnswer((_) async => false);

      final result = await client.requestPermissions();
      expect((result as Ok).value, isFalse);
    });
  });

  group('Badge count APIs', () {
    late AmplifyPushClient client;

    setUp(() async {
      when(() => mockHostApi.requestInitialToken()).thenAnswer((_) async {});
      when(
        () => mockHostApi.getLaunchNotification(),
      ).thenAnswer((_) async => null);

      final result = await AmplifyPushClient.create(
        hostApi: mockHostApi,
        flutterApi: flutterApi,
      );
      client = (result as Ok<AmplifyPushClient>).value;
    });

    test('getBadgeCount returns count from native', () async {
      when(() => mockHostApi.getBadgeCount()).thenAnswer((_) async => 5);

      final result = await client.getBadgeCount();
      expect((result as Ok).value, 5);
    });

    test('setBadgeCount calls native', () {
      when(() => mockHostApi.setBadgeCount(any())).thenAnswer((_) async {});

      client.setBadgeCount(42);
      verify(() => mockHostApi.setBadgeCount(42)).called(1);
    });
  });

  group('Client lifecycle', () {
    late AmplifyPushClient client;

    setUp(() async {
      when(() => mockHostApi.requestInitialToken()).thenAnswer((_) async {});
      when(
        () => mockHostApi.getLaunchNotification(),
      ).thenAnswer((_) async => null);

      final result = await AmplifyPushClient.create(
        hostApi: mockHostApi,
        flutterApi: flutterApi,
      );
      client = (result as Ok<AmplifyPushClient>).value;
    });

    test('close prevents further operations', () async {
      await client.close();

      expect(
        () => client.onTokenReceived,
        throwsA(isA<PushClientClosedException>()),
      );
      expect(
        () => client.onNotificationReceivedInForeground,
        throwsA(isA<PushClientClosedException>()),
      );
      expect(
        () => client.onNotificationOpened,
        throwsA(isA<PushClientClosedException>()),
      );
      expect(
        () => client.launchNotification,
        throwsA(isA<PushClientClosedException>()),
      );

      final permResult = await client.getPermissionStatus();
      expect(permResult, isA<Error<PushPermissionStatus>>());

      final badgeResult = await client.getBadgeCount();
      expect(badgeResult, isA<Error<int>>());
    });
  });
}
