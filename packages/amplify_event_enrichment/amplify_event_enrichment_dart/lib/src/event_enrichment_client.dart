// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_event_enrichment_dart/src/enriched_event.dart';
import 'package:amplify_event_enrichment_dart/src/enriched_event_sender.dart';
import 'package:amplify_event_enrichment_dart/src/event_enrichment_client_options.dart';
import 'package:amplify_event_enrichment_dart/src/exception/event_enrichment_exception.dart';
import 'package:amplify_event_enrichment_dart/src/global_fields_manager.dart';
import 'package:amplify_event_enrichment_dart/src/metadata/app_metadata.dart';
import 'package:amplify_event_enrichment_dart/src/metadata/device_metadata.dart';
import 'package:amplify_event_enrichment_dart/src/metadata/sdk_metadata.dart';
import 'package:amplify_event_enrichment_dart/src/session/session.dart';
import 'package:amplify_event_enrichment_dart/src/session/session_event_types.dart';
import 'package:amplify_event_enrichment_dart/src/session/session_manager.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:clock/clock.dart';
import 'package:uuid/uuid.dart';

/// {@template amplify_event_enrichment.event_enrichment_client}
/// Client for recording enriched analytics events.
///
/// Collects device, app, session, and SDK metadata and produces
/// [EnrichedEvent] instances that serialize to a structured analytics JSON
/// envelope. Session boundaries are emitted as [zSessionStartEventType] and
/// [zSessionStopEventType] events through the configured
/// [EnrichedEventSender].
///
/// ## Usage
///
/// ```dart
/// final client = EventEnrichmentClient(
///   appMetadata: AppMetadata(appId: 'my-app'),
///   deviceMetadata: DeviceMetadata(platform: 'iOS'),
///   sdkMetadata: SdkMetadata(name: 'amplify-flutter', version: '2.0.0'),
///   clientId: 'device-uuid',
///   initialUserId: 'user-1',
///   initialGlobalAttributes: const {'env': 'prod'},
/// );
///
/// final result = await client.record('button_clicked');
/// if (result case Ok(:final value)) {
///   print(jsonEncode(value.toJson()));
/// }
///
/// await client.close();
/// ```
/// {@endtemplate}
class EventEnrichmentClient {
  /// {@macro amplify_event_enrichment.event_enrichment_client}
  ///
  /// [initialUserId], [initialGlobalAttributes] and [initialGlobalMetrics]
  /// are applied before the automatic session start, so the launch
  /// [zSessionStartEventType] event carries them.
  EventEnrichmentClient({
    required AppMetadata appMetadata,
    required DeviceMetadata deviceMetadata,
    required SdkMetadata sdkMetadata,
    required String clientId,
    String? initialUserId,
    Map<String, String>? initialGlobalAttributes,
    Map<String, double>? initialGlobalMetrics,
    EventEnrichmentClientOptions? options,
    EnrichedEventSender? sender,
  }) : _appMetadata = appMetadata,
       _deviceMetadata = deviceMetadata,
       _sdkMetadata = sdkMetadata,
       _clientId = clientId,
       _userId = initialUserId,
       _sender = sender,
       _logger = AmplifyLogging.logger('EventEnrichmentClient') {
    initialGlobalAttributes?.forEach(_globalFields.addAttribute);
    initialGlobalMetrics?.forEach(_globalFields.addMetric);
    final opts = options ?? const EventEnrichmentClientOptions();
    _sessionManager = SessionManager(
      appId: appMetadata.appId,
      sessionTimeout: opts.sessionTimeout,
      generateId: () => const Uuid().v4(),
      onSessionStarted: _emitSessionStart,
      onSessionEnded: _emitSessionStop,
    );
    if (opts.autoSessionTracking) {
      // Nothing can await a constructor, so failures are logged.
      _sessionManager
          .startSession()
          .onError<Object>(
            (e, st) => _logger.error('Failed to start a session', e, st),
          )
          .ignore();
    }
  }

  final AppMetadata _appMetadata;
  final DeviceMetadata _deviceMetadata;
  final SdkMetadata _sdkMetadata;
  final String _clientId;
  final EnrichedEventSender? _sender;
  final Logger _logger;
  final GlobalFieldsManager _globalFields = GlobalFieldsManager();
  late final SessionManager _sessionManager;

