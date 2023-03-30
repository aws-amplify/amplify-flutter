import 'dart:async';
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
import 'package:shared_preferences/shared_preferences.dart';

import 'amplify_push_noitfications_impl_test.mocks.dart';
import 'test_data/fake_amplify_configuration.dart';
import 'test_data/fake_defective_configuration.dart';
import 'test_data/fake_notification_messges.dart';
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
  const tokenReceivedEventChannel = EventChannel(
    'com.amazonaws.amplify/push_notification/event/TOKEN_RECEIVED',
  );

  final log = <MethodCall>[];
  late TestWidgetsFlutterBinding testWidgetsFlutterBinding;
  final authProviderRepo = AmplifyAuthProviderRepository()
    ..registerAuthProvider(
      const AmplifyAuthProviderToken(''),
      TestIamAuthProvider(),
    );
  late AmplifyPushNotifications plugin;
  final mockServiceProviderClient = MockServiceProviderClient();
  final mockPushNotificationsHostApi = MockPushNotificationsHostApi();
  final mockPushNotificationsNativeToFlutterApi =
      MockPushNotificationsNativeToFlutterApi();
  final mockAmplifySecureStorage = MockAmplifySecureStorage();

  final dependencyManager = DependencyManager()
    ..addInstance<AmplifyPushNotificationsFlutterApi>(
      mockPushNotificationsNativeToFlutterApi,
    )
    ..addInstance<PushNotificationsHostApi>(mockPushNotificationsHostApi)
    ..addInstance<AmplifySecureStorage>(mockAmplifySecureStorage);
  Future<Map<String, dynamic>?>? handler(MethodCall methodCall) async {
    log.add(methodCall);
    if (methodCall.method == 'listen') {
      await testWidgetsFlutterBinding.defaultBinaryMessenger
          .handlePlatformMessage(
        tokenReceivedEventChannel.name,
        tokenReceivedEventChannel.codec
            .encodeSuccessEnvelope(<String, dynamic>{'token': '123'}),
        (_) {},
      );
    }
    return null;
  }

  Future<Map<String, dynamic>?>? throwErrorHandler(
    MethodCall methodCall,
  ) async {
    log.add(methodCall);
    if (methodCall.method == 'listen') {
      await testWidgetsFlutterBinding.defaultBinaryMessenger
          .handlePlatformMessage(
        tokenReceivedEventChannel.name,
        tokenReceivedEventChannel.codec.encodeErrorEnvelope(
          code: 'test',
          message: 'error',
        ),
        (_) {},
      );
    }
    return null;
  }

  final config = AmplifyConfig.fromJson(
    jsonDecode(amplifyconfig) as Map<String, Object?>,
  );

  setUp(() {
    testWidgetsFlutterBinding = TestWidgetsFlutterBinding.ensureInitialized();
    plugin = AmplifyPushNotifications(
      serviceProviderClient: mockServiceProviderClient,
      backgroundProcessor: () async => {},
      dependencyManager: dependencyManager,
    );

    testWidgetsFlutterBinding.defaultBinaryMessenger.setMockMethodCallHandler(
      MethodChannel(tokenReceivedEventChannel.name),
      handler,
    );
  });

  tearDown(log.clear);

  group('Push Notifications config', () {
    setUp(() {
      testWidgetsFlutterBinding = TestWidgetsFlutterBinding.ensureInitialized();
      plugin = AmplifyPushNotifications(
        serviceProviderClient: mockServiceProviderClient,
        backgroundProcessor: () async => {},
        dependencyManager: dependencyManager,
      );

      testWidgetsFlutterBinding.defaultBinaryMessenger.setMockMethodCallHandler(
        MethodChannel(tokenReceivedEventChannel.name),
        handler,
      );
    });
    test('should configure correctly', () async {
      log.clear();
      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) => Future(() => standardAndroidPushMessage),
      );
      await plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      );
      expect(log, <Matcher>[
        isMethodCall('listen', arguments: null),
        isMethodCall('cancel', arguments: null),
        isMethodCall('listen', arguments: null),
      ]);
      verify(
        mockServiceProviderClient.recordNotificationEvent(
          eventType: anyNamed('eventType'),
          notification: anyNamed('notification'),
        ),
      ).called(1);
    });

    test('should throw exception when configuring if there is no appId present',
        () async {
      final config0 = AmplifyConfig.fromJson(
        jsonDecode(noPushAppIdAmplifyConfig) as Map<String, Object?>,
      );
      expect(
        () async => plugin.configure(
          authProviderRepo: authProviderRepo,
          config: config0,
        ),
        throwsA(const TypeMatcher<PushNotificationException>()),
      );
    });

    test('should fail configure when registering device is unsuccessfull',
        () async {
      log.clear();
      testWidgetsFlutterBinding.defaultBinaryMessenger.setMockMethodCallHandler(
        MethodChannel(tokenReceivedEventChannel.name),
        throwErrorHandler,
      );
      expect(
        () async => plugin.configure(
          authProviderRepo: authProviderRepo,
          config: config,
        ),
        throwsA(const TypeMatcher<PushNotificationException>()),
      );
    });

    test('should throw PushNotificationException if not configured', () async {
      expect(
        () async => plugin.onTokenReceived,
        throwsA(const TypeMatcher<PushNotificationException>()),
      );
      expect(
        () async => plugin.onNotificationReceivedInForeground,
        throwsA(const TypeMatcher<PushNotificationException>()),
      );
      expect(
        () async => plugin.onNotificationOpened,
        throwsA(const TypeMatcher<PushNotificationException>()),
      );
      expect(
        () async => plugin.launchNotification,
        throwsA(const TypeMatcher<PushNotificationException>()),
      );
      expect(
        () async => plugin.identifyUser(
          userId: 'userId',
          userProfile: AnalyticsUserProfile(),
        ),
        throwsA(const TypeMatcher<PushNotificationException>()),
      );
      expect(
        () async => plugin.requestPermissions(),
        throwsA(const TypeMatcher<PushNotificationException>()),
      );
      expect(
        () async => plugin.getPermissionStatus(),
        throwsA(const TypeMatcher<PushNotificationException>()),
      );

      expect(
        () async => plugin.setBadgeCount(42),
        throwsA(const TypeMatcher<PushNotificationException>()),
      );
      expect(
        () async => plugin.getBadgeCount(),
        throwsA(const TypeMatcher<PushNotificationException>()),
      );
    });
  });

  group('Permission APIs', () {
    setUp(() async {
      log.clear();

      testWidgetsFlutterBinding = TestWidgetsFlutterBinding.ensureInitialized();
      plugin = AmplifyPushNotifications(
        serviceProviderClient: mockServiceProviderClient,
        backgroundProcessor: () async => {},
        dependencyManager: dependencyManager,
      );

      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) => Future(() => standardAndroidPushMessage),
      );
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
        (_) => Future(
          () => true,
        ),
      );
      final res = await plugin.requestPermissions();
      expect(
        res,
        true,
      );
    });
  });

  group('Badge count APIs', () {
    setUp(() async {
      log.clear();

      testWidgetsFlutterBinding = TestWidgetsFlutterBinding.ensureInitialized();
      plugin = AmplifyPushNotifications(
        serviceProviderClient: mockServiceProviderClient,
        backgroundProcessor: () async => {},
        dependencyManager: dependencyManager,
      );

      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) => Future(() => standardAndroidPushMessage),
      );
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
        mockPushNotificationsHostApi.setBadgeCount(any),
      ).called(1);
    });
  });

  group('Analytics API', () {
    setUp(() async {
      log.clear();

      testWidgetsFlutterBinding = TestWidgetsFlutterBinding.ensureInitialized();
      plugin = AmplifyPushNotifications(
        serviceProviderClient: mockServiceProviderClient,
        backgroundProcessor: () async => {},
        dependencyManager: dependencyManager,
      );

      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) => Future(() => standardAndroidPushMessage),
      );
      await plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      );
    });
    test('identifyUser', () {
      plugin.identifyUser(
        userId: 'test-user-1',
        userProfile: AnalyticsUserProfile(),
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
      testWidgetsFlutterBinding = TestWidgetsFlutterBinding.ensureInitialized();
      plugin = AmplifyPushNotifications(
        serviceProviderClient: mockServiceProviderClient,
        backgroundProcessor: () async => {},
        dependencyManager: dependencyManager,
      );
    });
    test(
        'onNotificationReceivedInBackground throws an Exception when the given callback function is not top-level or static',
        () async {
      runZoned(
        () {
          plugin = AmplifyPushNotifications(
            serviceProviderClient: mockServiceProviderClient,
            backgroundProcessor: () async => {},
          );

          expect(
            () async => plugin.onNotificationReceivedInBackground(
              (testGlobalCallbackFunction) {},
            ),
            throwsA(const TypeMatcher<PushNotificationException>()),
          );
        },
        zoneValues: {
          androidCheckOverride: true,
        },
      );
    });

    test(
        'onNotificationReceivedInBackground should register a top-level or static callback function',
        () async {
      await runZoned(
        () async {
          SharedPreferences.setMockInitialValues({});
          final pref = await SharedPreferences.getInstance();
          plugin = AmplifyPushNotifications(
            serviceProviderClient: mockServiceProviderClient,
            backgroundProcessor: () async => {},
          )..onNotificationReceivedInBackground(
              testGlobalCallbackFunction,
            );
          await Future.delayed(const Duration(seconds: 3), () {});

          expect(pref.containsKey(externalHandleKey), true);
        },
        zoneValues: {
          androidCheckOverride: true,
        },
      );
    });

    test('should invoke the top-level or static external callback function',
        () async {
      await runZoned(
        () async {
          SharedPreferences.setMockInitialValues({});
          final pref = await SharedPreferences.getInstance();
          plugin = AmplifyPushNotifications(
            serviceProviderClient: mockServiceProviderClient,
            backgroundProcessor: () async => {},
            dependencyManager: dependencyManager,
          )..onNotificationReceivedInBackground(
              testGlobalCallbackFunction,
            );
          await Future.delayed(const Duration(seconds: 3), () {});

          expect(pref.containsKey(externalHandleKey), true);

          await mockPushNotificationsNativeToFlutterApi
              .onNotificationReceivedInBackground(standardAndroidPushMessage);
        },
        zoneValues: {
          androidCheckOverride: true,
        },
      );
    });

    test('onNotificationReceivedInBackground should accept the callback on iOS',
        () async {
      runZoned(
        () {
          plugin = AmplifyPushNotifications(
            serviceProviderClient: mockServiceProviderClient,
            backgroundProcessor: () async => {},
            dependencyManager: dependencyManager,
          )..onNotificationReceivedInBackground(
              (testGlobalCallbackFunction) {},
            );
          verify(
            mockPushNotificationsNativeToFlutterApi
                .registerOnReceivedInBackgroundCallback(
              any,
            ),
          ).called(1);
        },
        zoneValues: {
          iosCheckOverride: true,
        },
      );
    });
  });
}
