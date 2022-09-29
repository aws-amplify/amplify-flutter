import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_analytics_pinpoint_dart/src/version.dart';
import 'package:amplify_core/amplify_core.dart';

import 'package:built_collection/built_collection.dart';

import '../key_value_store.dart';
import 'event_global_fields_manager.dart';

class EventCreator {
  static const int _maxEventTypeLength = 50;

  final EventGlobalFieldsManager _globalFieldsManager;
  final DeviceContextInfo? _deviceContextInfo;

  EventCreator._getInstance(this._globalFieldsManager, this._deviceContextInfo);

  static Future<EventCreator> getInstance(KeyValueStore keyValueStore,
          DeviceContextInfo? deviceContextInfoProvider) async =>
      EventCreator._getInstance(
          await EventGlobalFieldsManager.getInstance(keyValueStore),
          deviceContextInfoProvider);

  Event createPinpointEvent(String eventType, SessionBuilder? sessionBuilder,
      [AnalyticsEvent? analyticsEvent]) {
    if (eventType.length > _maxEventTypeLength) {
      throw const AnalyticsException(
          'The event type is too long, the max event type length is {$_maxEventTypeLength} characters.');
    }

    EventBuilder eventBuilder = EventBuilder();

    // Fill in defaults for all events
    eventBuilder.eventType = eventType;
    eventBuilder.sdkName = 'amplify-flutter';
    eventBuilder.clientSdkVersion = packageVersion;
    eventBuilder.session = sessionBuilder;

    eventBuilder.timestamp = DateTime.now().toUtc().toIso8601String();

    eventBuilder.appTitle = _deviceContextInfo?.appName;
    eventBuilder.appPackageName = _deviceContextInfo?.appPackageName;
    eventBuilder.appVersionCode = _deviceContextInfo?.appVersion;

    final eventAttrs =
        Map<String, String>.from(_globalFieldsManager.globalAttributes);
    final eventMetrics =
        Map<String, double>.from(_globalFieldsManager.globalMetrics);

    if (analyticsEvent != null) {
      EventGlobalFieldsManager.extractAnalyticsProperties(
          eventAttrs, eventMetrics, analyticsEvent.properties);
    }

    eventBuilder.attributes = MapBuilder(eventAttrs);
    eventBuilder.metrics = MapBuilder(eventMetrics);

    return eventBuilder.build();
  }

  Future<void> registerGlobalProperties(
    AnalyticsProperties globalProperties,
  ) =>
      _globalFieldsManager.addGlobalProperties(globalProperties);

  Future<void> unregisterGlobalProperties(List<String> propertyNames) =>
      _globalFieldsManager.removeGlobalProperties(propertyNames);
}
