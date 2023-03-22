import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
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
    FlutterAnalyticsClient,
    FlutterEndpointInfoStoreManager,
    AnalyticsUserProfile
  ],
)
void main() {
  final pinpointProvider = PinpointProvider();

  group('PinpointProvider', () {
    late MockAmplifyAuthProviderRepository mockAmplifyAuthProviderRepository;
    late NotificationsPinpointPluginConfig notificationsPinpointConfig;
    setUp(() {
      TestWidgetsFlutterBinding.ensureInitialized();
      mockAmplifyAuthProviderRepository = MockAmplifyAuthProviderRepository();
      notificationsPinpointConfig = const NotificationsPinpointPluginConfig(
        appId: 'APP_ID',
        region: 'REGION',
      );
    });

    test('init fails when retreiving an Auth provider was not successfull', () {
      when(mockAmplifyAuthProviderRepository.getAuthProvider(any))
          .thenReturn(null);
      expect(
        () async => pinpointProvider.init(
          config: notificationsPinpointConfig,
          authProviderRepo: mockAmplifyAuthProviderRepository,
        ),
        throwsA(const TypeMatcher<PushNotificationException>()),
      );
    });

    test('identifyUser fails when the Pinpoint Provider is not initialized',
        () async {
      expect(
        () async => pinpointProvider.identifyUser(
          userId: 'userId',
          userProfile: MockAnalyticsUserProfile(),
        ),
        throwsA(const TypeMatcher<PushNotificationException>()),
      );
    });

    test(
        'constructEventInfo should return journey data when there is journey details in the payload',
        () async {
      final res = pinpointProvider.constructEventInfo(
        notification: PushNotificationMessage.fromJson(androidJourneyMessage),
      );
      final properties = res.last as AnalyticsProperties;
      final source = res.first as String;
      expect(properties.attributes.containsKey('journey_id'), true);
      expect(source, PinpointEventSource.journey.name);
    });

    test(
        'constructEventInfo should return campaign data when there is campaign details in the payload',
        () async {
      final res = pinpointProvider.constructEventInfo(
        notification: PushNotificationMessage.fromJson(androidCampaignMessage),
      );
      final properties = res.last as AnalyticsProperties;
      final source = res.first as String;
      expect(properties.attributes.containsKey('campaign_id'), true);
      expect(source, PinpointEventSource.campaign.name);
    });
  });
}
