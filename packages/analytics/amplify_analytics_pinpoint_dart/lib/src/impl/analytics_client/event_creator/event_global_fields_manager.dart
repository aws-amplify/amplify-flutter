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
