// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_analytics_pinpoint/src/legacy_native_data_provider/data_provider.android.dart';
import 'package:amplify_analytics_pinpoint/src/legacy_native_data_provider/data_provider.ios.dart';
// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/legacy_native_data_provider.dart';
import 'package:aws_common/aws_common.dart';
import 'package:flutter/foundation.dart';

/// {@template amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
/// Provides legacy data stored by Amplify Analytics iOS and Android.
/// {@endtemplate}
class FlutterLegacyNativeDataProvider implements LegacyNativeDataProvider {
  /// {@macro amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
  factory FlutterLegacyNativeDataProvider() {
    // `defaultTargetPlatform` instead of `dart:io`'s `Platform` keeps this
    // compatible with the `wasm` runtime.
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS when !zIsWeb:
        return FlutterLegacyNativeDataProvider._(DataProviderIos());
      case TargetPlatform.android when !zIsWeb:
        return FlutterLegacyNativeDataProvider._(DataProviderAndroid());
      default:
        return const FlutterLegacyNativeDataProvider._();
    }
  }

  const FlutterLegacyNativeDataProvider._([this._nativeDataProvider]);

  final LegacyNativeDataProvider? _nativeDataProvider;

  @override
  Future<String?> getEndpointId(String pinpointAppId) async {
    return _nativeDataProvider?.getEndpointId(pinpointAppId);
  }
}
