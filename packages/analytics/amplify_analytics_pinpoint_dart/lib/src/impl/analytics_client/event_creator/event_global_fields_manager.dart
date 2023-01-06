// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_analytics_pinpoint_dart.event_global_fields_manager}
/// Manages the storage, retrieval, and update of Attributes and Metrics for Events
///
/// - Attributes are String/Bool
/// - Metrics are Double/Int
///
/// These values are sent with every new Event.
///
/// The stored attributes and metrics conform to the [Pinpoint Event](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-events.html) online spec.
///
/// Unlike EndpointGlobalFieldsManager, we DO NOT persist these values between sessions
///
/// To be consistent with Amplify Native behavior
/// {@endtemplate}
class EventGlobalFieldsManager {
  /// {@macro amplify_analytics_pinpoint_dart.event_global_fields_manager}
  EventGlobalFieldsManager();

  final Map<String, String> _globalAttributes = {};
  final Map<String, double> _globalMetrics = {};

  /// Get GlobalAttributes managed by this instance
  UnmodifiableMapView<String, String> get globalAttributes =>
      UnmodifiableMapView(_globalAttributes);

  /// Get GlobalMetrics managed by this instance
  UnmodifiableMapView<String, double> get globalMetrics =>
      UnmodifiableMapView(_globalMetrics);

  // Note: no max size for global properties
  /// Add [AnalyticsProperties].  The object will be parsed and stored as Attributes and Metrics
  void addGlobalProperties(AnalyticsProperties globalProperties) {
    _globalAttributes.addAll(globalProperties.attributes);
    _globalMetrics.addAll(globalProperties.metrics);
  }

  /// Remove properties by their name
  void removeGlobalProperties(List<String> propertyNames) {
    if (propertyNames.isEmpty) {
      _globalAttributes.clear();
      _globalMetrics.clear();
    } else {
      for (final key in propertyNames) {
        _globalAttributes.remove(key);
        _globalMetrics.remove(key);
      }
    }
  }
}
