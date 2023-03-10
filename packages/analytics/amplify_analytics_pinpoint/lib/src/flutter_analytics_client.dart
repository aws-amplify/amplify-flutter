// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint/src/device_context_info_provider/flutter_device_context_info_provider.dart';
import 'package:amplify_analytics_pinpoint/src/flutter_endpoint_info_store_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';

/// {@template amplify_analytics_pinpoint.flutter_analytics_client}
/// Injects Flutter dependencies for creating [AnalyticsClient].
///
/// Exposes event and endpoint client classes for other packages to use.
///
/// ie: PushNotifications.
/// {@endtemplate}
class FlutterAnalyticsClient extends AnalyticsClient {
  /// {@macro amplify_analytics_pinpoint.flutter_analytics_client}
  FlutterAnalyticsClient({
    FlutterEndpointInfoStoreManager? endpointInfoStoreManager,
  }) : super(
          deviceContextInfoProvider: const FlutterDeviceContextInfoProvider(),
          endpointInfoStoreManager:
              endpointInfoStoreManager ?? FlutterEndpointInfoStoreManager(),
        );
}
