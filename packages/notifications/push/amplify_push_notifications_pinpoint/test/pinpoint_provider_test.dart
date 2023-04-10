// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/analytics_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/event_client.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_push_notifications_pinpoint/src/pinpoint_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'pinpoint_provider_test.mocks.dart';
import 'test_data/fake_notification_messges.dart';

@GenerateMocks(
  [
    AmplifyAuthProviderRepository,
    AWSIamAmplifyAuthProvider,
    UserProfile,
    AnalyticsClient,
    EndpointClient,
    EventClient,
  ],
)
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final pinpointProvider = PinpointProvider();
  final mockAmplifyAuthProviderRepository = MockAmplifyAuthProviderRepository();
  const notificationsPinpointConfig = NotificationsPinpointPluginConfig(
    appId: 'APP_ID',
    region: 'REGION',
  );
  final awsIamAmplifyAuthProvider = MockAWSIamAmplifyAuthProvider();
  final mockAnalyticsClient = MockAnalyticsClient();
  group('PinpointProvider', () {
    test('init fails when retreiving an Auth provider was not successfull', () {
      when(mockAmplifyAuthProviderRepository.getAuthProvider(any))
          .thenReturn(null);
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

    test(
        'constructEventInfo should return journey data when there is journey details in the payload',
        () async {
      final res = pinpointProvider.constructEventInfo(
        notification: PushNotificationMessage.fromJson(androidJourneyMessage),
      );
      final properties = res.properties;
      final source = res.source;
      expect(properties.attributes.containsKey('journey_id'), true);
      expect(source, PinpointEventSource.journey.name);
    });

    test(
        'constructEventInfo should return campaign data when there is campaign details in the payload',
        () async {
      final res = pinpointProvider.constructEventInfo(
        notification: PushNotificationMessage.fromJson(androidCampaignMessage),
      );
      final properties = res.properties;
      final source = res.source;
      expect(properties.attributes.containsKey('campaign_id'), true);
      expect(source, PinpointEventSource.campaign.name);
    });
  });

  group('Happy path test', () {
    TestWidgetsFlutterBinding.ensureInitialized();

    test('init should run successfully', () async {
      when(mockAmplifyAuthProviderRepository.getAuthProvider(any))
          .thenReturn(awsIamAmplifyAuthProvider);
      when(
        mockAnalyticsClient.init(
          pinpointAppId: anyNamed('pinpointAppId'),
          region: anyNamed('region'),
          authProvider: anyNamed('authProvider'),
        ),
      ).thenAnswer((realInvocation) async {});
      await pinpointProvider.init(
        config: notificationsPinpointConfig,
        authProviderRepo: mockAmplifyAuthProviderRepository,
        mockAnalyticsClient: mockAnalyticsClient,
      );
    });

    test('identifyUser should run successfully', () async {
      when(mockAmplifyAuthProviderRepository.getAuthProvider(any))
          .thenReturn(awsIamAmplifyAuthProvider);
      when(
        mockAnalyticsClient.init(
          pinpointAppId: anyNamed('pinpointAppId'),
          region: anyNamed('region'),
          authProvider: anyNamed('authProvider'),
        ),
      ).thenAnswer((realInvocation) async {});

      final mockEndpointClient = MockEndpointClient();

      when(
        mockAnalyticsClient.endpointClient,
      ).thenReturn(mockEndpointClient);

      await pinpointProvider.init(
        config: notificationsPinpointConfig,
        authProviderRepo: mockAmplifyAuthProviderRepository,
        mockAnalyticsClient: mockAnalyticsClient,
      );

      await pinpointProvider.identifyUser(
        userId: 'userId',
        userProfile: MockUserProfile(),
      );
      verify(mockEndpointClient.setUser(any, any));
    });

    test('registerDevice should run successfully', () async {
      when(mockAmplifyAuthProviderRepository.getAuthProvider(any))
          .thenReturn(awsIamAmplifyAuthProvider);
      when(
        mockAnalyticsClient.init(
          pinpointAppId: anyNamed('pinpointAppId'),
          region: anyNamed('region'),
          authProvider: anyNamed('authProvider'),
        ),
      ).thenAnswer((realInvocation) async {});

      final mockEndpointClient = MockEndpointClient();

      when(
        mockAnalyticsClient.endpointClient,
      ).thenReturn(mockEndpointClient);

      await pinpointProvider.init(
        config: notificationsPinpointConfig,
        authProviderRepo: mockAmplifyAuthProviderRepository,
        mockAnalyticsClient: mockAnalyticsClient,
      );

      await pinpointProvider.registerDevice(
        '',
      );
      verify(mockEndpointClient.updateEndpoint());
    });

    test('recordEvent should run successfully', () async {
      when(mockAmplifyAuthProviderRepository.getAuthProvider(any))
          .thenReturn(awsIamAmplifyAuthProvider);
      when(
        mockAnalyticsClient.init(
          pinpointAppId: anyNamed('pinpointAppId'),
          region: anyNamed('region'),
          authProvider: anyNamed('authProvider'),
        ),
      ).thenAnswer((realInvocation) async {});

      final mockEventClient = MockEventClient();

      when(
        mockAnalyticsClient.eventClient,
      ).thenReturn(mockEventClient);

      await pinpointProvider.init(
        config: notificationsPinpointConfig,
        authProviderRepo: mockAmplifyAuthProviderRepository,
        mockAnalyticsClient: mockAnalyticsClient,
      );

      await pinpointProvider.recordNotificationEvent(
        eventType: PinpointEventType.foregroundMessageReceived,
        notification: PushNotificationMessage.fromJson(androidCampaignMessage),
      );
      verify(
        mockEventClient.recordEvent(
          eventType:
              '${PinpointEventSource.campaign.name}.${PinpointEventType.foregroundMessageReceived.name}',
          properties: anyNamed('properties'),
        ),
      );
    });
  });
}
