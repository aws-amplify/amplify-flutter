// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io' show Platform;

import 'package:amplify_analytics_pinpoint/src/legacy_native_data_provider/data_provider.android.dart';
import 'package:amplify_analytics_pinpoint/src/legacy_native_data_provider/data_provider.ios.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:aws_common/aws_common.dart';

/// {@template amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
/// Provides legacy data stored by Amplify Analytics iOS and Android.
/// {@endtemplate}
class FlutterLegacyNativeDataProvider implements LegacyNativeDataProvider {
  /// {@macro amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
  factory FlutterLegacyNativeDataProvider() {
    LegacyNativeDataProvider? provider;

    if (zIsWeb) {
      return FlutterLegacyNativeDataProvider._(provider);
    } else if (Platform.isIOS) {
      provider = DataProviderIos();
    } else if (Platform.isAndroid) {
      provider = DataProviderAndroid();
    }

    return FlutterLegacyNativeDataProvider._(provider);
  }

  FlutterLegacyNativeDataProvider._(this._nativeDataProvider);

  final LegacyNativeDataProvider? _nativeDataProvider;

  @override
  Future<String?> getEndpointId(String pinpointAppId) async {
    if (_nativeDataProvider == null) return null;
    return _nativeDataProvider!.getEndpointId(pinpointAppId);
  }
}
