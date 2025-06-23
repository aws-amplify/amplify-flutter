// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_core.push.pinpoint_event_source}
/// The source of a push notification.
///
/// Pinpoint offers two ways of sending push notifications to users campaigns and journeys.
///
/// See also:
/// [Campaigns](https://docs.aws.amazon.com/pinpoint/latest/userguide/campaigns.html)
/// [Journeys](https://docs.aws.amazon.com/pinpoint/latest/userguide/journeys.html)
/// {@endtemplate}
enum PinpointEventTypeSource {
  /// [campaign] represents a push notification originating from a campaign
  /// [Campaign Events](https://docs.aws.amazon.com/pinpoint/latest/developerguide/event-streams-data-campaign.html)
  campaign('_campaign'),

  /// [journey] represents a push notification originating from a journey
  /// [Journey Events](https://docs.aws.amazon.com/pinpoint/latest/developerguide/event-streams-data-journey.html)
  journey('_journey');

  const PinpointEventTypeSource(this.name);

  /// [name] contains the source prefix for event_type attributes
  final String name;
}
