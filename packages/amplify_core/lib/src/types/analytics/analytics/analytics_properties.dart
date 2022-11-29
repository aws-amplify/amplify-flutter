/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

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
