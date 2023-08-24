import 'package:amplify_analytics_pinpoint_dart/src/analytics_plugin_impl.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/analytics_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/event_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/queued_item_store.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/cached_events_path_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/session.dart';
import 'package:amplify_core/amplify_config.dart';
import 'package:amplify_core/amplify_core.dart' hide AnalyticsConfig;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'common/mock_secure_storage.dart';
import 'common/mocktail_mocks.dart';

class MockAnalyticsClient implements AnalyticsClient {
  @override
  EndpointClient endpointClient = MockEndpointClient();

  @override
  EventClient eventClient = MockEventClient();

  @override
  Future<void> init({
    required String pinpointAppId,
    required String region,
    required AWSCredentialsProvider authProvider,
    QueuedItemStore? eventStore,
  }) async {}
}

class MockEndpointClient extends Mock implements EndpointClient {
  @override
  String get fixedEndpointId => uuid();

  @override
  Future<void> updateEndpoint() async {}
}

class MockEventClient implements EventClient {
  @override
  Future<void> close() async {}

  @override
  Future<void> flushEvents() async {}

  @override
  Future<void> recordEvent({
    required String eventType,
    Session? session,
    CustomProperties? properties,
  }) async {}

  @override
  void registerGlobalProperties(CustomProperties globalProperties) {}

  @override
  void unregisterGlobalProperties(List<String> propertyNames) {}
}

void main() {
  group('Analytics Config eventFlushInterval ', () {
    late CachedEventsPathProvider mockPathProvider;
    late AWSIamAmplifyAuthProvider mockAuthProvider;

    const appId = 'appId';
    const region = 'region';

    setUpAll(() async {
      mockPathProvider = MockPathProvider();
      when(mockPathProvider.getApplicationSupportPath).thenAnswer(
        (_) async => '/tmp',
      );

      mockAuthProvider = MockIamAuthProvider();
      when(mockAuthProvider.retrieve).thenAnswer(
        (_) async => const AWSCredentials('accessKeyId', 'secretAccessKey'),
      );

      Amplify.dependencies.addInstance<AnalyticsClient>(MockAnalyticsClient());
    });

    test('throws ConfigurationError when negative', () async {
      const autoFlushInterval = Duration(seconds: -1);

      final plugin = AmplifyAnalyticsPinpointDart(
        pathProvider: mockPathProvider,
        secureStorageFactory: (_) => MockSecureStorage(),
      );

      await expectLater(
        plugin.configure(
          config: AWSAmplifyConfig(
            analytics: AnalyticsConfig.pinpoint(
              appId: appId,
              region: region,
              autoFlushEventsInterval: autoFlushInterval,
            ),
          ),
          authProviderRepo: AmplifyAuthProviderRepository()
            ..registerAuthProvider(
              APIAuthorizationType.iam.authProviderToken,
              mockAuthProvider,
            ),
        ),
        throwsA(isA<ConfigurationError>()),
      );
    });

    test('disables autoFlush when 0', () async {
      const autoFlushInterval = Duration.zero;

      final plugin = AmplifyAnalyticsPinpointDart(
        pathProvider: mockPathProvider,
        secureStorageFactory: (_) => MockSecureStorage(),
      );

      await plugin.configure(
        config: AWSAmplifyConfig(
          analytics: AnalyticsConfig.pinpoint(
            appId: appId,
            region: region,
            autoFlushEventsInterval: autoFlushInterval,
          ),
        ),
        authProviderRepo: AmplifyAuthProviderRepository()
          ..registerAuthProvider(
            APIAuthorizationType.iam.authProviderToken,
            mockAuthProvider,
          ),
      );

      expect(plugin.autoEventSubmitter, isNull);
    });

    test('sets proper autoFlush value', () async {
      const autoFlushInterval = Duration(seconds: 120);

      final plugin = AmplifyAnalyticsPinpointDart(
        pathProvider: mockPathProvider,
        secureStorageFactory: (_) => MockSecureStorage(),
      );

      await plugin.configure(
        config: AWSAmplifyConfig(
          analytics: AnalyticsConfig.pinpoint(
            appId: appId,
            region: region,
            autoFlushEventsInterval: autoFlushInterval,
          ),
        ),
        authProviderRepo: AmplifyAuthProviderRepository()
          ..registerAuthProvider(
            APIAuthorizationType.iam.authProviderToken,
            mockAuthProvider,
          ),
      );

      expect(
        plugin.autoEventSubmitter?.duration,
        autoFlushInterval,
      );
    });
  });
}
