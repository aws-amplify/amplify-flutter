// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

class AnalyticsProperties {
  AnalyticsProperties();

  final Map<String, Object> _properties = {};
  final Map<String, String> _propertiesTypes = {};

  void addStringProperty(String key, String value) {
    _properties[key] = value;
    _propertiesTypes[key] = 'STRING';
  }

  void addDoubleProperty(String key, double value) {
    _properties[key] = value;
    _propertiesTypes[key] = 'DOUBLE';
  }

  // ignore: avoid_positional_boolean_parameters
  void addBoolProperty(String key, bool value) {
    _properties[key] = value;
    _propertiesTypes[key] = 'BOOL';
  }

  void addIntProperty(String key, int value) {
    _properties[key] = value;
    _propertiesTypes[key] = 'INT';
  }

  Map<String, Object> getAllProperties() => UnmodifiableMapView(_properties);

  Map<String, String> getAllPropertiesTypes() =>
      UnmodifiableMapView(_propertiesTypes);

  Map<String, String> get attributes {
    final result = <String, String>{};
    _propertiesTypes.forEach((key, value) {
      if (value == 'STRING') {
        result[key] = _properties[key] as String;
      } else if (value == 'BOOL') {
        result[key] = _properties[key].toString();
      }
    });
    return result;
  }

  Map<String, double> get metrics {
    final result = <String, double>{};
    _propertiesTypes.forEach((key, value) {
      if (value == 'INT') {
        result[key] = (_properties[key] as int).toDouble();
      } else if (value == 'DOUBLE') {
        result[key] = _properties[key] as double;
      }
    });
    return result;
  }
}
