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
/// [EnrichedEventSender], unless
/// [EventEnrichmentClientOptions.emitSessionEvents] is `false`.
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
  /// Initial user and global values are applied before automatic session
  /// creation and appear in its start event when session events are enabled.
  ///
  /// Throws an [ArgumentError] if `initialGlobalMetrics` has a NaN or infinite
  /// value.
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
       _options = options ?? const EventEnrichmentClientOptions(),
       _logger = AmplifyLogging.logger('EventEnrichmentClient') {
    initialGlobalAttributes?.forEach(_globalFields.addAttribute);
    initialGlobalMetrics?.forEach(_globalFields.addMetric);
    _sessionManager = SessionManager(
      appId: appMetadata.appId,
      sessionTimeout: _options.sessionTimeout,
      generateId: () => const Uuid().v4(),
      onSessionStarted: _emitSessionStart,
      onSessionEnded: _emitSessionStop,
    );
    if (_options.autoSessionTracking) {
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
  final EventEnrichmentClientOptions _options;
  final Logger _logger;
  final GlobalFieldsManager _globalFields = GlobalFieldsManager();
  late final SessionManager _sessionManager;

  /// The session manager for this client, for platform-specific lifecycle
  /// observers. [close] clears it, so it reports no further boundaries; see
  /// [SessionManager.clearSession].
  SessionManager get sessionManager => _sessionManager;

  String? _userId;
  bool _closed = false;
  Future<void>? _closing;

  // Sends run one at a time in call order. Never fails, so a failed send does
  // not stall the ones behind it.
  Future<void> _sendTail = Future<void>.value();

  /// Whether the client has been closed.
  bool get isClosed => _closed;

  /// Records an event and returns the enriched result, starting or replacing
  /// the session as needed.
  ///
  /// Never throws. Returns [Result.error] with:
  /// - [EventEnrichmentClosedException] if the client has been closed
  /// - [EventEnrichmentValidationException] if a value in [metrics] is NaN or
  ///   infinite, in which case no event is built or sent
  /// - [EventEnrichmentRecordException] if the event cannot be built or the
  ///   sender fails
  Future<Result<EnrichedEvent>> record(
    String eventType, {
    Map<String, String>? attributes,
    Map<String, double>? metrics,
  }) {
    if (_closed) {
      return Future.value(const Result.error(EventEnrichmentClosedException()));
    }
    // Rejected before a session can start: JSON cannot encode these values.
    for (final MapEntry(:key, :value) in (metrics ?? const {}).entries) {
      if (!value.isFinite) {
        return Future.value(
          Result.error(
            EventEnrichmentValidationException(
              message: 'Metric "$key" is not finite: $value',
              recoverySuggestion: 'Pass only finite metric values.',
            ),
          ),
        );
      }
    }

    // Built and queued in this turn, behind the start of its own session.
    final EnrichedEvent event;
    try {
      event = _buildEvent(
        eventType,
        _sessionManager.sessionForRecording(),
        attributes: attributes,
        metrics: metrics,
      );
    } on Object catch (e, st) {
      return Future.value(_recordFailure(eventType, e, st));
    }
    return _enqueueSend(
      () => _sendRecord(event),
    ).onError<Object>((e, st) => _recordFailure(eventType, e, st));
  }

  Future<Result<EnrichedEvent>> _sendRecord(EnrichedEvent event) async {
    await _sender?.send(event);
    _logger.verbose('Recorded event: ${event.eventType}');
    return Result.ok(event);
  }

  Result<EnrichedEvent> _recordFailure(
    String eventType,
    Object e,
    StackTrace st,
  ) {
    _logger.error('Failed to record event: $eventType', e, st);
    return Result.error(EventEnrichmentRecordException(cause: e));
  }

  // A failure goes to this caller, not to the queue.
  Future<T> _enqueueSend<T>(Future<T> Function() send) {
    final next = _sendTail.then((_) => send());
    _sendTail = next.then<void>((_) {}, onError: (Object _, StackTrace _) {});
    return next;
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

  // Built and queued inside the transition. Logged rather than thrown: some
  // boundaries have no caller to hand an error back to.
  Future<void> _emitSessionEvent(String eventType, Session session) {
    final sender = _sender;
    if (sender == null || !_options.emitSessionEvents) {
      return Future<void>.value();
    }
    final event = _buildEvent(eventType, session);
    return _enqueueSend(() async {
      try {
        await sender.send(event);
        _logger.verbose('Recorded event: $eventType');
      } on Object catch (e, st) {
        _logger.error('Failed to record event: $eventType', e, st);
      }
    });
  }

  /// Starts a new session, ending any running session. Emits a
  /// [zSessionStartEventType] event when session events are enabled. No-op
  /// once the client is closed.
  Future<void> startSession() {
    if (_closed) return Future<void>.value();
    return _sessionManager.startSession();
  }

  /// Stops the current session. When session events are enabled, emits a
  /// [zSessionStopEventType] event with its stop time and duration. No-op after
  /// close. Recording or calling [startSession] begins tracking again.
  Future<void> stopSession() {
    if (_closed) return Future<void>.value();
    return _sessionManager.stopSession();
  }

  /// Called when the app moves to background. No-op once the client is closed.
  void handleAppPaused() {
    if (_closed) return;
    _sessionManager.handleAppPaused();
  }

  /// Called when the app returns to foreground. No-op once the client is
  /// closed.
  void handleAppResumed() {
    if (_closed) return;
    _sessionManager.handleAppResumed();
  }

  /// Sets the user identifier stamped on subsequent events. Pass
  /// `initialUserId` to include it in the launch event when session events are
  /// enabled.
  // Method rather than a setter for consistency with the other mutators.
  // ignore: use_setters_to_change_properties
  void setUserId(String? userId) => _userId = userId;

  /// Sets a global attribute on subsequent events, replacing [key].
  void addGlobalAttribute(String key, String value) =>
      _globalFields.addAttribute(key, value);

  /// Removes [key] from subsequent events without changing recorded events.
  void removeGlobalAttribute(String key) => _globalFields.removeAttribute(key);

  /// Sets a global metric on subsequent events, replacing [key]. Throws an
  /// [ArgumentError] if [value] is NaN or infinite.
  void addGlobalMetric(String key, double value) =>
      _globalFields.addMetric(key, value);

  /// Removes [key] from subsequent events without changing recorded events.
  void removeGlobalMetric(String key) => _globalFields.removeMetric(key);

  /// Ends any running session and releases resources. When session events are
  /// enabled, emits the final stop event. Waits for queued sends, cannot be
  /// reused, and returns the same teardown to repeated callers.
  Future<void> close() {
    _closed = true;
    return _closing ??= _close();
  }

  Future<void> _close() async {
    final stopped = _sessionManager.stopSession();
    // Cleared in the same turn, so nothing can queue behind the final stop.
    _sessionManager.clearSession();
    await stopped;
    await _sendTail;
    _logger.info('Client closed');
  }
}
