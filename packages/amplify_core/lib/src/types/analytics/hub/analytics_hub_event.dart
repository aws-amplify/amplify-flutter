// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_common.hub.analytics_hub_event_type}
/// Hub Event types for the Analytics category.
/// {@endtemplate}
enum AnalyticsHubEventType {
  /// {@template amplify_common.hub.analytics_hub_event_endpoint_configured}
  /// Emitted when the user's endpoint is configured during application start.
  /// {@endtemplate}
  endpointConfigured('ENDPOINT_CONFIGURED');

  /// The event name.
  final String eventName;

  /// {@macro amplify_common.hub.analytics_hub_event_type}
  const AnalyticsHubEventType(this.eventName);
}

/// The base class for hub events of the Analytics category.
///
/// One of [AnalyticsHubEventType].
class AnalyticsHubEvent extends HubEvent<AnalyticsHubEventPayload>
    with AWSEquatable<AnalyticsHubEvent>, AWSDebuggable {
  AnalyticsHubEvent._(
    this.type, {
    AnalyticsHubEventPayload? payload,
  }) : super(type.eventName, payload: payload);

  /// {@macro amplify_common.hub.analytics_hub_event_type}
  final AnalyticsHubEventType type;

  /// {@macro amplify_common.hub.analytics_hub_event_endpoint_configured}
  AnalyticsHubEvent.endpointConfigured(String endpointId)
      : this._(
          AnalyticsHubEventType.endpointConfigured,
          payload: EndpointConfiguredPayload(endpointId),
        );

  @override
  List<Object?> get props => [type, payload];

  @override
  String get runtimeTypeName => 'AnalyticsHubEvent';
}

abstract class AnalyticsHubEventPayload {
  const AnalyticsHubEventPayload();
}

/// {@macro amplify_common.hub.analytics_hub_event_endpoint_configured}
class EndpointConfiguredPayload extends AnalyticsHubEventPayload {
  const EndpointConfiguredPayload(this.endpointId);

  /// The unique ID of the user's endpoint.
  final String endpointId;
}
