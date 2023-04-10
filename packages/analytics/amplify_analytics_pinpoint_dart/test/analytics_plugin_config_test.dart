import 'package:amplify_analytics_pinpoint_dart/src/analytics_plugin_impl.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/cached_events_path_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'common/mock_secure_storage.dart';
import 'common/mocktail_mocks.dart';

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
    });

    test('throws ConfigurationError when negative', () async {
      const autoFlushInterval = -1;

      final plugin = AmplifyAnalyticsPinpointDart(
        pathProvider: mockPathProvider,
        secureStorageFactory: (_) => MockSecureStorage(),
      );

      await expectLater(
        plugin.configure(
          config: const AmplifyConfig(
            analytics: AnalyticsConfig(
              plugins: {
                PinpointPluginConfig.pluginKey: PinpointPluginConfig(
                  pinpointAnalytics: PinpointAnalytics(
                    appId: appId,
                    region: region,
                  ),
                  pinpointTargeting: PinpointTargeting(
                    region: region,
                  ),
                  autoFlushEventsInterval: autoFlushInterval,
                ),
              },
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
      const autoFlushInterval = 0;

      final plugin = AmplifyAnalyticsPinpointDart(
        pathProvider: mockPathProvider,
        secureStorageFactory: (_) => MockSecureStorage(),
      );

      await plugin.configure(
        config: const AmplifyConfig(
          analytics: AnalyticsConfig(
            plugins: {
              PinpointPluginConfig.pluginKey: PinpointPluginConfig(
                pinpointAnalytics: PinpointAnalytics(
                  appId: appId,
                  region: region,
                ),
                pinpointTargeting: PinpointTargeting(
                  region: region,
                ),
                autoFlushEventsInterval: autoFlushInterval,
              ),
            },
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
      const autoFlushInterval = 120;

      final plugin = AmplifyAnalyticsPinpointDart(
        pathProvider: mockPathProvider,
        secureStorageFactory: (_) => MockSecureStorage(),
      );

      await plugin.configure(
        config: const AmplifyConfig(
          analytics: AnalyticsConfig(
            plugins: {
              PinpointPluginConfig.pluginKey: PinpointPluginConfig(
                pinpointAnalytics: PinpointAnalytics(
                  appId: appId,
                  region: region,
                ),
                pinpointTargeting: PinpointTargeting(
                  region: region,
                ),
                autoFlushEventsInterval: autoFlushInterval,
              ),
            },
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
        const Duration(seconds: autoFlushInterval),
      );
    });
  });
}
