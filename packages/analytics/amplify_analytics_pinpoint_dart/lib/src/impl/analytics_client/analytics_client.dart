// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_info_store_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/event_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/queued_item_store.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/device_context_info_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/legacy_native_data_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/sdk_bridge.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

/// {@template amplify_analytics_pinpoint_dart.analytics_client}
/// A builder class that constructs and exposes the [eventClient] and [endpointClient] for interacting with Pinpoint.
/// {@endtemplate}
class AnalyticsClient {
  /// {@macro amplify_analytics_pinpoint_dart.analytics_client}
  factory AnalyticsClient({
    required SecureStorageInterface endpointStorage,
    DeviceContextInfoProvider? deviceContextInfoProvider,
    LegacyNativeDataProvider? legacyNativeDataProvider,
  }) {
    final endpointStoreManager = EndpointInfoStoreManager(
      legacyNativeDataProvider: legacyNativeDataProvider,
      store: endpointStorage,
    );

    return AnalyticsClient._(deviceContextInfoProvider, endpointStoreManager);
  }

  /// {@macro amplify_analytics_pinpoint_dart.analytics_client}
  AnalyticsClient._(
    DeviceContextInfoProvider? deviceContextInfoProvider,
    EndpointInfoStoreManager endpointInfoStoreManager,
  )   : _deviceContextInfoProvider = deviceContextInfoProvider,
        _endpointInfoStoreManager = endpointInfoStoreManager;

  final DeviceContextInfoProvider? _deviceContextInfoProvider;
  final EndpointInfoStoreManager _endpointInfoStoreManager;

  /// Async initialize the [eventClient] and [endpointClient].
  /// Requires missing values typically provided in plugin configure.
  Future<void> init({
    required String pinpointAppId,
    required String region,
    required AWSCredentialsProvider authProvider,
    QueuedItemStore? eventStore,
  }) async {
    final pinpointClient = WrappedPinpointClient(
      region: region,
      credentialsProvider: authProvider,
    );

    final deviceContextInfo =
        await _deviceContextInfoProvider?.getDeviceInfoDetails();

    await _endpointInfoStoreManager.init(pinpointAppId: pinpointAppId);

    endpointClient = EndpointClient(
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

  /// Client for interacting with Pinpoint Endpoint
  late final EndpointClient endpointClient;

  /// Client for sending Pinpoint Events
  late final EventClient eventClient;
}
