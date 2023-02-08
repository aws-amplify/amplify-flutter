// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_creator/event_global_fields_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_analytics_pinpoint_dart/src/version.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_analytics_pinpoint_dart.event_creator}
/// Manage creation of new Events.
///
/// Stores and applies globalProperties and default values that all new Events should have.
/// The created Event matches the fields of the [Pinpoint Event](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-events.html) online spec.
/// {@endtemplate}
class EventCreator {
  /// {@macro amplify_analytics_pinpoint_dart.event_creator}
  EventCreator({
    DeviceContextInfo? deviceContextInfo,
  }) : _deviceContextInfo = deviceContextInfo;

  static const int _maxEventTypeLength = 50;

  final EventGlobalFieldsManager _globalFieldsManager =
      EventGlobalFieldsManager();
  final DeviceContextInfo? _deviceContextInfo;

  /// Create a Pinpoint [Event] from a [AnalyticsEvent] received from the public API
  /// Also, auto fill fields of [Event]
  Event createPinpointEvent(
    String eventType,
    Session? session, [
    AnalyticsProperties? analyticsProperties,
  ]) {
    if (eventType.length > _maxEventTypeLength) {
      throw const AnalyticsException(
        'The event type is too long, the max event type length is {$_maxEventTypeLength} characters.',
      );
    }

    final eventBuilder = EventBuilder()
      ..eventType = eventType
      ..sdkName = 'amplify-flutter'
      ..clientSdkVersion = packageVersion
      ..timestamp = DateTime.now().toUtc().toIso8601String()
      ..appTitle = _deviceContextInfo?.appName
      ..appPackageName = _deviceContextInfo?.appPackageName
      ..appVersionCode = _deviceContextInfo?.appVersion;
    if (session != null) eventBuilder.session.replace(session);

    eventBuilder
      ..attributes.addAll(_globalFieldsManager.globalAttributes)
      ..metrics.addAll(_globalFieldsManager.globalMetrics);

    /// Read attributes and metrics from [analyticsEvent]
    if (analyticsProperties != null) {
      eventBuilder.attributes.addAll(analyticsProperties.attributes);
      eventBuilder.metrics.addAll(analyticsProperties.metrics);
    }

    return eventBuilder.build();
  }

  /// Register new global properties that will be added to all newly created events
  void registerGlobalProperties(
    AnalyticsProperties globalProperties,
  ) =>
      _globalFieldsManager.addGlobalProperties(globalProperties);

  /// Unregister global properties that will no longer be added to all newly created events
  void unregisterGlobalProperties(List<String> propertyNames) =>
      _globalFieldsManager.removeGlobalProperties(propertyNames);
}
