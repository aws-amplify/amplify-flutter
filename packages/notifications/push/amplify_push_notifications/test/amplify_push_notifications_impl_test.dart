// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_push_notifications/amplify_push_notifications.dart';
import 'package:amplify_push_notifications/src/native_push_notifications_plugin.g.dart';
import 'package:amplify_push_notifications/src/push_notifications_flutter_api.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:os_detect/override.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'amplify_push_notifications_impl_test.mocks.dart';
import 'test_data/fake_amplify_configuration.dart';
import 'test_data/fake_defective_configuration.dart';
import 'test_data/fake_notification_messges.dart';
import 'test_data/test_amplify_push_notifications_impl.dart';
import 'util.dart';

void testGlobalCallbackFunction(PushNotificationMessage pushMessage) {}
Future<void> testBackgroundProcessor() async {}

@GenerateMocks(
  [
    PushNotificationsHostApi,
    ServiceProviderClient,
    AmplifySecureStorage,
    AmplifyPushNotificationsFlutterApi,
  ],
)
void main() {
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

  // TODO(nikahsn): update to use AmplifyOutputs config
  final config = AmplifyConfig.fromJson(
    jsonDecode(amplifyconfig) as Map<String, Object?>,
    // ignore: invalid_use_of_internal_member
  ).toAmplifyOutputs();

  setUp(() {
    plugin = TestAmplifyPushNotifications(
      serviceProviderClient: mockServiceProviderClient,
      backgroundProcessor: () async => {},
      dependencyManager: dependencyManager,
    );
  });

  group('Push Notifications config', () {
    setUp(() {
      // TODO(Samaritan1011001): This delay should not be needed, debug why bufferedStream.peek won't trigger without this
      // Sending the token after a delay so that bufferedStream.peek in configure gets the token.
      // This is only required for tests since StreamQueue used for buffered stream in impl
      // listens to the channel before bufferedStream.peek call making it useless to emit event when listened.
      // This delay is replicated throughout the tests so bufferedStream.peek can fire.
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

    tearDown(() {
      reset(mockServiceProviderClient);
      resetMockitoState();
    });

    test('should configure correctly', () async {
      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) async => standardAndroidPushMessage.cast(),
      );

      await plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      );

      verify(mockPushNotificationsHostApi.requestInitialToken()).called(1);
      verify(
        mockServiceProviderClient.recordNotificationEvent(
          eventType: PinpointEventType.notificationOpened,
          notification: anyNamed('notification'),
        ),
      ).called(1);
    });

    test(
        'should fire both internal one time token and external token received listener',
        () async {
      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) async => standardAndroidPushMessage.cast(),
      );

      await plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      );

      verify(mockPushNotificationsHostApi.requestInitialToken()).called(1);
      verify(mockServiceProviderClient.registerDevice('123')).called(1);

      void tokenHandler(String token) {
        expect(token, '123');
      }

      plugin.onTokenReceived.listen(tokenHandler);
    });

    test('should register background processor on Android', () async {
      await overrideOperatingSystem(
        const OperatingSystem('android', ''),
        () async {
          when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
            (_) async => standardAndroidPushMessage.cast(),
          );
          plugin = TestAmplifyPushNotifications(
            serviceProviderClient: mockServiceProviderClient,
            backgroundProcessor: testBackgroundProcessor,
            dependencyManager: dependencyManager,
          );
          await plugin.configure(
            authProviderRepo: authProviderRepo,
            config: config,
          );

          verify(mockPushNotificationsHostApi.registerCallbackFunction(any))
              .called(1);
        },
      );
    });

    test('should invoke registered event listeners', () async {
      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) async => null,
      );

      plugin = TestAmplifyPushNotifications(
        serviceProviderClient: mockServiceProviderClient,
        backgroundProcessor: testBackgroundProcessor,
        dependencyManager: dependencyManager,
      );
      await plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      );

      await testWidgetsFlutterBinding.defaultBinaryMessenger
          .handlePlatformMessage(
        notificationOpenedEventChannel.name,
        notificationOpenedEventChannel.codec
            .encodeSuccessEnvelope(standardAndroidPushMessage),
        (_) {},
      );

      verify(
        mockServiceProviderClient.recordNotificationEvent(
          eventType: PinpointEventType.notificationOpened,
          notification: anyNamed('notification'),
        ),
      ).called(1);

      await testWidgetsFlutterBinding.defaultBinaryMessenger
          .handlePlatformMessage(
        foregroundNotificationEventChannel.name,
        foregroundNotificationEventChannel.codec
            .encodeSuccessEnvelope(standardAndroidPushMessage),
        (_) {},
      );

      verify(
        mockServiceProviderClient.recordNotificationEvent(
          eventType: PinpointEventType.foregroundMessageReceived,
          notification: anyNamed('notification'),
        ),
      ).called(1);
    });
  });
  group('Config failure cases', () {
    test('should throw exception when configuring if there is no appId present',
        () async {
      // TODO(nikahsn): update to use AmplifyOutputs config
      final config = AmplifyConfig.fromJson(
        jsonDecode(noPushAppIdAmplifyConfig) as Map<String, Object?>,
        // ignore: invalid_use_of_internal_member
      ).toAmplifyOutputs();
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

      overrideOperatingSystem(
        const OperatingSystem('ios', ''),
        () {
          expect(
            () async => plugin.setBadgeCount(42),
            throwsA(isA<ConfigurationError>()),
          );
          expect(
            () async => plugin.getBadgeCount(),
            throwsA(isA<ConfigurationError>()),
          );
        },
      );
    });

    test('configure should log an error if timed out awaiting for device token',
        () async {
      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) async => standardAndroidPushMessage.cast(),
      );
      final loggerPlugin = InMemoryLogger();
      AmplifyLogger.category(Category.pushNotifications)
          .registerPlugin(loggerPlugin);
      await plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      );
      expect(loggerPlugin.logs.length, 1);
      expect(loggerPlugin.logs.first.level, LogLevel.error);
    });
  });
  test('should fail configure when registering device is unsuccessful',
      () async {
    plugin = TestAmplifyPushNotifications(
      serviceProviderClient: mockServiceProviderClient,
      backgroundProcessor: () async => {},
      dependencyManager: dependencyManager,
    );
    when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
      (_) async => standardAndroidPushMessage.cast(),
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
      plugin = TestAmplifyPushNotifications(
        serviceProviderClient: mockServiceProviderClient,
        backgroundProcessor: () async => {},
        dependencyManager: dependencyManager,
      );

      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) async => standardAndroidPushMessage.cast(),
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
      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) async => standardAndroidPushMessage.cast(),
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
    });
    test('getBadgeCount returns a badge count', () async {
      await overrideOperatingSystem(
        const OperatingSystem('ios', ''),
        () async {
          plugin = TestAmplifyPushNotifications(
            serviceProviderClient: mockServiceProviderClient,
            backgroundProcessor: () async => {},
            dependencyManager: dependencyManager,
          );
          await plugin.configure(
            authProviderRepo: authProviderRepo,
            config: config,
          );
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
        },
      );
    });

    test('setBadgeCount calls the native layer to set', () async {
      await overrideOperatingSystem(
        const OperatingSystem('ios', ''),
        () async {
          plugin = TestAmplifyPushNotifications(
            serviceProviderClient: mockServiceProviderClient,
            backgroundProcessor: () async => {},
            dependencyManager: dependencyManager,
          );
          await plugin.configure(
            authProviderRepo: authProviderRepo,
            config: config,
          );
          plugin.setBadgeCount(42);
          verify(
            mockPushNotificationsHostApi.setBadgeCount(42),
          ).called(1);
        },
      );
    });
  });

  group('Analytics API', () {
    setUp(() async {
      plugin = TestAmplifyPushNotifications(
        serviceProviderClient: mockServiceProviderClient,
        backgroundProcessor: () async => {},
        dependencyManager: dependencyManager,
      );

      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) async => standardAndroidPushMessage.cast(),
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
        await Future.delayed(const Duration(microseconds: 1), () {});

        expect(pref.containsKey(externalHandleKey), isTrue);
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

  test('get launchNotification is consumable', () async {
    Future.delayed(const Duration(microseconds: 1), () async {
      await testWidgetsFlutterBinding.defaultBinaryMessenger
          .handlePlatformMessage(
        tokenReceivedEventChannel.name,
        tokenReceivedEventChannel.codec
            .encodeSuccessEnvelope(<String, dynamic>{'token': '123'}),
        (_) {},
      );
    });
    when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
      (_) async => standardAndroidPushMessage.cast(),
    );

    await plugin.configure(
      authProviderRepo: authProviderRepo,
      config: config,
    );

    expect(
      plugin.launchNotification?.title,
      equals(
        PushNotificationMessage.fromJson(
          standardAndroidPushMessage.cast(),
        ).title,
      ),
    );
    expect(
      plugin.launchNotification,
      isNull,
    );
  });
}

class InMemoryLogger implements AWSLoggerPlugin {
  final List<LogEntry> logs = [];

  @override
  void handleLogEntry(LogEntry logEntry) {
    logs.add(logEntry);
  }
}
