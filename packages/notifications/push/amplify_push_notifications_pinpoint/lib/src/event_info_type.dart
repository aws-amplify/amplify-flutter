// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_push_notifications_pinpoint.event_info}
/// Pinpoint record event info.
/// {@endtemplate}
class EventInfo {
  /// {@macro amplify_push_notifications_pinpoint.event_info}
  EventInfo(
    this.source,
    this.properties,
  );

  /// [source] represents the source of the notification prefixed by campaign or journey.
  final String source;

  /// [properties] includes additional details on the event type being recorded.
  final CustomProperties properties;
}
