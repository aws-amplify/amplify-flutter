import 'dart:collection';
import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';

import '../shared_prefs.dart';

class EventGlobalFieldsManager {
  late final Map<String, String> _globalAttributes;
  late final Map<String, double> _globalMetrics;

  UnmodifiableMapView<String, String> get globalAttributes =>
      UnmodifiableMapView(_globalAttributes);
  UnmodifiableMapView<String, double> get globalMetrics =>
      UnmodifiableMapView(_globalMetrics);

  late final SharedPrefs _sharedPrefs;

  EventGlobalFieldsManager._getInstance(
      this._sharedPrefs, this._globalAttributes, this._globalMetrics);

  static Future<EventGlobalFieldsManager> getInstance(
          SharedPrefs sharedPrefs) async =>
      EventGlobalFieldsManager._getInstance(
          sharedPrefs,
          jsonDecode(
              await sharedPrefs.getJson(SharedPrefs.eventsGlobalAttrsKey) ??
                  '{}'),
          jsonDecode(
              await sharedPrefs.getJson(SharedPrefs.endpointGlobalMetricsKey) ??
                  '{}'));

// Note: no max size for global properties
  Future<void> addGlobalProperties(AnalyticsProperties globalProperties) async {
    extractAnalyticsProperties(
        _globalAttributes, _globalMetrics, globalProperties);

    await _saveProperties();
  }

  Future<void> removeGlobalProperties(List<String> propertyNames) async {
    for (var key in propertyNames) {
      _globalAttributes.remove(key);
      _globalMetrics.remove(key);
    }

    await _saveProperties();
  }

  Future<void> _saveProperties() async {
    await _sharedPrefs.saveJson(
        SharedPrefs.eventsGlobalAttrsKey, jsonEncode(_globalAttributes));
    await _sharedPrefs.saveJson(
        SharedPrefs.eventsGlobalMetricsKey, jsonEncode(_globalMetrics));
  }

  static void extractAnalyticsProperties(Map<String, String> attrs,
      Map<String, double> metrics, AnalyticsProperties analyticsProperties) {
    Map<String, Object> propertiesMap = analyticsProperties.getAllProperties();
    Map<String, String> propertiesTypesMap =
        analyticsProperties.getAllPropertiesTypes();

    propertiesTypesMap.forEach((k, v) {
      String type = propertiesTypesMap[k]!;

      switch (type) {
        case 'STRING':
          attrs[k] = propertiesMap[k] as String;
          break;
        case 'BOOL':
          attrs[k] = propertiesMap[k] as String;
          break;
        case 'INT':
          metrics[k] = propertiesMap[k] as double;
          break;
        case 'DOUBLE':
          metrics[k] = propertiesMap[k] as double;
          break;
        default:
      }
    });
  }
}
