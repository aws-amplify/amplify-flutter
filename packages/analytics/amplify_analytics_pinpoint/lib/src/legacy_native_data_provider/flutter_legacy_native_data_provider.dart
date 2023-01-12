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
    if (zIsWeb || !(Platform.isIOS || Platform.isAndroid)) {
      return const FlutterLegacyNativeDataProvider._();
    }

    final LegacyNativeDataProvider provider;
    if (Platform.isIOS) {
      provider = DataProviderIos();
    } else {
      provider = DataProviderAndroid();
    }

    return FlutterLegacyNativeDataProvider._(provider);
  }

  const FlutterLegacyNativeDataProvider._([this._nativeDataProvider]);

  final LegacyNativeDataProvider? _nativeDataProvider;

  @override
  Future<String?> getEndpointId(String pinpointAppId) async {
    return _nativeDataProvider?.getEndpointId(pinpointAppId);
  }
}
