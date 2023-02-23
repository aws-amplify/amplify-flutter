import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/flutter_device_context_info_provider.dart';
import 'package:amplify_analytics_pinpoint/src/flutter_endpoint_info_store_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';

/// {@macro amplify_analytics_pinpoint.analytics_client}
/// Auto injects Flutter dependencies.
class FlutterAnalyticsClient extends AnalyticsClient {
  /// {@macro amplify_analytics_pinpoint.analytics_client}
  FlutterAnalyticsClient({
    FlutterEndpointInfoStoreManager? endpointInfoStoreManager,
  }) : super(
          deviceContextInfoProvider: const FlutterDeviceContextInfoProvider(),
          endpointInfoStoreManager:
              endpointInfoStoreManager ?? FlutterEndpointInfoStoreManager(),
        );
}
