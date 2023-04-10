// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:ui';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_push_notifications/amplify_push_notifications.dart';
import 'package:amplify_push_notifications/src/native_push_notifications_plugin.g.dart';
import 'package:amplify_push_notifications/src/push_notifications_flutter_api.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:os_detect/override.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'amplify_push_noitfications_impl_test.mocks.dart';
import 'test_data/fake_amplify_configuration.dart';
import 'test_data/fake_defective_configuration.dart';
import 'test_data/fake_notification_messges.dart';
import 'test_data/test_amplify_push_notifications_impl.dart';
import 'util.dart';

void testGlobalCallbackFunction(PushNotificationMessage pushMessage) {}

@GenerateMocks(
  [
    PushNotificationsHostApi,
    ServiceProviderClient,
    AmplifySecureStorage,
    PluginUtilities,
    AmplifyPushNotificationsFlutterApi,
  ],
)
void main() {
  final log = <MethodCall>[];
  final testWidgetsFlutterBinding =
      TestWidgetsFlutterBinding.ensureInitialized();
  final authProviderRepo = AmplifyAuthProviderRepository()
    ..registerAuthProvider(
      const AmplifyAuthProviderToken(''),
      TestIamAuthProvider(),
    );
  late AmplifyPushNotifications plugin;
  final mockServiceProviderClient = MockServiceProviderClient();
  final mockPushNotificationsHostApi = MockPushNotificationsHostApi();
  final mockPushNotificationsNativeToFlutterApi =
      MockAmplifyPushNotificationsFlutterApi();
  final mockAmplifySecureStorage = MockAmplifySecureStorage();

  final dependencyManager = DependencyManager()
    ..addInstance<AmplifyPushNotificationsFlutterApi>(
      mockPushNotificationsNativeToFlutterApi,
    )
    ..addInstance<PushNotificationsHostApi>(mockPushNotificationsHostApi)
    ..addInstance<AmplifySecureStorage>(mockAmplifySecureStorage);
  Future<Map<String, dynamic>?>? handler(MethodCall methodCall) async {
    log.add(methodCall);
    return null;
  }

  Future<Map<String, dynamic>?>? throwErrorHandler(
    MethodCall methodCall,
  ) async {
    log.add(methodCall);
    return null;
  }

  final config = AmplifyConfig.fromJson(
    jsonDecode(amplifyconfig) as Map<String, Object?>,
  );

  setUp(() {
    testWidgetsFlutterBinding.defaultBinaryMessenger.setMockMethodCallHandler(
      MethodChannel(tokenReceivedEventChannel.name),
      handler,
    );
    plugin = TestAmplifyPushNotifications(
      serviceProviderClient: mockServiceProviderClient,
      backgroundProcessor: () async => {},
      dependencyManager: dependencyManager,
    );
  });

  tearDown(log.clear);

  group('Push Notifications config', () {
    setUp(() {
      // Sending the token after a delay so that token.first in configure gets the token.
      // This is only required for tests since StreamQueue used for buffered stream in impl
      // listens to the channel before token.first call making it useless to emit event when listened.
      // This delay is replicated throughout the tests so token.first can fire.
      Future.delayed(const Duration(microseconds: 1), () async {
        await testWidgetsFlutterBinding.defaultBinaryMessenger
            .handlePlatformMessage(
          tokenReceivedEventChannel.name,
          tokenReceivedEventChannel.codec
              .encodeSuccessEnvelope(<String, dynamic>{'token': '123'}),
          (_) {},
        );
      });
    });
    tearDown(log.clear);

    test('should configure correctly', () async {
      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) async => standardAndroidPushMessage,
      );

      await plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      );

      verify(
        mockServiceProviderClient.recordNotificationEvent(
          eventType: anyNamed('eventType'),
          notification: anyNamed('notification'),
        ),
      ).called(1);
    });

    test(
        'should fire both internal token.first and external token received listener',
        () async {
      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) async => standardAndroidPushMessage,
      );

      await plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      );

      void tokenHandler(String t) {
        expect(t, '123');
      }

      plugin.onTokenReceived.listen(tokenHandler);
    });
  });
  group('Config failure cases', () {
    test('should throw exception when configuring if there is no appId present',
        () async {
      final config = AmplifyConfig.fromJson(
        jsonDecode(noPushAppIdAmplifyConfig) as Map<String, Object?>,
      );
      expect(
        () async => plugin.configure(
          authProviderRepo: authProviderRepo,
          config: config,
        ),
        throwsA(
          isA<PushNotificationException>().having(
            (e) => e.message,
            'No config',
            contains('No Pinpoint plugin'),
          ),
        ),
      );
    });

    test('should throw PushNotificationException if not configured', () async {
      expect(
        () async => plugin.onTokenReceived,
        throwsA(isA<ConfigurationError>()),
      );
      expect(
        () async => plugin.onNotificationReceivedInForeground,
        throwsA(isA<ConfigurationError>()),
      );
      expect(
        () async => plugin.onNotificationOpened,
        throwsA(isA<ConfigurationError>()),
      );
      expect(
        () async => plugin.launchNotification,
        throwsA(isA<ConfigurationError>()),
      );
      expect(
        () => plugin.identifyUser(
          userId: 'userId',
          userProfile: const UserProfile(),
        ),
        throwsA(isA<ConfigurationError>()),
      );
      expect(
        () => plugin.requestPermissions(),
        throwsA(isA<ConfigurationError>()),
      );
      expect(
        () async => plugin.getPermissionStatus(),
        throwsA(isA<ConfigurationError>()),
      );

      expect(
        () async => plugin.setBadgeCount(42),
        throwsA(isA<ConfigurationError>()),
      );
      expect(
        () async => plugin.getBadgeCount(),
        throwsA(isA<ConfigurationError>()),
      );
    });
  });
  test('should fail configure when registering device is unsuccessfull',
      () async {
    plugin = TestAmplifyPushNotifications(
      serviceProviderClient: mockServiceProviderClient,
      backgroundProcessor: () async => {},
      dependencyManager: dependencyManager,
    );
    when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
      (_) async => standardAndroidPushMessage,
    );
    testWidgetsFlutterBinding.defaultBinaryMessenger.setMockMethodCallHandler(
      MethodChannel(tokenReceivedEventChannel.name),
      throwErrorHandler,
    );
    Future.delayed(const Duration(microseconds: 1), () async {
      await testWidgetsFlutterBinding.defaultBinaryMessenger
          .handlePlatformMessage(
        tokenReceivedEventChannel.name,
        tokenReceivedEventChannel.codec.encodeErrorEnvelope(
          code: 'test',
          message: 'error',
        ),
        (_) {},
      );
    });
    expect(
      () async => plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      ),
      throwsA(
        isA<PushNotificationException>().having(
          (e) => e.message,
          'token message',
          contains('device token'),
        ),
      ),
    );
  });

  group('Permission APIs', () {
    setUp(() async {
      log.clear();
      plugin = TestAmplifyPushNotifications(
        serviceProviderClient: mockServiceProviderClient,
        backgroundProcessor: () async => {},
        dependencyManager: dependencyManager,
      );

      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) async => standardAndroidPushMessage,
      );
      Future.delayed(const Duration(microseconds: 1), () async {
        await testWidgetsFlutterBinding.defaultBinaryMessenger
            .handlePlatformMessage(
          tokenReceivedEventChannel.name,
          tokenReceivedEventChannel.codec
              .encodeSuccessEnvelope(<String, dynamic>{'token': '123'}),
          (_) {},
        );
      });
      await plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      );
    });
    test('getPermissionStatus returns a permission status', () async {
      when(mockPushNotificationsHostApi.getPermissionStatus()).thenAnswer(
        (_) => Future(
          () => GetPermissionStatusResult(status: PermissionStatus.granted),
        ),
      );
      final res = await plugin.getPermissionStatus();
      expect(
        res,
        PushNotificationPermissionStatus.granted,
      );
    });

    test('requestPermissions returns a permission status', () async {
      when(mockPushNotificationsHostApi.requestPermissions(any)).thenAnswer(
        (_) async => true,
      );
      final res = await plugin.requestPermissions();
      expect(
        res,
        isTrue,
      );
    });
  });

  group('Badge count APIs', () {
    setUp(() async {
      log.clear();
      plugin = TestAmplifyPushNotifications(
        serviceProviderClient: mockServiceProviderClient,
        backgroundProcessor: () async => {},
        dependencyManager: dependencyManager,
      );

      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) async => standardAndroidPushMessage,
      );
      Future.delayed(const Duration(microseconds: 1), () async {
        await testWidgetsFlutterBinding.defaultBinaryMessenger
            .handlePlatformMessage(
          tokenReceivedEventChannel.name,
          tokenReceivedEventChannel.codec
              .encodeSuccessEnvelope(<String, dynamic>{'token': '123'}),
          (_) {},
        );
      });
      await plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      );
    });
    test('getBadgeCount returns a badge count', () async {
      when(mockPushNotificationsHostApi.getBadgeCount()).thenAnswer(
        (_) => Future(
          () => 42,
        ),
      );
      final res = await plugin.getBadgeCount();
      expect(
        res,
        42,
      );
    });

    test('setBadgeCount calls the native layer to set', () async {
      await plugin.setBadgeCount(42);
      verify(
        mockPushNotificationsHostApi.setBadgeCount(42),
      ).called(1);
    });
  });

  group('Analytics API', () {
    setUp(() async {
      log.clear();
      plugin = TestAmplifyPushNotifications(
        serviceProviderClient: mockServiceProviderClient,
        backgroundProcessor: () async => {},
        dependencyManager: dependencyManager,
      );

      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) async => standardAndroidPushMessage,
      );

      Future.delayed(const Duration(microseconds: 1), () async {
        await testWidgetsFlutterBinding.defaultBinaryMessenger
            .handlePlatformMessage(
          tokenReceivedEventChannel.name,
          tokenReceivedEventChannel.codec
              .encodeSuccessEnvelope(<String, dynamic>{'token': '123'}),
          (_) {},
        );
      });
      await plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      );
    });
    test('identifyUser', () {
      plugin.identifyUser(
        userId: 'test-user-1',
        userProfile: const UserProfile(),
      );
      verify(
        mockServiceProviderClient.identifyUser(
          userId: anyNamed('userId'),
          userProfile: anyNamed('userProfile'),
        ),
      ).called(1);
    });
  });

  group('Notification handling APIs', () {
    setUp(() {
      log.clear();
      plugin = TestAmplifyPushNotifications(
        serviceProviderClient: mockServiceProviderClient,
        backgroundProcessor: () async => {},
        dependencyManager: dependencyManager,
      );
    });
    test(
        'onNotificationReceivedInBackground throws an Exception when the given callback function is not top-level or static',
        () async {
      overrideOperatingSystem(
        const OperatingSystem('android', ''),
        () {
          plugin = TestAmplifyPushNotifications(
            serviceProviderClient: mockServiceProviderClient,
            backgroundProcessor: () async => {},
          );
          expect(
            () async => plugin.onNotificationReceivedInBackground(
              (testGlobalCallbackFunction) {},
            ),
            throwsA(
              isA<PushNotificationException>().having(
                (e) => e.message,
                'not a gloabal funciton',
                contains('not a global or static function'),
              ),
            ),
          );
        },
      );
    });
  });

  test(
      'onNotificationReceivedInBackground should register a top-level or static callback function',
      () async {
    await overrideOperatingSystem(
      const OperatingSystem('android', ''),
      () async {
        SharedPreferences.setMockInitialValues({});
        final pref = await SharedPreferences.getInstance();
        plugin = TestAmplifyPushNotifications(
          serviceProviderClient: mockServiceProviderClient,
          backgroundProcessor: () async => {},
        )..onNotificationReceivedInBackground(
            testGlobalCallbackFunction,
          );
        await Future.delayed(const Duration(seconds: 3), () {});

        expect(pref.containsKey(externalHandleKey), isTrue);
      },
    );
  });

  test('should invoke the top-level or static external callback function',
      () async {
    await overrideOperatingSystem(
      const OperatingSystem('android', ''),
      () async {
        SharedPreferences.setMockInitialValues({});
        final pref = await SharedPreferences.getInstance();
        plugin = TestAmplifyPushNotifications(
          serviceProviderClient: mockServiceProviderClient,
          backgroundProcessor: () async => {},
          dependencyManager: dependencyManager,
        )..onNotificationReceivedInBackground(
            testGlobalCallbackFunction,
          );
        await Future.delayed(const Duration(seconds: 3), () {});

        expect(pref.containsKey(externalHandleKey), isTrue);

        await mockPushNotificationsNativeToFlutterApi
            .onNotificationReceivedInBackground(standardAndroidPushMessage);
      },
    );
  });

  test('onNotificationReceivedInBackground should accept the callback on iOS',
      () async {
    overrideOperatingSystem(
      const OperatingSystem('ios', ''),
      () {
        void localiOScallback(testGlobalCallbackFunction) {}
        plugin = TestAmplifyPushNotifications(
          serviceProviderClient: mockServiceProviderClient,
          backgroundProcessor: () async => {},
          dependencyManager: dependencyManager,
        )..onNotificationReceivedInBackground(
            localiOScallback,
          );
        verify(
          mockPushNotificationsNativeToFlutterApi
              .registerOnReceivedInBackgroundCallback(
            localiOScallback,
          ),
        ).called(1);
      },
    );
  });
}
