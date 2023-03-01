import 'package:amplify_analytics_pinpoint/src/legacy_native_data_provider/flutter_legacy_native_data_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';

/// {@template amplify_analytics_pinpoint.flutter_endpoint_store_manager}
/// Injects Flutter dependencies for creating [EndpointInfoStoreManager].
///
/// Exposes common endpoint storage API for other packages to use.
///
/// ie: Auth.
/// {@endtemplate}
class FlutterEndpointInfoStoreManager extends EndpointInfoStoreManager {
  /// {@macro amplify_analytics_pinpoint.flutter_endpoint_store_manager}
  FlutterEndpointInfoStoreManager({
    EndpointStorageScope storageScope = EndpointStorageScope.analyticsPinpoint,
  }) : super(
          store: AmplifySecureStorage(
            config: AmplifySecureStorageConfig(
              scope: storageScope.name,
            ),
          ),
          legacyNativeDataProvider: FlutterLegacyNativeDataProvider(),
        );
}
