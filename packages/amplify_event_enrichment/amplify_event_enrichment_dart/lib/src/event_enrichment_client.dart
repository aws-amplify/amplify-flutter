// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/src/enriched_event.dart';
import 'package:amplify_event_enrichment_dart/src/event_enrichment_client_options.dart';
import 'package:amplify_event_enrichment_dart/src/exception/event_enrichment_exception.dart';
import 'package:amplify_event_enrichment_dart/src/global_fields_manager.dart';
import 'package:amplify_event_enrichment_dart/src/metadata/app_metadata.dart';
import 'package:amplify_event_enrichment_dart/src/metadata/device_metadata.dart';
import 'package:amplify_event_enrichment_dart/src/metadata/sdk_metadata.dart';
import 'package:amplify_event_enrichment_dart/src/sender.dart';
import 'package:amplify_event_enrichment_dart/src/session/session_manager.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:uuid/uuid.dart';

/// {@template amplify_event_enrichment.event_enrichment_client}
/// Client for recording enriched analytics events.
///
/// Collects device, app, session, and SDK metadata and produces
/// [EnrichedEvent] instances that serialize to a structured analytics
/// JSON envelope.
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
/// final result = await client.record('button_clicked');
/// if (result case Ok(:final value)) {
///   print(jsonEncode(value.toJson()));
/// }
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
    Sender? sender,
  }) : _appMetadata = appMetadata,
       _deviceMetadata = deviceMetadata,
       _sdkMetadata = sdkMetadata,
       _clientId = clientId,
       _sender = sender,
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
  final Sender? _sender;
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
  /// Awaits the configured sender, so the returned future completes only once
  /// the event has been handed to the transport.
  ///
  /// Never throws. Returns [Result.error] with an
  /// [EventEnrichmentClosedException] if the client has been closed, or an
  /// [EventEnrichmentRecordException] if recording fails unexpectedly — which
  /// includes a sender that throws synchronously *or* whose future completes
  /// with an error. Sender failures are logged before being returned.
  Future<Result<EnrichedEvent>> record(
    String eventType, {
    Map<String, String>? attributes,
    Map<String, double>? metrics,
  }) async {
    if (_closed) return const Result.error(EventEnrichmentClosedException());

    try {
      // A stopped session is still exposed by the manager for inspection, so
      // start a fresh one instead of stamping the stopped session (which
      // carries a stop_timestamp) onto a new event.
      if (_sessionManager.session == null ||
          _sessionManager.state == SessionState.stopped) {
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

      // Awaited inside the try so a sender whose future completes with an
      // error is caught here rather than surfacing as an unhandled async error.
      await _sender?.send(event);
      _logger.verbose('Recorded event: $eventType');
      return Result.ok(event);
    } on Object catch (e, st) {
      _logger.error('Failed to record event: $eventType', e, st);
      return Result.error(EventEnrichmentRecordException(cause: e));
    }
  }

  /// Starts a new session manually.
  void startSession() => _sessionManager.startSession();

  /// Stops the current session.
  ///
  /// This is an explicit end to session tracking: a later
  /// [handleAppResumed] will not start a new session. Recording an event
  /// still lazily starts one, and [startSession] resumes normal lifecycle
  /// behaviour.
  void stopSession() => _sessionManager.stopSession();

  /// Called when the app moves to background.
  void handleAppPaused() => _sessionManager.handleAppPaused();

  /// Called when the app returns to foreground.
  ///
  /// Resumes a paused session, or starts a new one if the session timeout
  /// expired while backgrounded. Does nothing after an explicit
  /// [stopSession] — a session the customer ended is not resurrected by a
  /// lifecycle transition.
  void handleAppResumed() => _sessionManager.handleAppResumed();

  /// Sets the user identifier stamped on subsequent events.
  // Kept as an imperative method (rather than a setter) to stay consistent
  // with the other mutators on this client and the equivalent native APIs.
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

  /// Releases resources and stops session tracking.
  ///
  /// The client cannot be reused after closing.
  void close() {
    _closed = true;
    // Stop the session to record its end, then drop it so no stale session is
    // readable after close.
    _sessionManager
      ..stopSession()
      ..clearSession();
    _logger.info('Client closed');
  }
}
