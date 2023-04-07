// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_core.push.pinpoint_event_source}
/// The source of a push notification.
///
/// Pinpoint offers two ways of sending push notifications to users campaigns and journeys.
/// {@endtemplate}
enum PinpointEventSource {
  campaign('campaign'),
  journey('journey');

  const PinpointEventSource(this.name);

  final String name;
}
