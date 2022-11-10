import 'dart:async';

/// {@template amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
abstract class LegacyNativeDataProvider {
  /// Setup
  Future<void> initialize(String pinpointAppId);

  /// Get stored Pinpoint Endpoint Id
  Future<String?> getEndpointId();
}