  /// The session manager for this client, for platform-specific lifecycle
  /// observers.
  SessionManager get sessionManager => _sessionManager;

  String? _userId;
  bool _closed = false;

  /// Whether the client has been closed.
  bool get isClosed => _closed;

  /// Records an event and returns the enriched result, starting or replacing
  /// the session as needed.
  ///
  /// Never throws. Returns [Result.error] with:
  /// - [EventEnrichmentClosedException] if the client has been closed
  /// - [EventEnrichmentRecordException] if the sender fails
  Future<Result<EnrichedEvent>> record(
    String eventType, {
    Map<String, String>? attributes,
    Map<String, double>? metrics,
  }) async {
    if (_closed) return const Result.error(EventEnrichmentClosedException());

    try {
      final session = await _sessionManager.sessionForRecording();

      final event = _buildEvent(
        eventType,
        session,
        attributes: attributes,
        metrics: metrics,
      );

      // Awaited inside the try so async sender errors are caught here.
      await _sender?.send(event);
      _logger.verbose('Recorded event: $eventType');
      return Result.ok(event);
    } on Object catch (e, st) {
      _logger.error('Failed to record event: $eventType', e, st);
      return Result.error(EventEnrichmentRecordException(cause: e));
    }
  }

  EnrichedEvent _buildEvent(
    String eventType,
    Session session, {
    Map<String, String>? attributes,
    Map<String, double>? metrics,
  }) => EnrichedEvent(
    eventId: const Uuid().v4(),
    eventType: eventType,
    eventTimestamp: clock.now().millisecondsSinceEpoch,
    session: session,
    attributes: {..._globalFields.attributes, ...?attributes},
    metrics: {..._globalFields.metrics, ...?metrics},
    device: _deviceMetadata,
    app: _appMetadata,
    sdk: _sdkMetadata,
    clientId: _clientId,
    userId: _userId,
  );

  Future<void> _emitSessionStart(Session session) =>
      _emitSessionEvent(zSessionStartEventType, session);

  Future<void> _emitSessionStop(Session session) =>
      _emitSessionEvent(zSessionStopEventType, session);

  // Logged rather than thrown: some boundaries have no caller to hand an
  // error back to.
  Future<void> _emitSessionEvent(String eventType, Session session) async {
    final sender = _sender;
    if (sender == null) return;
    try {
      await sender.send(_buildEvent(eventType, session));
      _logger.verbose('Recorded event: $eventType');
    } on Object catch (e, st) {
      _logger.error('Failed to record event: $eventType', e, st);
    }
  }

  /// Starts a new session and emits a [zSessionStartEventType] event, ending
  /// any session already running.
  Future<void> startSession() => _sessionManager.startSession();

  /// Stops the current session and emits a [zSessionStopEventType] event
  /// carrying its stop timestamp and duration.
  ///
  /// [handleAppResumed] will not start a new session afterwards; recording an
  /// event or calling [startSession] begins tracking again.
  Future<void> stopSession() => _sessionManager.stopSession();

  /// Called when the app moves to background.
  void handleAppPaused() => _sessionManager.handleAppPaused();

  /// Called when the app returns to foreground.
  void handleAppResumed() => _sessionManager.handleAppResumed();

  /// Sets the user identifier stamped on subsequent events. Use
  /// `initialUserId` on the constructor to have the launch session event
  /// carry it.
  // Method rather than a setter for consistency with the other mutators.
  // ignore: use_setters_to_change_properties
  void setUserId(String? userId) => _userId = userId;

  /// Adds a global attribute stamped on every subsequent event.
  void addGlobalAttribute(String key, String value) =>
      _globalFields.addAttribute(key, value);

  /// Removes a global attribute.
  void removeGlobalAttribute(String key) => _globalFields.removeAttribute(key);

  /// Adds a global metric stamped on every subsequent event.
  void addGlobalMetric(String key, double value) =>
      _globalFields.addMetric(key, value);

  /// Removes a global metric.
  void removeGlobalMetric(String key) => _globalFields.removeMetric(key);

  /// Ends any running session, emits its [zSessionStopEventType] event, and
  /// releases resources. The client cannot be reused after closing.
  Future<void> close() async {
    if (_closed) return;
    // Set first so no record() call can land behind the final stop event.
    _closed = true;
    await _sessionManager.stopSession();
    _sessionManager.clearSession();
    _logger.info('Client closed');
  }
}
