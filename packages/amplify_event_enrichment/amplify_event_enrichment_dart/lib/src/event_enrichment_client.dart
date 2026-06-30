// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/src/enriched_event.dart';
import 'package:amplify_event_enrichment_dart/src/event_enrichment_client_options.dart';
import 'package:amplify_event_enrichment_dart/src/event_sink.dart';
import 'package:amplify_event_enrichment_dart/src/exception/event_enrichment_exception.dart';
import 'package:amplify_event_enrichment_dart/src/global_fields_manager.dart';
import 'package:amplify_event_enrichment_dart/src/metadata/app_metadata.dart';
import 'package:amplify_event_enrichment_dart/src/metadata/device_metadata.dart';
import 'package:amplify_event_enrichment_dart/src/metadata/sdk_metadata.dart';
import 'package:amplify_event_enrichment_dart/src/session/session_manager.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:uuid/uuid.dart';

/// {@template amplify_event_enrichment.event_enrichment_client}
/// Client for recording enriched analytics events.
///
/// Collects device, app, session, and SDK metadata and produces
/// [EnrichedEvent] instances with Pinpoint-compatible JSON output.
///
/// ## Usage
///
/// ```dart
/// final client = EventEnrichmentClient(
///   appMetadata: AppMetadata(appId: 'my-app'),
///   deviceMetadata: DeviceMetadata(platform: 'iOS'),
///   sdkMetadata: SdkMetadata(name: 'amplify-flutter', version: '2.0.0'),
///   clientId: 'device-uuid',
/// );
///
/// final event = client.record('button_clicked');
/// print(event.toJson());
///
/// client.close();
/// ```
/// {@endtemplate}
class EventEnrichmentClient {
  /// {@macro amplify_event_enrichment.event_enrichment_client}
  EventEnrichmentClient({
    required AppMetadata appMetadata,
    required DeviceMetadata deviceMetadata,
    required SdkMetadata sdkMetadata,
    required String clientId,
    EventEnrichmentClientOptions? options,
    EventSink? sink,
  }) : _appMetadata = appMetadata,
       _deviceMetadata = deviceMetadata,
       _sdkMetadata = sdkMetadata,
       _clientId = clientId,
       _sink = sink,
       _logger = AmplifyLogging.logger('EventEnrichmentClient') {
    final opts = options ?? const EventEnrichmentClientOptions();
    _sessionManager = SessionManager(
      appId: appMetadata.appId,
      sessionTimeout: opts.sessionTimeout,
      generateId: () => const Uuid().v4(),
    );
    if (opts.autoSessionTracking) {
      _sessionManager.startSession();
    }
  }

  final AppMetadata _appMetadata;
  final DeviceMetadata _deviceMetadata;
  final SdkMetadata _sdkMetadata;
  final String _clientId;
  final EventSink? _sink;
  final Logger _logger;
  final GlobalFieldsManager _globalFields = GlobalFieldsManager();
  late final SessionManager _sessionManager;

  /// The session manager for this client.
  ///
  /// Exposed for use by platform-specific lifecycle observers.
  SessionManager get sessionManager => _sessionManager;

  String? _userId;
  bool _closed = false;

  /// Whether the client has been closed.
  bool get isClosed => _closed;

  /// Records an event and returns the enriched result.
  ///
  /// Returns [Result.error] with [EventEnrichmentClosedException] if the
  /// client has been closed.
  Result<EnrichedEvent> record(
    String eventType, {
    Map<String, String>? attributes,
    Map<String, double>? metrics,
  }) {
    if (_closed) return const Result.error(EventEnrichmentClosedException());

    if (_sessionManager.session == null) {
      _sessionManager.startSession();
    }

    final mergedAttributes = <String, String>{
      ..._globalFields.attributes,
      ...?attributes,
    };
    final mergedMetrics = <String, double>{
      ..._globalFields.metrics,
      ...?metrics,
    };

    final event = EnrichedEvent(
      eventId: const Uuid().v4(),
      eventType: eventType,
      eventTimestamp: DateTime.now().millisecondsSinceEpoch,
      session: _sessionManager.session!,
      attributes: mergedAttributes,
      metrics: mergedMetrics,
      device: _deviceMetadata,
      app: _appMetadata,
      sdk: _sdkMetadata,
      clientId: _clientId,
      userId: _userId,
    );

    _sink?.send(event);
    _logger.verbose('Recorded event: $eventType');
    return Result.ok(event);
  }

  /// Starts a new session manually.
  void startSession() => _sessionManager.startSession();

  /// Stops the current session.
  void stopSession() => _sessionManager.stopSession();

  /// Called when the app moves to background.
  void handleAppPaused() => _sessionManager.handleAppPaused();

  /// Called when the app returns to foreground.
  void handleAppResumed() => _sessionManager.handleAppResumed();

  /// Sets the user identifier stamped on subsequent events.
  void setUserId(String? userId) => _userId = userId;

  /// Adds a global attribute stamped on every subsequent event.
  void addGlobalAttribute(String key, String value) =>
      _globalFields.addAttribute(key, value);

  /// Removes a global attribute.
  void removeGlobalAttribute(String key) =>
      _globalFields.removeAttribute(key);

  /// Adds a global metric stamped on every subsequent event.
  void addGlobalMetric(String key, double value) =>
      _globalFields.addMetric(key, value);

  /// Removes a global metric.
  void removeGlobalMetric(String key) => _globalFields.removeMetric(key);

  /// Releases resources and stops session tracking.
  ///
  /// The client cannot be reused after closing.
  void close() {
    _closed = true;
    _sessionManager.stopSession();
    _logger.info('Client closed');
  }
}
