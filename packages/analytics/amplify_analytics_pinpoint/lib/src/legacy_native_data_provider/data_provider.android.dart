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

import 'package:amplify_analytics_pinpoint/src/legacy_native_data_provider/pigeon_legacy_data_provider.android.g.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';

/// {@macro amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
class DataProviderAndroid implements LegacyNativeDataProvider {
  /// {@macro amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
  DataProviderAndroid() : _pigeonDataProvider = PigeonLegacyDataProvider();

  final PigeonLegacyDataProvider _pigeonDataProvider;

  @override
  Future<void> initialize(String pinpointAppId) {
    return _pigeonDataProvider.initialize(pinpointAppId);
  }

  @override
  Future<String?> getEndpointId() {
    return _pigeonDataProvider.getEndpointId();
  }
}
