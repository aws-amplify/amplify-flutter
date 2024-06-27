import 'package:amplify_analytics_pinpoint_dart/src/analytics_plugin_impl.dart';
import 'package:amplify_analytics_pinpoint_dart/src/analytics_plugin_options.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/analytics_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/event_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/queued_item_store.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/cached_events_path_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/session.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/analytics/amazon_pinpoint_outputs.dart';
import 'package:amplify_core/src/config/amplify_outputs/analytics/analytics_outputs.dart';
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
    // ignore: invalid_use_of_internal_member
    const config = AmplifyOutputs(
      version: '1',
      analytics: AnalyticsOutputs(
        amazonPinpoint: AmazonPinpointOutputs(awsRegion: region, appId: appId),
      ),
    );

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

    test('throws ConfigurationError when no analytics config is provided',
        () async {
      final plugin = AmplifyAnalyticsPinpointDart(
        secureStorageFactory: (_) => MockSecureStorage(),
      );

      await expectLater(
        plugin.configure(
          // ignore: invalid_use_of_internal_member
          config: const AmplifyOutputs(version: '1'),
          authProviderRepo: AmplifyAuthProviderRepository()
            ..registerAuthProvider(
              APIAuthorizationType.iam.authProviderToken,
              mockAuthProvider,
            ),
        ),
        throwsA(isA<ConfigurationError>()),
      );
    });
    test('throws ConfigurationError when negative', () async {
      final plugin = AmplifyAnalyticsPinpointDart(
        pathProvider: mockPathProvider,
        secureStorageFactory: (_) => MockSecureStorage(),
        options: const AnalyticsPinpointPluginOptions(
          autoFlushEventsInterval: Duration(seconds: -1),
        ),
      );

      await expectLater(
        plugin.configure(
          // ignore: invalid_use_of_internal_member
          config: config,
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
      final plugin = AmplifyAnalyticsPinpointDart(
        pathProvider: mockPathProvider,
        secureStorageFactory: (_) => MockSecureStorage(),
        options: const AnalyticsPinpointPluginOptions(
          autoFlushEventsInterval: Duration.zero,
        ),
      );

      await plugin.configure(
        config: config,
        authProviderRepo: AmplifyAuthProviderRepository()
          ..registerAuthProvider(
            APIAuthorizationType.iam.authProviderToken,
            mockAuthProvider,
          ),
      );

      expect(plugin.autoEventSubmitter, isNull);
    });

    test('sets proper autoFlush value', () async {
      const autoFlushInterval = 120;

      final plugin = AmplifyAnalyticsPinpointDart(
        pathProvider: mockPathProvider,
        secureStorageFactory: (_) => MockSecureStorage(),
        options: const AnalyticsPinpointPluginOptions(
          autoFlushEventsInterval: Duration(seconds: autoFlushInterval),
        ),
      );

      await plugin.configure(
        config: config,
        authProviderRepo: AmplifyAuthProviderRepository()
          ..registerAuthProvider(
            APIAuthorizationType.iam.authProviderToken,
            mockAuthProvider,
          ),
      );

      expect(
        plugin.autoEventSubmitter?.duration,
        const Duration(seconds: autoFlushInterval),
      );
    });
  });
}
