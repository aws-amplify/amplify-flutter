import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_push_notifications/amplify_push_notifications.dart';
import 'package:amplify_push_notifications/src/native_push_notifications_plugin.g.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'plugin_configuration_test.mocks.dart';
import 'test_data/fake_amplify_configuration.dart';
import 'test_data/fake_defective_configuration.dart';
import 'test_data/fake_notification_messges.dart';
import 'util.dart';

Future<void> testGlobalCallbackFunction() async {}

@GenerateMocks(
  [
    PushNotificationsHostApi,
    ServiceProviderClient,
    AmplifySecureStorage,
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
  late MockServiceProviderClient mockServiceProviderClient;
  late MockPushNotificationsHostApi mockPushNotificationsHostApi;
  var shouldThrowError = false;

  Future<Map<String, dynamic>?>? handler(MethodCall methodCall) async {
    log.add(methodCall);
    if (methodCall.method == 'listen') {
      if (shouldThrowError) {
        await testWidgetsFlutterBinding.defaultBinaryMessenger
            .handlePlatformMessage(
          tokenReceivedEventChannel.name,
          tokenReceivedEventChannel.codec.encodeErrorEnvelope(
            code: 'test',
            message: 'error',
          ),
          (_) {},
        );
      } else {
        await testWidgetsFlutterBinding.defaultBinaryMessenger
            .handlePlatformMessage(
          tokenReceivedEventChannel.name,
          tokenReceivedEventChannel.codec
              .encodeSuccessEnvelope(<String, dynamic>{'token': '123'}),
          (_) {},
        );
      }
    }
    return null;
  }

  final config = AmplifyConfig.fromJson(
    jsonDecode(amplifyconfig) as Map<String, Object?>,
  );

  setUp(() {
    log.clear();
    testWidgetsFlutterBinding = TestWidgetsFlutterBinding.ensureInitialized();

    mockPushNotificationsHostApi = MockPushNotificationsHostApi();
    mockServiceProviderClient = MockServiceProviderClient();
    plugin = AmplifyPushNotifications(
      serviceProviderClient: mockServiceProviderClient,
      backgroundProcessor: () async => {},
      amplifySecureStorage: MockAmplifySecureStorage(),
      hostedApi: mockPushNotificationsHostApi,
    );

    testWidgetsFlutterBinding.defaultBinaryMessenger.setMockMethodCallHandler(
      MethodChannel(tokenReceivedEventChannel.name),
      handler,
    );
  });

  tearDown(() {
    log.clear();
    shouldThrowError = false;
  });

  group('Push Notifications config', () {
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

    test('should configure correctly', () async {
      log.clear();
      when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
        (_) => Future(() => androidPushMessage),
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
  });

  group('Class Method', () {
    test(
      'registerDeviceWhenConfigure',
      () async {
        await plugin.registerDeviceWhenConfigure();
        expect(log, <Matcher>[
          isMethodCall('listen', arguments: null),
          isMethodCall('cancel', arguments: null),
        ]);
      },
    );
    test(
      'registerDeviceWhenConfigure should throw error when device token was not fetched correctly',
      () async {
        shouldThrowError = true;
        expect(
          () async => plugin.registerDeviceWhenConfigure(),
          throwsA(const TypeMatcher<PushNotificationException>()),
        );
        expect(log, <Matcher>[isMethodCall('listen', arguments: null)]);
        shouldThrowError = false;
      },
    );

    test(
      'registerCallback succeeds',
      () async {
        await plugin.registerCallback(testGlobalCallbackFunction);
      },
    );

    test(
      'chekcAndRecordlaunchNotification suceeds',
      () async {
        log.clear();
        when(mockPushNotificationsHostApi.getLaunchNotification()).thenAnswer(
          (_) => Future(() => androidPushMessage),
        );
        await plugin.chekcAndRecordlaunchNotification();
        verify(
          mockServiceProviderClient.recordNotificationEvent(
            eventType: anyNamed('eventType'),
            notification: anyNamed('notification'),
          ),
        ).called(1);
      },
    );
  });

  group('PushNotificationMessage', () {
    test('fromJson should return the correct object', () {
      final push = PushNotificationMessage.fromJson(androidPushMessage);
      print([push.fcmOptions?.sentTime]);
    });
  });
}


// TODO: test PushNotification.fromJson
// TODO: Test Pinpoint Provider, background processor
// TODO: Test flutterAPI
// TODO: Test overrriden API methods by stubbing native calls
