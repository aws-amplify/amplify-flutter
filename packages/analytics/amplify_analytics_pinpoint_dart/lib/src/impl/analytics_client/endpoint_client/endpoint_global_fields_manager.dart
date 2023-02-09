// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';
import 'dart:convert';

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_store_keys.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:meta/meta.dart';

/// {@template amplify_analytics_pinpoint_dart.endpoint_global_fields_manager}
/// Manages the storage, retrieval, and update of Attributes and Metrics of a PinpointEndpoint
///
/// - Attributes are String/Bool
/// - Metrics are Double/Int
///
/// For more details see Pinpoint [Endpoint](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html) online spec.
/// {@endtemplate}
class EndpointGlobalFieldsManager {
  /// {@macro amplify_analytics_pinpoint_dart.endpoint_global_fields_manager}
  @visibleForTesting
  EndpointGlobalFieldsManager(
    this._endpointInfoStore,
  );

  /// {@macro amplify_analytics_pinpoint_dart.endpoint_global_fields_manager}
  static Future<EndpointGlobalFieldsManager> create(
    SecureStorageInterface endpointInfoStore,
  ) async {
    final fieldsManager = EndpointGlobalFieldsManager(endpointInfoStore);
    await fieldsManager.init();
    return fieldsManager;
  }

  /// {@macro amplify_analytics_pinpoint_dart.endpoint_global_fields_manager}
  @visibleForTesting
  Future<void> init() async {
    /// Retrieve stored GlobalAttributes
    final cachedAttributes = await _endpointInfoStore.read(
      key: EndpointStoreKey.EndpointGlobalAttributesKey.name,
    );
    _globalAttributes = cachedAttributes == null
        ? <String, String>{}
        : (jsonDecode(cachedAttributes) as Map<String, Object?>)
            .cast<String, String>();

    /// Retrieve stored GlobalMetrics
    final cachedMetrics = await _endpointInfoStore.read(
      key: EndpointStoreKey.EndpointGlobalMetricsKey.name,
    );
    _globalMetrics = cachedMetrics == null
        ? <String, double>{}
        : (jsonDecode(cachedMetrics) as Map<String, Object?>)
            .cast<String, double>();
  }

  final SecureStorageInterface _endpointInfoStore;
  late final Map<String, String> _globalAttributes;
  late final Map<String, double> _globalMetrics;

  // Internal variables
  static final AmplifyLogger _logger =
      AmplifyLogger.category(Category.analytics)
          .createChild('EndpointGlobalFieldsManager');

  /// Get GlobalAttributes managed by this instance
  UnmodifiableMapView<String, String> get globalAttributes =>
      UnmodifiableMapView(_globalAttributes);

  /// Get GlobalMetrics managed by this instance
  UnmodifiableMapView<String, double> get globalMetrics =>
      UnmodifiableMapView(_globalMetrics);

  /// {@template amplify_analytics_pinpoint_dart.endpoint_global_fields_manager_limits_by_pinpoint}
  /// Limits defined by Pinpoint.
  /// For more details see Pinpoint [Endpoint](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html) online spec.
  /// {@endtemplate}
  static const int _maxKeyLength = 50;

  /// {@macro amplify_analytics_pinpoint_dart.endpoint_global_fields_manager_limits_by_pinpoint}
  static const int _maxAttributeValueLength = 100;

  /// {@macro amplify_analytics_pinpoint_dart.endpoint_global_fields_manager_limits_by_pinpoint}
  static const int _maxAttributes = 20;

  String _processKey(String key) {
    if (key.length > _maxKeyLength) {
      _logger.warn(
        'The key: "$key" ',
        'has been trimmed to a length of $_maxKeyLength characters.',
      );
      return key.substring(0, _maxKeyLength);
    }
    return key;
  }

  String _processAttributeValue(String value) {
    if (value.length > _maxAttributeValueLength) {
      _logger.warn(
        'The attribute value: "$value" ',
        'has been trimmed to a length of $_maxAttributeValueLength characters.',
      );
      return value.substring(0, _maxAttributeValueLength);
    }
    return value;
  }

  /// Add multiple attributes
  Future<void> addAttributes(Map<String, String> attributes) async {
    attributes.forEach((key, value) {
      if (_globalAttributes.length + _globalMetrics.length < _maxAttributes) {
        _globalAttributes[_processKey(key)] = _processAttributeValue(value);
      } else {
        _warnMaxAttributeMetric(key);
        return;
      }
    });
    await _saveAttributes();
  }

  /// Add an attribute by [key] with value of [value]
  Future<void> addAttribute(String key, String value) async {
    if (_globalAttributes.length + _globalMetrics.length < _maxAttributes) {
      _globalAttributes[_processKey(key)] = _processAttributeValue(value);
      await _saveAttributes();
    } else {
      _warnMaxAttributeMetric(key);
    }
  }

  /// Remove an attribute by [key]
  Future<void> removeAttribute(String key) async {
    _globalAttributes.remove(key);
    await _saveAttributes();
  }

  Future<void> _saveAttributes() async {
    await _endpointInfoStore.write(
      key: EndpointStoreKey.EndpointGlobalAttributesKey.name,
      value: jsonEncode(_globalAttributes),
    );
  }

  /// Add multiple metrics
  Future<void> addMetrics(Map<String, double> metrics) async {
    metrics.forEach((key, value) {
      if (_globalAttributes.length + _globalMetrics.length < _maxAttributes) {
        _globalMetrics[_processKey(key)] = value;
      } else {
        _warnMaxAttributeMetric(key);
        return;
      }
    });
    await _saveMetrics();
  }

  /// Add a metric by [key] with value of [value]
  Future<void> addMetric(String key, double value) async {
    if (_globalAttributes.length + _globalMetrics.length < _maxAttributes) {
      _globalMetrics[_processKey(key)] = value;
      await _saveMetrics();
    } else {
      _warnMaxAttributeMetric(key);
    }
  }

  /// Remove a metric by [key]
  Future<void> removeMetric(String key) async {
    _globalMetrics.remove(key);
    await _saveMetrics();
  }

  Future<void> _saveMetrics() async {
    await _endpointInfoStore.write(
      key: EndpointStoreKey.EndpointGlobalMetricsKey.name,
      value: jsonEncode(_globalMetrics),
    );
  }

  void _warnMaxAttributeMetric(String key) {
    _logger.warn(
      'Max number of $_maxAttributes reached for Endpoint attributes + metrics, \n',
      'Ignoring attribute with key: "$key". \n',
    );
  }
}
