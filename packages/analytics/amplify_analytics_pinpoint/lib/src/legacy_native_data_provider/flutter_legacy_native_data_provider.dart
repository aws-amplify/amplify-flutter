// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';
import 'dart:io' show Platform;

import 'package:amplify_analytics_pinpoint/src/legacy_native_data_provider/data_provider.android.dart';
import 'package:amplify_analytics_pinpoint/src/legacy_native_data_provider/data_provider.ios.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';

/// {@template amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
/// Provides legacy data stored by Amplify Analytics iOS and Android.
/// {@endtemplate}
class FlutterLegacyNativeDataProvider implements LegacyNativeDataProvider {
  /// {@macro amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
  factory FlutterLegacyNativeDataProvider() {
    LegacyNativeDataProvider? provider;

    if (Platform.isIOS) {
      provider = DataProviderIos();
    } else if (Platform.isAndroid) {
      provider = DataProviderAndroid();
    }

    return FlutterLegacyNativeDataProvider._(provider);
  }

  FlutterLegacyNativeDataProvider._(this._nativeDataProvider);

  final LegacyNativeDataProvider? _nativeDataProvider;

  @override
  Future<void> initialize(String pinpointAppId) async {
    return _nativeDataProvider?.initialize(pinpointAppId);
  }

  @override
  Future<String?> getEndpointId() async {
    if (_nativeDataProvider == null) return null;
    return _nativeDataProvider!.getEndpointId();
  }
}
