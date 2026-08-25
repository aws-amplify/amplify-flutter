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
import 'package:uuid/uuid.dart';

/// {@template amplify_event_enrichment.event_enrichment_client}
/// Client for recording enriched analytics events.
///
/// Collects device, app, session, and SDK metadata and produces
/// [EnrichedEvent] instances that serialize to a structured analytics
/// JSON envelope.
///
/// ## Sessions
///
/// Every event carries a session. A [zSessionStartEventType] event is emitted
/// when a session starts and a [zSessionStopEventType] event carrying its stop
/// timestamp and duration when it ends, both through the configured
/// [EnrichedEventSender] and both named the way legacy Analytics named them.
/// See [startSession] and [stopSession].
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
  /// [initialUserId], [initialGlobalAttributes] and [initialGlobalMetrics] are
  /// applied before the session that
  /// [EventEnrichmentClientOptions.autoSessionTracking] starts, so the launch
  /// [zSessionStartEventType] event carries them. Setting them afterwards with
  /// [setUserId] or [addGlobalAttribute] cannot: that event has already gone
  /// out.
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
      // A constructor has nothing to await, so this eager start's event is
      // fired the way the timeout path fires its own: the emission's guard
      // logs sender failures, and this catches anything else so no start
      // report escapes as an unhandled async error. The event still reaches the
      // sender ahead of any event a caller records straight after construction,
      // because SessionManager reports a start with nothing to displace
      // synchronously.
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
  /// Starts a session if none is running, and replaces one the app has been
  /// backgrounded past the session timeout with, so an event is never
  /// attributed to a session that has already ended. Both emit their boundary
  /// events before this event.
  ///
  /// Awaits the configured sender, so the returned future completes only once
  /// the event has been handed to the transport.
  ///
  /// Never throws. Returns [Result.error] with an
  /// [EventEnrichmentClosedException] if the client has been closed, or an
  /// [EventEnrichmentRecordException] if recording fails — which includes a
  /// sender that throws synchronously *or* whose future completes with an
  /// error. Sender failures are logged before being returned.
  Future<Result<EnrichedEvent>> record(
    String eventType, {
    Map<String, String>? attributes,
    Map<String, double>? metrics,
  }) async {
    if (_closed) return const Result.error(EventEnrichmentClosedException());

    try {
      // The manager owns the decision: it starts a session when none is
      // running and replaces one whose background timeout has already passed,
      // so neither a stopped session's stop_timestamp nor a session that
      // logically died while the app was backgrounded can land on this event.
      // Awaited, so any boundary event it reports reaches the sender first.
      final session = await _sessionManager.sessionForRecording();

      final event = _buildEvent(
        eventType,
        session,
        attributes: attributes,
        metrics: metrics,
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

  /// Enriches [eventType] against [session] and the client's current metadata.
  ///
  /// Shared by [record] and the session-boundary emissions so a session event
  /// is enriched exactly like any other event.
  EnrichedEvent _buildEvent(
    String eventType,
    Session session, {
    Map<String, String>? attributes,
    Map<String, double>? metrics,
  }) => EnrichedEvent(
    eventId: const Uuid().v4(),
    eventType: eventType,
    eventTimestamp: DateTime.now().millisecondsSinceEpoch,
    session: session,
    attributes: {..._globalFields.attributes, ...?attributes},
    metrics: {..._globalFields.metrics, ...?metrics},
    device: _deviceMetadata,
    app: _appMetadata,
    sdk: _sdkMetadata,
    clientId: _clientId,
    userId: _userId,
  );

  /// Emits a [zSessionStartEventType] event for a session that just started.
  ///
  /// Wired into [SessionManager] as its session-started callback, so every
  /// start path reports its session exactly once: the eager start at
  /// construction, an explicit [startSession], [record]'s lazy start, the
  /// restart after a session timeout, and the new session in a displacement.
  Future<void> _emitSessionStart(Session session) =>
      _emitSessionEvent(zSessionStartEventType, session);

  /// Emits a [zSessionStopEventType] event for a session that just ended.
  ///
  /// Wired into [SessionManager] as its session-ended callback, so every end
  /// path reports its session exactly once: an explicit [stopSession], the
  /// session timeout, [close], and the implicit stop when [startSession]
  /// displaces a running session.
  ///
  /// The event carries the *ended* session, so its stop timestamp and duration
  /// reach the sender.
  Future<void> _emitSessionStop(Session session) =>
      _emitSessionEvent(zSessionStopEventType, session);

  /// Sends a session-boundary event through the same enrichment as [record],
  /// including the user id and global attributes and metrics. Legacy Pinpoint
  /// stamped its globals on `_session.start` and `_session.stop` too.
  ///
  /// Never throws. A sender that fails is logged and swallowed, because a
  /// session boundary is a lifecycle transition rather than a caller's attempt
  /// to record something: there is no `Result` to hand back, and the timeout
  /// and lifecycle paths have no caller at all.
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

  /// Starts a new session manually and emits a [zSessionStartEventType] event
  /// for it.
  ///
  /// A session already running is ended first, which emits its
  /// [zSessionStopEventType] event before the start — legacy Pinpoint reported
  /// the same stop-then-start pair for a displacement. The returned future
  /// completes once both events have been handed to the [EnrichedEventSender].
  Future<void> startSession() => _sessionManager.startSession();

  /// Stops the current session and emits a [zSessionStopEventType] event
  /// carrying its stop timestamp and duration, so session length reaches the
  /// [EnrichedEventSender] rather than being computed and dropped.
  ///
  /// The returned future completes once the event has been handed to the
  /// sender; a sender failure is logged and never thrown. Nothing is emitted
  /// when no session is running.
  ///
  /// This is also an explicit end to session tracking: a later
  /// [handleAppResumed] will not start a new session. Recording an event still
  /// lazily starts one, and [startSession] resumes normal lifecycle behaviour.
  Future<void> stopSession() => _sessionManager.stopSession();

  /// Called when the app moves to background.
  ///
  /// If the session timeout passes before the app returns, the session ends and
  /// its [zSessionStopEventType] event is emitted with no caller to await it,
  /// so a sender failure there surfaces only in the logs.
  void handleAppPaused() => _sessionManager.handleAppPaused();

  /// Called when the app returns to foreground.
  ///
  /// Resumes a paused session, or ends it and starts a new one if the app was
  /// backgrounded for longer than the session timeout. Does nothing after an
  /// explicit [stopSession] — a session the customer ended is not resurrected
  /// by a lifecycle transition.
  ///
  /// Resuming emits nothing, since it is the same session. A restart emits the
  /// old session's [zSessionStopEventType] event and then the new session's
  /// [zSessionStartEventType] event, with no caller to await them.
  void handleAppResumed() => _sessionManager.handleAppResumed();

  /// Sets the user identifier stamped on subsequent events.
  ///
  /// Pass `initialUserId` to the constructor instead to have the launch
  /// [zSessionStartEventType] event carry it.
  // Kept as an imperative method (rather than a setter) to stay consistent
  // with the other mutators on this client and the equivalent native APIs.
  // ignore: use_setters_to_change_properties
  void setUserId(String? userId) => _userId = userId;

  /// Adds a global attribute stamped on every subsequent event.
  ///
  /// Pass `initialGlobalAttributes` to the constructor instead to have the
  /// launch [zSessionStartEventType] event carry it.
  void addGlobalAttribute(String key, String value) =>
      _globalFields.addAttribute(key, value);

  /// Removes a global attribute.
  void removeGlobalAttribute(String key) => _globalFields.removeAttribute(key);

  /// Adds a global metric stamped on every subsequent event.
  ///
  /// Pass `initialGlobalMetrics` to the constructor instead to have the launch
  /// [zSessionStartEventType] event carry it.
  void addGlobalMetric(String key, double value) =>
      _globalFields.addMetric(key, value);

  /// Removes a global metric.
  void removeGlobalMetric(String key) => _globalFields.removeMetric(key);

  /// Releases resources and stops session tracking.
  ///
  /// A session still running is ended first, so its [zSessionStopEventType]
  /// event reaches the [EnrichedEventSender] before the client goes away. A
  /// session that already ended emitted its stop then, so closing after
  /// [stopSession] or after a session timeout does not emit a second one.
  ///
  /// The client cannot be reused after closing. Calling this more than once is
  /// a no-op.
  Future<void> close() async {
    if (_closed) return;
    // Closed first so no further record() call can slip in behind the final
    // session-stop event. _emitSessionStop deliberately does not consult this
    // flag, since the close path's whole point is to emit one last event.
    _closed = true;
    await _sessionManager.stopSession();
    // clearSession rather than leaving the stopped session readable: the stop
    // has already been recorded and emitted, and this drops the session so
    // none is readable after close.
    _sessionManager.clearSession();
    _logger.info('Client closed');
  }
}
