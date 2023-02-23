// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_example/amplifyconfiguration.dart';

import 'package:amplify_flutter/amplify_flutter.dart';

/// Static key/value storage for use in integration tests.
///
/// Must be static to mimic the behavior of iOS/Android which persist keys
/// between relaunches (e.g. between test groups).
final SecureStorageInterface mockPersistedSecuredStorage = () {
  final json = jsonDecode(amplifyconfig) as Map;
  final amplifyConfig = AmplifyConfig.fromJson(json.cast());
  final pinpointAppId =
      amplifyConfig.analytics!.awsPlugin!.pinpointAnalytics.appId;

  final storage = _MockSecureStorage()
    ..write(
      key: pinpointAppId + EndpointStoreKey.endpointId.name,
      value: mockEndpointId,
    );

  return storage;
}();

final String mockEndpointId = uuid();

class _MockSecureStorage extends SecureStorageInterface {
  final _storage = <String, String>{};

  @override
  Future<void> delete({required String key}) async => _storage.remove(key);

  @override
  Future<String?> read({required String key}) async => _storage[key];

  @override
  Future<void> write({required String key, required String value}) async =>
      _storage[key] = value;
}
