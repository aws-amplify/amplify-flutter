// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/analytics_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/event_client.dart';
import 'package:amplify_core/src/config/amplify_outputs/notifications/amazon_pinpoint_channel.dart';
import 'package:amplify_core/src/config/amplify_outputs/notifications/notifications_outputs.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_push_notifications_pinpoint/src/pinpoint_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'test_data/fake_notification_messges.dart';

class MockAmplifyAuthProviderRepository extends Mock
    implements AmplifyAuthProviderRepository {}

class MockAWSIamAmplifyAuthProvider extends Mock
    implements AWSIamAmplifyAuthProvider {}

class MockUserProfile extends Mock implements UserProfile {}

class MockAnalyticsClient extends Mock implements AnalyticsClient {}

class MockEndpointClient extends Mock implements EndpointClient {}

class MockEventClient extends Mock implements EventClient {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final pinpointProvider = PinpointProvider();
  final mockAmplifyAuthProviderRepository = MockAmplifyAuthProviderRepository();
  const notificationsPinpointConfig = NotificationsOutputs(
    amazonPinpointAppId: 'APP_ID',
    awsRegion: 'REGION',
    channels: [AmazonPinpointChannel.fcm, AmazonPinpointChannel.apns],
  );
  final awsIamAmplifyAuthProvider = MockAWSIamAmplifyAuthProvider();
  final mockAnalyticsClient = MockAnalyticsClient();
  group('PinpointProvider', () {
    setUpAll(() {
      registerFallbackValue(
        const AmplifyAuthProviderToken<AmplifyAuthProvider>('mock-token'),
      );
      registerFallbackValue(
        const AWSCredentialsProvider(
          AWSCredentials(
            'accessKeyId',
            'secretAccessKey',
          ),
        ),
      );
    });
    test('init fails when retrieving an Auth provider was not successful', () {
      when(
        () => mockAmplifyAuthProviderRepository
            .getAuthProvider<AmplifyAuthProvider>(any()),
      ).thenReturn(null);
      expect(
        () async => pinpointProvider.init(
          config: notificationsPinpointConfig,
          authProviderRepo: mockAmplifyAuthProviderRepository,
        ),
        throwsA(
          isA<ConfigurationError>().having(
            (e) => e.message,
            'config error',
            contains('No AWSIamAmplifyAuthProvider available'),
          ),
        ),
      );
    });

    test('identifyUser fails when the Pinpoint Provider is not initialized',
        () async {
      expect(
        () async => pinpointProvider.identifyUser(
          userId: 'userId',
          userProfile: MockUserProfile(),
        ),
        throwsA(
          isA<ConfigurationError>().having(
            (e) => e.message,
            'Not configured',
            contains('Provider is not initialized'),
          ),
        ),
      );
    });

    test('identifyUser should throw exception if the underlying call throws',
        () async {
      when(
        () => mockAmplifyAuthProviderRepository.getAuthProvider(
          APIAuthorizationType.iam.authProviderToken,
        ),
      ).thenReturn(awsIamAmplifyAuthProvider);
      when(
        () => mockAnalyticsClient.init(
          pinpointAppId: any(named: 'pinpointAppId'),
          region: any(named: 'region'),
          authProvider: any(named: 'authProvider'),
        ),
      ).thenAnswer((realInvocation) async {});

      final mockEndpointClient = MockEndpointClient();

      when(
        () => mockAnalyticsClient.endpointClient,
      ).thenReturn(mockEndpointClient);

      await pinpointProvider.init(
        config: notificationsPinpointConfig,
        authProviderRepo: mockAmplifyAuthProviderRepository,
        analyticsClient: mockAnalyticsClient,
      );
      when(() => mockEndpointClient.setUser(any(), any()))
          .thenThrow(Exception());
      expect(
        pinpointProvider.identifyUser(
          userId: 'userId',
          userProfile: MockUserProfile(),
        ),
        throwsA(
          isA<PushNotificationException>().having(
            (e) => e.message,
            'Unable to identify user',
            contains('Unable to identify user.'),
          ),
        ),
      );
    });

    test(
        'constructEventInfo should return journey data when there is journey details in the payload',
        () async {
      final res = pinpointProvider.constructEventInfo(
        notification: PushNotificationMessage.fromJson(androidJourneyMessage),
      );
      final properties = res.properties;
      final source = res.source;
      expect(properties.attributes.containsKey('journey_id'), isTrue);
      expect(source, equals(PinpointEventSource.journey.name));
    });

    test(
        'constructEventInfo should return campaign data when there is campaign details in the payload',
        () async {
      final res = pinpointProvider.constructEventInfo(
        notification: PushNotificationMessage.fromJson(androidCampaignMessage),
      );
      final properties = res.properties;
      final source = res.source;
      expect(properties.attributes.containsKey('campaign_id'), isTrue);
      expect(source, equals(PinpointEventSource.campaign.name));
    });
  });

