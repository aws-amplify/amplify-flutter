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

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';

/// {@macro amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
class DataProviderIos implements LegacyNativeDataProvider {
  /// {@macro amplify_analytics_pinpoint.flutter_legacy_native_data_provider}
  DataProviderIos()
      : _keyValueStore = AmplifySecureStorage(
          config: AmplifySecureStorageConfig.byNamespace(namespace: _context),
        );

  static const _context = 'com.amazonaws.AWSPinpointContext';
  static const _key = 'com.amazonaws.AWSPinpointContextKeychainUniqueIdKey';

  final AmplifySecureStorage _keyValueStore;

  @override
  Future<void> initialize(String pinpointAppId) async {}

  @override
  Future<String?> getEndpointId() async {
    final endpointId = await _keyValueStore.read(key: _key);
    return endpointId;
  }
}
