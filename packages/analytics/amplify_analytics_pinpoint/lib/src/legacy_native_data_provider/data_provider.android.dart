// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_analytics_pinpoint/src/legacy_native_data_provider/pigeon_legacy_data_provider.android.g.dart';
// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/legacy_native_data_provider.dart';

/// {@macro amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
class DataProviderAndroid implements LegacyNativeDataProvider {
  /// {@macro amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
  DataProviderAndroid() : _pigeonDataProvider = PinpointLegacyDataProvider();

  final PinpointLegacyDataProvider _pigeonDataProvider;

  @override
  Future<String?> getEndpointId(String pinpointAppId) {
    return _pigeonDataProvider.getEndpointId(pinpointAppId);
  }
}
