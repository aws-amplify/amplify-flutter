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

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/key_value_store.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_analytics_pinpoint_dart/src/version.dart';
import 'package:amplify_core/amplify_core.dart';

import 'package:built_collection/built_collection.dart';

import 'event_global_fields_manager.dart';

/// Manage creation of new Events
/// By storing and applying globalProperties and default values that all new Events should have
/// For more details see Pinpoint Event online spec: https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-events.html
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

  /// Create a Pinpoint [Event] from a [AnalyticsEvent] received from the public API
  /// Also, auto fill fields of [Event]
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

    /// Read attributes and metrics from [analyticsEvent]
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
