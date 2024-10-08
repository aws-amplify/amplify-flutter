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
@Deprecated('this enum will be private in the next major version')
enum PinpointEventSource {
  campaign('campaign'),
  journey('journey');

  @Deprecated('this enum will be private in the next major version')
  const PinpointEventSource(this.name);

  final String name;
}
