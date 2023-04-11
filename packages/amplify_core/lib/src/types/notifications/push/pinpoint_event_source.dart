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
enum PinpointEventSource {
  campaign('campaign'),
  journey('journey');

  const PinpointEventSource(this.name);

  final String name;
}
