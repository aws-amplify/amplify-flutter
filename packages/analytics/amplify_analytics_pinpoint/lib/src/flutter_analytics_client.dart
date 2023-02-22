import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/flutter_device_context_info_provider.dart';
import 'package:amplify_analytics_pinpoint/src/flutter_endpoint_info_store_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';

/// {@template amplify_analytics_pinpoint_dart.flutter_endpoint_store_manager}
/// Manages retrieval, storage, and management of Pinpoint Endpoint id and fields
/// Auto injects Flutter DI
/// {@endtemplate}
class FlutterAnalyticsClient extends AnalyticsClient {
  /// {@macro amplify_analytics_pinpoint_dart.flutter_endpoint_store_manager}
  FlutterAnalyticsClient({
    FlutterEndpointInfoStoreManager? endpointInfoStoreManager,
  }) : super(
          deviceContextInfoProvider: const FlutterDeviceContextInfoProvider(),
          endpointInfoStoreManager:
              endpointInfoStoreManager ?? FlutterEndpointInfoStoreManager(),
        );
}

/*
TEMP: example use case example for push notification

final analyticsClient = FlutterAnalyticsClient(
      endpointInfoStoreManager: FlutterEndpointInfoStoreManager(
        storageScope: EndpointStorageScope.analyticsPinpoint,
      ),
    );
await analyticsClient.init(
  pinpointAppId: 'pinpointAppId',
  region: 'region',
  authProvider: AWSCredentialsProvider(),
);

final endpointClient = analyticsClient.endpointClient;
final eventClient = analyticsClient.eventClient;

// Sample usage
endpointClient.updateEndpoint();
eventClient.recordEvent(eventType: 'eventType');

 */
