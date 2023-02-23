// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_store_keys.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

/// Retrieve attributes map from [SecureStorageInterface]
Future<Map<String, String>> getStoredAttributes(
  SecureStorageInterface storage, {
  String appId = '',
}) async {
  final cachedAttributes = await storage.read(
    key: appId + EndpointStoreKey.globalAttributesKey.name,
  );
  return cachedAttributes == null
      ? <String, String>{}
      : (jsonDecode(cachedAttributes) as Map<String, Object?>)
          .cast<String, String>();
}

/// Retrieve metrics map from [SecureStorageInterface]
Future<Map<String, double>> getStoredMetrics(
  SecureStorageInterface storage, {
  String appId = '',
}) async {
  final cachedMetrics = await storage.read(
    key: appId + EndpointStoreKey.globalMetricsKey.name,
  );
  return cachedMetrics == null
      ? <String, double>{}
      : (jsonDecode(cachedMetrics) as Map<String, Object?>)
          .cast<String, double>();
}
