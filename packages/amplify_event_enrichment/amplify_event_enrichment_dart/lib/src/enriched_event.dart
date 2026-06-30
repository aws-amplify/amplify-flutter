// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_event_enrichment_dart/src/metadata/app_metadata.dart';
import 'package:amplify_event_enrichment_dart/src/metadata/device_metadata.dart';
import 'package:amplify_event_enrichment_dart/src/metadata/sdk_metadata.dart';
import 'package:amplify_event_enrichment_dart/src/session/session.dart';
import 'package:meta/meta.dart';

/// {@template amplify_event_enrichment.enriched_event}
/// An analytics event enriched with device, app, session, and SDK metadata.
///
/// Use [toJson] to serialize to a Pinpoint-compatible JSON envelope.
/// {@endtemplate}
@immutable
final class EnrichedEvent {
  /// {@macro amplify_event_enrichment.enriched_event}
  const EnrichedEvent({
    required this.eventId,
    required this.eventType,
    required this.eventTimestamp,
    required this.session,
    required this.attributes,
    required this.metrics,
    required this.device,
    required this.app,
    required this.sdk,
    required this.clientId,
    this.userId,
  });

  /// Unique event identifier (UUID).
  final String eventId;

  /// Type of the event.
  final String eventType;

  /// Milliseconds since epoch when the event was recorded.
  final int eventTimestamp;

  /// Session active at the time of recording.
  final Session session;

  /// Merged attributes (globals + per-event).
  final Map<String, String> attributes;

  /// Merged metrics (globals + per-event).
  final Map<String, double> metrics;

  /// Device metadata.
  final DeviceMetadata device;

  /// Application metadata.
  final AppMetadata app;

  /// SDK metadata.
  final SdkMetadata sdk;

  /// Persistent client/device identifier.
  final String clientId;

  /// Optional user identifier.
  final String? userId;

  static const _eventVersion = '3.1';

  /// Serializes to a Pinpoint-compatible JSON string.
  String toJson() {
    final deviceMap = <String, dynamic>{};
    final platformMap = <String, dynamic>{};
    if (device.platform != null) platformMap['name'] = device.platform;
    if (device.platformVersion != null) {
      platformMap['version'] = device.platformVersion;
    }
    if (platformMap.isNotEmpty) deviceMap['platform'] = platformMap;
    if (device.manufacturer != null) deviceMap['make'] = device.manufacturer;
    if (device.model != null) deviceMap['model'] = device.model;
    if (device.locale != null) deviceMap['locale'] = {'code': device.locale};

    final map = <String, dynamic>{
      'event_type': eventType,
      'event_timestamp': eventTimestamp,
      'arrival_timestamp': eventTimestamp,
      'event_version': _eventVersion,
      'application': {
        'app_id': app.appId,
        if (app.packageName != null) 'package_name': app.packageName,
        if (app.versionName != null) 'version_name': app.versionName,
        if (app.versionCode != null) 'version_code': app.versionCode,
        if (app.title != null) 'title': app.title,
        'sdk': {
          'name': sdk.name,
          'version': sdk.version,
        },
      },
      'client': {
        'client_id': clientId,
        if (userId != null) 'user_id': userId,
      },
      'device': deviceMap,
      'session': {
        'id': session.id,
        'start_timestamp': session.startTimestamp,
        if (session.stopTimestamp != null)
          'stop_timestamp': session.stopTimestamp,
        if (session.duration != null) 'duration': session.duration,
      },
      if (attributes.isNotEmpty) 'attributes': attributes,
      if (metrics.isNotEmpty) 'metrics': metrics,
    };
    return jsonEncode(map);
  }
}
