// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

/// {@template amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
abstract class LegacyNativeDataProvider {
  /// Get stored Pinpoint Endpoint Id.
  Future<String?> getEndpointId(String pinpointAppId);
}
