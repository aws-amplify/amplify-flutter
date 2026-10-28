// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

/// {@template amplify_event_enrichment.global_fields_manager}
/// Stores global attributes and metrics stamped on every event.
///
/// Values remain in memory until this manager is discarded.
/// {@endtemplate}
class GlobalFieldsManager {
  /// {@macro amplify_event_enrichment.global_fields_manager}
  GlobalFieldsManager();

  final Map<String, String> _attributes = {};
  final Map<String, double> _metrics = {};

  /// Current global attributes (unmodifiable view).
  UnmodifiableMapView<String, String> get attributes =>
      UnmodifiableMapView(_attributes);

  /// Current global metrics (unmodifiable view).
  UnmodifiableMapView<String, double> get metrics =>
      UnmodifiableMapView(_metrics);

  /// Sets a global attribute, replacing any value for [key].
  void addAttribute(String key, String value) => _attributes[key] = value;

  /// Removes [key], with no effect when it is absent.
  void removeAttribute(String key) => _attributes.remove(key);

  /// Sets a global metric, replacing any value for [key]. Throws an
  /// [ArgumentError] if [value] is NaN or infinite.
  void addMetric(String key, double value) {
    if (!value.isFinite) {
      throw ArgumentError.value(value, key, 'Metric must be finite');
    }
    _metrics[key] = value;
  }

  /// Removes [key], with no effect when it is absent.
  void removeMetric(String key) => _metrics.remove(key);
}
