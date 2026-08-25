// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/src/metadata/app_metadata.dart';
import 'package:amplify_event_enrichment_dart/src/metadata/device_metadata.dart';
import 'package:amplify_event_enrichment_dart/src/metadata/sdk_metadata.dart';
import 'package:amplify_event_enrichment_dart/src/session/session.dart';
import 'package:amplify_event_enrichment_dart/src/util/serializable.dart';
import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

part 'enriched_event.g.dart';

/// {@template amplify_event_enrichment.enriched_event}
/// An analytics event enriched with device, app, session, and SDK metadata.
///
/// Use [toJson] to produce the structured analytics envelope as a
/// JSON-compatible map.
/// {@endtemplate}
@immutable
final class EnrichedEvent with AWSEquatable<EnrichedEvent>, AWSDebuggable {
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
  ///
  /// Generated per event and available for local correlation, but not part of
  /// the envelope [toJson] emits — the legacy Analytics envelope has no field
  /// for it.
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

  @override
  List<Object?> get props => [
    eventId,
    eventType,
    eventTimestamp,
    session,
    attributes,
    metrics,
    device,
    app,
    sdk,
    clientId,
    userId,
  ];

  @override
  String get runtimeTypeName => 'EnrichedEvent';

  /// Version of the analytics event envelope schema, emitted as
  /// `event_version`.
  ///
  /// "3.1" identifies the layout of the envelope (the event, application,
  /// client, device, and session sections and their field names) so
  /// downstream consumers can tell which schema they are parsing. Bump this
  /// only when the envelope structure changes in a way consumers must handle;
  /// it is independent of the package version.
  static const _eventVersion = '3.1';

  /// Serializes to the analytics event envelope as a JSON-compatible map.
  ///
  /// Encode with `jsonEncode` where a JSON string is needed.
  ///
  /// The envelope is not a field-for-field projection of this class — it
  /// regroups platform name/version, renames `manufacturer` to `make`, wraps
  /// the locale, and drops empty sections — so it is modelled as its own set
  /// of generated classes in this file that this method builds and delegates
  /// to.
  Map<String, dynamic> toJson() => _envelope().toJson();

  _Envelope _envelope() {
    final platform = device.platform == null && device.platformVersion == null
        ? null
        : _Platform(name: device.platform, version: device.platformVersion);
    final locale = device.locale;
    return _Envelope(
      eventType: eventType,
      eventTimestamp: eventTimestamp,
      // On-device enrichment has no server ingestion step, so this reflects
      // client-side arrival and mirrors event_timestamp. Retained for
      // envelope compatibility.
      arrivalTimestamp: eventTimestamp,
      eventVersion: _eventVersion,
      application: _Application(
        appId: app.appId,
        packageName: app.packageName,
        versionName: app.versionName,
        versionCode: app.versionCode,
        title: app.title,
        sdk: _Sdk(name: sdk.name, version: sdk.version),
      ),
      client: _Client(clientId: clientId, userId: userId),
      device: _Device(
        platform: platform,
        make: device.manufacturer,
        model: device.model,
        locale: locale == null ? null : _Locale(code: locale),
      ),
      session: _Session(
        id: session.id,
        startTimestamp: session.startTimestamp,
        stopTimestamp: session.stopTimestamp,
        duration: session.duration,
      ),
      // Empty rather than absent globals still mean "nothing to report", and
      // the envelope omits the section in that case.
      attributes: attributes.isEmpty ? null : attributes,
      metrics: metrics.isEmpty ? null : metrics,
    );
  }
}

/// The top level of the analytics event envelope.
@zEventEnrichmentSerializable
final class _Envelope {
  const _Envelope({
    required this.eventType,
    required this.eventTimestamp,
    required this.arrivalTimestamp,
    required this.eventVersion,
    required this.application,
    required this.client,
    required this.device,
    required this.session,
    this.attributes,
    this.metrics,
  });

  final String eventType;
  final int eventTimestamp;
  final int arrivalTimestamp;
  final String eventVersion;
  final _Application application;
  final _Client client;
  final _Device device;
  final _Session session;
  final Map<String, String>? attributes;
  final Map<String, double>? metrics;

  Map<String, dynamic> toJson() => _$EnvelopeToJson(this);
}

/// The `application` section, with the SDK nested inside it.
@zEventEnrichmentSerializable
final class _Application {
  const _Application({
    required this.appId,
    required this.sdk,
    this.packageName,
    this.versionName,
    this.versionCode,
    this.title,
  });

  final String appId;
  final String? packageName;
  final String? versionName;
  final String? versionCode;
  final String? title;
  final _Sdk sdk;

  Map<String, dynamic> toJson() => _$ApplicationToJson(this);
}

/// The `application.sdk` section.
@zEventEnrichmentSerializable
final class _Sdk {
  const _Sdk({required this.name, required this.version});

  final String name;
  final String version;

  Map<String, dynamic> toJson() => _$SdkToJson(this);
}

/// The `client` section.
@zEventEnrichmentSerializable
final class _Client {
  const _Client({required this.clientId, this.userId});

  final String clientId;
  final String? userId;

  Map<String, dynamic> toJson() => _$ClientToJson(this);
}

/// The `device` section. Emitted even when empty.
@zEventEnrichmentSerializable
final class _Device {
  const _Device({this.platform, this.make, this.model, this.locale});

  final _Platform? platform;
  final String? make;
  final String? model;
  final _Locale? locale;

  Map<String, dynamic> toJson() => _$DeviceToJson(this);
}

/// The `device.platform` section, absent when neither field is known.
@zEventEnrichmentSerializable
final class _Platform {
  const _Platform({this.name, this.version});

  final String? name;
  final String? version;

  Map<String, dynamic> toJson() => _$PlatformToJson(this);
}

/// The `device.locale` section, which wraps the locale code in an object.
@zEventEnrichmentSerializable
final class _Locale {
  const _Locale({required this.code});

  final String code;

  Map<String, dynamic> toJson() => _$LocaleToJson(this);
}

/// The `session` section.
@zEventEnrichmentSerializable
final class _Session {
  const _Session({
    required this.id,
    required this.startTimestamp,
    this.stopTimestamp,
    this.duration,
  });

  final String id;
  final String startTimestamp;
  final String? stopTimestamp;
  final int? duration;

  Map<String, dynamic> toJson() => _$SessionToJson(this);
}
