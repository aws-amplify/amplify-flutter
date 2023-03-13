// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_core.push.pinpoint_event_source}
/// Enum that indicates the source of push notifications.
///
/// Pinpoint offers two ways of sending push notificaitons to users campaigns and journeys.
/// {@endtemplate}
enum PinpointEventSource {
  campaign('campaign'),
  journey('journey');

  const PinpointEventSource(this.name);

  final String name;
}
