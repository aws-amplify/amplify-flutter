// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

/// {@template amplify_event_enrichment.global_fields_manager}
/// Manages global attributes and metrics that are stamped on every event.
///
/// Values are in-memory only and not persisted between sessions.
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

  /// Adds a global attribute.
  void addAttribute(String key, String value) => _attributes[key] = value;

  /// Removes a global attribute by key.
  void removeAttribute(String key) => _attributes.remove(key);

  /// Adds a global metric.
  void addMetric(String key, double value) => _metrics[key] = value;

  /// Removes a global metric by key.
  void removeMetric(String key) => _metrics.remove(key);
}
