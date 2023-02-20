import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_info_store_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/event_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/dart_queued_item_store.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/cached_events_path_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/device_context_info_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/pinpoint_client.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

///
class AnalyticsClient {
  ///

  AnalyticsClient({
    CachedEventsPathProvider? pathProvider,
    DeviceContextInfoProvider? deviceContextInfoProvider,
    EndpointInfoStoreManager? endpointInfoStoreManager,
  })  : _pathProvider = pathProvider,
        _deviceContextInfoProvider = deviceContextInfoProvider,
        _endpointInfoStoreManager = endpointInfoStoreManager ??
            EndpointInfoStoreManager(
              store: AmplifySecureStorageWorker(
                config: AmplifySecureStorageConfig(
                  scope: EndpointStorageScope.analyticsPinpoint.name,
                ),
              ),
            );

  final CachedEventsPathProvider? _pathProvider;
  final DeviceContextInfoProvider? _deviceContextInfoProvider;
  final EndpointInfoStoreManager _endpointInfoStoreManager;

  ///
  Future<void> init({
    required String pinpointAppId,
    required String region,
    required AWSCredentialsProvider authProvider,
  }) async {
    final eventStoragePath = await _pathProvider?.getApplicationSupportPath();
    final eventStore = DartQueuedItemStore(eventStoragePath);

    final pinpointClient = PinpointClient(
      region: region,
      credentialsProvider: authProvider,
    );

    final deviceContextInfo =
        await _deviceContextInfoProvider?.getDeviceInfoDetails();

    endpointClient = await EndpointClient.create(
      pinpointAppId: pinpointAppId,
      pinpointClient: pinpointClient,
      endpointInfoStoreManager: _endpointInfoStoreManager,
      deviceContextInfo: deviceContextInfo,
    );

    eventClient = EventClient(
      pinpointAppId: pinpointAppId,
      pinpointClient: pinpointClient,
      endpointClient: endpointClient,
      eventStore: eventStore,
      deviceContextInfo: deviceContextInfo,
    );
  }

  /*
  static Future<AnalyticsClient> create({
    required String pinpointAppId,
    required String region,
    required AWSCredentialsProvider authProvider,
    CachedEventsPathProvider? pathProvider,
    EndpointInfoStoreManager? endpointInfoStoreManager,
    DeviceContextInfoProvider? deviceContextInfoProvider,
  }) async {
    final analyticsClient = AnalyticsClient();
    await analyticsClient.init(
      pinpointAppId: pinpointAppId,
      region: region,
      authProvider: authProvider,
    );
    return analyticsClient;
  }
   */

  ///
  late final EndpointClient endpointClient;

  ///
  late final EventClient eventClient;
}