  group('Happy path test', () {
    setUpAll(() {
      registerFallbackValue(
        const AmplifyAuthProviderToken<AmplifyAuthProvider>('mock-token'),
      );
      registerFallbackValue(
        const AWSCredentialsProvider(
          AWSCredentials(
            'accessKeyId',
            'secretAccessKey',
          ),
        ),
      );
    });
    TestWidgetsFlutterBinding.ensureInitialized();

    test('init should run successfully', () async {
      when(
        () => mockAmplifyAuthProviderRepository.getAuthProvider(
          APIAuthorizationType.iam.authProviderToken,
        ),
      ).thenReturn(awsIamAmplifyAuthProvider);
      when(
        () => mockAnalyticsClient.init(
          pinpointAppId: any(named: 'pinpointAppId'),
          region: any(named: 'region'),
          authProvider: any(named: 'authProvider'),
        ),
      ).thenAnswer((realInvocation) async {});
      expect(
        pinpointProvider.init(
          config: notificationsPinpointConfig,
          authProviderRepo: mockAmplifyAuthProviderRepository,
          analyticsClient: mockAnalyticsClient,
        ),
        completes,
      );
    });

    test('identifyUser should run successfully', () async {
      when(
        () => mockAmplifyAuthProviderRepository.getAuthProvider(
          APIAuthorizationType.iam.authProviderToken,
        ),
      ).thenReturn(awsIamAmplifyAuthProvider);
      when(
        () => mockAnalyticsClient.init(
          pinpointAppId: any(named: 'pinpointAppId'),
          region: any(named: 'region'),
          authProvider: any(named: 'authProvider'),
        ),
      ).thenAnswer((realInvocation) async {});

      final mockEndpointClient = MockEndpointClient();
      when(() => mockEndpointClient.setUser(any(), any()))
          .thenAnswer((_) async => {});
      when(mockEndpointClient.updateEndpoint).thenAnswer((_) async => {});

      when(
        () => mockAnalyticsClient.endpointClient,
      ).thenReturn(mockEndpointClient);

      await pinpointProvider.init(
        config: notificationsPinpointConfig,
        authProviderRepo: mockAmplifyAuthProviderRepository,
        analyticsClient: mockAnalyticsClient,
      );

      expect(
        pinpointProvider.identifyUser(
          userId: 'userId',
          userProfile: MockUserProfile(),
        ),
        completes,
      );
      verify(() => mockEndpointClient.setUser(any(), any()));
    });

    test('registerDevice should run successfully', () async {
      when(
        () => mockAmplifyAuthProviderRepository.getAuthProvider(
          APIAuthorizationType.iam.authProviderToken,
        ),
      ).thenReturn(awsIamAmplifyAuthProvider);
      when(
        () => mockAnalyticsClient.init(
          pinpointAppId: any(named: 'pinpointAppId'),
          region: any(named: 'region'),
          authProvider: any(named: 'authProvider'),
        ),
      ).thenAnswer((realInvocation) async {});

      final mockEndpointClient = MockEndpointClient();
      when(() => mockEndpointClient.setUser(any(), any()))
          .thenAnswer((_) async => {});
      when(mockEndpointClient.updateEndpoint).thenAnswer((_) async => {});

      when(
        () => mockAnalyticsClient.endpointClient,
      ).thenReturn(mockEndpointClient);

      await expectLater(
        pinpointProvider.init(
          config: notificationsPinpointConfig,
          authProviderRepo: mockAmplifyAuthProviderRepository,
          analyticsClient: mockAnalyticsClient,
        ),
        completes,
      );

      expect(
        pinpointProvider.registerDevice(
          '',
        ),
        completes,
      );
      verify(mockEndpointClient.updateEndpoint);
    });

    test('registerDevice should run successfully when device is offline',
        () async {
      when(
        () => mockAmplifyAuthProviderRepository.getAuthProvider(
          APIAuthorizationType.iam.authProviderToken,
        ),
      ).thenReturn(awsIamAmplifyAuthProvider);
      when(
        () => mockAnalyticsClient.init(
          pinpointAppId: any(named: 'pinpointAppId'),
          region: any(named: 'region'),
          authProvider: any(named: 'authProvider'),
        ),
      ).thenAnswer((realInvocation) async {});

      final mockEndpointClient = MockEndpointClient();

      when(mockEndpointClient.updateEndpoint)
          .thenThrow(const NetworkException('message'));

      when(
        () => mockAnalyticsClient.endpointClient,
      ).thenReturn(mockEndpointClient);

      await expectLater(
        pinpointProvider.init(
          config: notificationsPinpointConfig,
          authProviderRepo: mockAmplifyAuthProviderRepository,
          analyticsClient: mockAnalyticsClient,
        ),
        completes,
      );

      expect(
        pinpointProvider.registerDevice(
          '',
        ),
        completes,
      );
      verify(mockEndpointClient.updateEndpoint);
    });

    test('registerDevice should run successfully when token is expired',
        () async {
      when(
        () => mockAmplifyAuthProviderRepository.getAuthProvider(
          APIAuthorizationType.iam.authProviderToken,
        ),
      ).thenReturn(awsIamAmplifyAuthProvider);
      when(
        () => mockAnalyticsClient.init(
          pinpointAppId: any(named: 'pinpointAppId'),
          region: any(named: 'region'),
          authProvider: any(named: 'authProvider'),
        ),
      ).thenAnswer((realInvocation) async {});

      final mockEndpointClient = MockEndpointClient();

      when(mockEndpointClient.updateEndpoint)
          .thenThrow(const UnknownException('message'));

      when(
        () => mockAnalyticsClient.endpointClient,
      ).thenReturn(mockEndpointClient);

      await expectLater(
        pinpointProvider.init(
          config: notificationsPinpointConfig,
          authProviderRepo: mockAmplifyAuthProviderRepository,
          analyticsClient: mockAnalyticsClient,
        ),
        completes,
      );

      expect(
        pinpointProvider.registerDevice(
          '',
        ),
        completes,
      );
      verify(mockEndpointClient.updateEndpoint);
    });

    test('recordEvent should run successfully', () async {
      when(
        () => mockAmplifyAuthProviderRepository.getAuthProvider(
          APIAuthorizationType.iam.authProviderToken,
        ),
      ).thenReturn(awsIamAmplifyAuthProvider);
      when(
        () => mockAnalyticsClient.init(
          pinpointAppId: any(named: 'pinpointAppId'),
          region: any(named: 'region'),
          authProvider: any(named: 'authProvider'),
        ),
      ).thenAnswer((realInvocation) async {});

      final mockEventClient = MockEventClient();
      when(
        () => mockEventClient.recordEvent(
          eventType: any(named: 'eventType'),
          session: any(named: 'session'),
          properties: any(named: 'properties'),
        ),
      ).thenAnswer((_) async => {});

      when(
        () => mockAnalyticsClient.eventClient,
      ).thenReturn(mockEventClient);

      await expectLater(
        pinpointProvider.init(
          config: notificationsPinpointConfig,
          authProviderRepo: mockAmplifyAuthProviderRepository,
          analyticsClient: mockAnalyticsClient,
        ),
        completes,
      );

      await expectLater(
        pinpointProvider.recordNotificationEvent(
          eventType: PinpointEventType.foregroundMessageReceived,
          notification:
              PushNotificationMessage.fromJson(androidCampaignMessage),
        ),
        completes,
      );
      verify(
        () => mockEventClient.recordEvent(
          eventType:
              '${PinpointEventSource.campaign.name}.${PinpointEventType.foregroundMessageReceived.name}',
          properties: any(named: 'properties'),
        ),
      );
    });
  });
}
