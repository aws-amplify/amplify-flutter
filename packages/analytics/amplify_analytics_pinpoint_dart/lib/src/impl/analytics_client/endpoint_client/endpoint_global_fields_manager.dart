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
import 'dart:convert';

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/key_value_store.dart';

/// Manages the storage, retrieval, and update of [Attributes] and [Metrics] of a PinpointEndpoint
/// Attributes are String/Bool
/// Metrics are Double/Int
/// For more details see Pinpoint Endpoint online spec: https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html
class EndpointGlobalFieldsManager {
  final int _maxKeyLength = 50;
  final int _maxAttributeValues = 50;
  final int _maxAttributes = 20;
  final int _maxAttributeValueLength = 100;

  late final Map<String, List<String>> _globalAttributes;
  late final Map<String, double> _globalMetrics;

  UnmodifiableMapView<String, List<String>> get globalAttributes =>
      UnmodifiableMapView(_globalAttributes);
  UnmodifiableMapView<String, double> get globalMetrics =>
      UnmodifiableMapView(_globalMetrics);

  // External dependencies
  late final KeyValueStore _keyValueStore;

  EndpointGlobalFieldsManager._getInstance(
      this._keyValueStore, this._globalAttributes, this._globalMetrics);

  static Future<EndpointGlobalFieldsManager> getInstance(
      KeyValueStore sharedPrefs) async {
    /// Retrieve stored GlobalAttributes
    Map<String, dynamic> decodedGlobalAttributesJson = jsonDecode(
        await sharedPrefs.getJson(KeyValueStore.endpointGlobalAttrsKey) ??
            '{}');
    final globalAttributes = decodedGlobalAttributesJson
        .map((key, value) => MapEntry(key, List<String>.from(value)));

    /// Retrieve stored GlobalMetrics
    final globalMetrics = Map<String, double>.from(jsonDecode(
        await sharedPrefs.getJson(KeyValueStore.endpointGlobalMetricsKey) ??
            '{}'));

    return EndpointGlobalFieldsManager._getInstance(
        sharedPrefs, globalAttributes, globalMetrics);
  }

  String _processKey(String key) {
    if (key.length > _maxKeyLength) {
      print(
          'The attribute key has been trimmed to a length of $_maxKeyLength characters.');
      return key.substring(0, _maxKeyLength);
    }
    return key;
  }

  List<String> _processAttributeValues(List<String> values) {
    List<String> trimmedValues = <String>[];

    // Restrict list length to "_max_attribute_values"
    if (values.length > _maxAttributeValues) {
      trimmedValues = values.sublist(0, _maxAttributeValues);
      print(
          'The attribute values has been reduced to $_maxAttributeValues values.');
    } else {
      trimmedValues = List.from(values);
    }

    // Restrict list element lengths to '_max_attribute_value_length"
    for (int i = 0; i < trimmedValues.length; i++) {
      String value = trimmedValues[i];
      if (value.length > _maxAttributeValueLength) {
        value = value.substring(0, _maxAttributeValueLength);
        trimmedValues[i] = value;
        print(
            'The attribute value has been trimmed to a length of $_maxAttributeValueLength characters');
      }
    }

    return trimmedValues;
  }

  void addAttribute(String name, List<String> values) {
    if (_globalAttributes.length + _globalMetrics.length < _maxAttributes) {
      _globalAttributes[_processKey(name)] = _processAttributeValues(values);
      _saveAttributes();
    } else {
      print(
          'Max number of attributes/metrics reached: $_maxAttributes.  Ignoring additional attributes.');
    }
  }

  void removeAttribute(String name) {
    _globalAttributes.remove(name);
    _saveAttributes();
  }

  void _saveAttributes() {
    _keyValueStore.saveJson(
        KeyValueStore.endpointGlobalAttrsKey, jsonEncode(_globalAttributes));
  }

  void addMetric(String name, double value) {
    if (_globalAttributes.length + _globalMetrics.length < _maxAttributes) {
      _globalMetrics[_processKey(name)] = value;
      _saveMetrics();
    } else {
      print(
          'Max number of attributes/metrics reached: $_maxAttributes).  Ignoring additional metrics');
    }
  }

  void removeMetric(String name) {
    _globalMetrics.remove(name);
    _saveMetrics();
  }

  void _saveMetrics() {
    _keyValueStore.saveJson(
        KeyValueStore.endpointGlobalMetricsKey, jsonEncode(_globalMetrics));
  }
}
