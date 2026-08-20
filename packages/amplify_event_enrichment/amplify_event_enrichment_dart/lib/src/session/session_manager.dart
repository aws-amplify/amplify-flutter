// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_event_enrichment_dart/src/session/session.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:meta/meta.dart';

/// {@template amplify_event_enrichment.on_session_started}
/// Called when a session starts, with the newly created session.
///
/// Invoked exactly once per session, from every start path: the eager start at
/// construction, an explicit start, the lazy start when an event is recorded
/// without a session, the restart when a resume follows a session timeout, and
/// the new session in a displacement.
///
/// In a displacement this is called after [OnSessionEnded] has completed for
/// the session being replaced, so a stop is always reported before the start
/// that replaced it.
///
/// Implementations must not throw, and should complete their own failures
/// rather than propagating them: the paths that start a session are lifecycle
/// transitions, not a caller's attempt to record anything.
/// {@endtemplate}
typedef OnSessionStarted = Future<void> Function(Session session);

/// {@template amplify_event_enrichment.on_session_ended}
/// Called when a session ends, after its stop timestamp and duration have
/// been recorded on it.
///
/// The [Session] passed is the session that just ended, so implementations see
/// its stop timestamp and duration. Invoked exactly once per session, from
/// every end path: an explicit stop, the session timeout expiring, and the
/// implicit stop when a new session displaces a running one.
///
/// Implementations must not throw, and should complete their own failures
/// rather than propagating them: the paths that end a session are lifecycle
/// transitions, not a caller's attempt to record anything.
/// {@endtemplate}
typedef OnSessionEnded = Future<void> Function(Session session);

/// The state of the session manager.
enum SessionState {
  /// No active session.
  stopped,

  /// Session is active (app in foreground).
  active,

  /// Session is paused (app backgrounded, within timeout).
  paused,
}

/// {@template amplify_event_enrichment.session_manager}
/// Manages session lifecycle with Active/Paused/Stopped states.
///
/// When the app backgrounds, the session enters [SessionState.paused].
/// If the app returns to foreground within the configured timeout, the same
/// session resumes. If the timeout expires, a new session starts on next
/// foreground.
///
/// An explicit [stopSession] or [clearSession] call is treated differently
/// from a timeout: it means tracking was ended on purpose, so
/// [handleAppResumed] will not start a new session afterwards. See
/// [handleAppResumed].
///
/// Every session start and end is reported to the optional [OnSessionStarted]
/// and [OnSessionEnded] callbacks supplied at construction, which is how the
/// client turns a session boundary into an emitted event. The manager itself
/// knows nothing about senders or events.
/// {@endtemplate}
class SessionManager {
  /// {@macro amplify_event_enrichment.session_manager}
  ///
  /// [onSessionStarted] and [onSessionEnded] are each invoked once per session
  /// boundary, after the state transition has been applied.
  SessionManager({
    required String appId,
    required Duration sessionTimeout,
    required String Function() generateId,
    OnSessionStarted? onSessionStarted,
    OnSessionEnded? onSessionEnded,
  }) : _appId = appId,
       _sessionTimeout = sessionTimeout,
       _generateId = generateId,
       _onSessionStarted = onSessionStarted,
       _onSessionEnded = onSessionEnded;

  final String _appId;
  final Duration _sessionTimeout;
  final String Function() _generateId;
  final OnSessionStarted? _onSessionStarted;
  final OnSessionEnded? _onSessionEnded;
  final Logger _logger = AmplifyLogging.logger('EventEnrichmentSessionManager');

  SessionState _state = SessionState.stopped;
  Session? _session;
  Timer? _pauseTimer;
  DateTime? _sessionStart;

  /// Whether the stopped state was reached by an explicit [stopSession] or
  /// [clearSession] call rather than by the session timeout expiring.
  ///
  /// A timeout stop is something the app comes back from, so a later
  /// foreground starts a fresh session. An explicit stop is the customer
  /// ending tracking, so a later foreground leaves it ended.
  bool _stoppedExplicitly = false;

  /// Current session state.
  SessionState get state => _state;

  /// Current session, or `null` if none has started yet or [clearSession] has
  /// dropped it.
  ///
  /// A session stopped by [stopSession] or by the timeout expiring stays
  /// readable here, carrying its stop timestamp and duration, so it can still
  /// be inspected. Only [clearSession] nulls it.
  Session? get session => _session;

  /// Visible for testing — allows injecting a custom timer factory.
  @visibleForTesting
  Timer Function(Duration, void Function()) timerFactory = Timer.new;

  /// Starts a new session. If one is running, ends it first.
  ///
  /// Also clears the explicit-stop flag, so lifecycle transitions resume
  /// managing sessions again after this call.
  ///
  /// Both state changes are applied synchronously, before anything is awaited:
  /// [session] and [state] describe the new session as soon as this returns,
  /// whether or not the caller awaits. The returned future completes once the
  /// boundary has been reported — a displaced session's end first, then the new
  /// session's start, in that order.
  ///
  /// When there is no session to displace the start is reported synchronously
  /// rather than after a microtask, so a caller that records an event
  /// immediately after cannot get its event reported ahead of the session's
  /// start.
  Future<void> startSession() {
    final ended = _endCurrent();
    final started = _startFresh();
    if (ended == null) return _reportStart(started);
    return ended.then((_) => _reportStart(started));
  }

  /// Stops the current session, recording stop time and duration, and reports
  /// it to [OnSessionEnded].
  ///
  /// This is an explicit end to tracking: [handleAppResumed] will not start a
  /// new session afterwards. Call [startSession], or record an event on the
  /// client, to begin tracking again.
  ///
  /// The state change is synchronous; the returned future completes once the
  /// end has been reported. Ending an already-stopped session does nothing and
  /// reports nothing, so this is safe to call more than once.
  Future<void> stopSession() {
    final ended = _endCurrent();
    _stoppedExplicitly = true;
    return ended ?? Future<void>.value();
  }

  /// Clears the current session without recording stop metadata.
  ///
  /// Unlike [stopSession], this records no stop timestamp or duration, reports
  /// nothing to [OnSessionEnded], and drops the session entirely so none
  /// remains readable. Used when disposing the client, after the session has
  /// already been ended and reported.
  ///
  /// Like [stopSession], this is an explicit end to tracking, so
  /// [handleAppResumed] will not start a new session afterwards.
  void clearSession() {
    _cancelTimer();
    _session = null;
    _sessionStart = null;
    _state = SessionState.stopped;
    _stoppedExplicitly = true;
  }

  /// Called when the app moves to background.
  void handleAppPaused() {
    if (_state != SessionState.active) return;
    _state = SessionState.paused;
    _pauseTimer = timerFactory(_sessionTimeout, _onTimeoutExpired);
  }

  /// Called when the app returns to foreground.
  ///
  /// Resumes a paused session, or starts a new one if the session timeout
  /// expired while backgrounded. Does nothing if tracking was stopped
  /// explicitly via [stopSession] or [clearSession] — a session the customer
  /// ended is not resurrected by a lifecycle transition.
  /// Called when the app returns to foreground.
  ///
  /// Resumes a paused session, or starts a new one if the session timeout
  /// expired while backgrounded. Does nothing if tracking was stopped
  /// explicitly via [stopSession] or [clearSession] — a session the customer
  /// ended is not resurrected by a lifecycle transition.
  ///
  /// Resuming a paused session is not a session boundary, so nothing is
  /// reported for it. A restart after a timeout is, and there is no caller to
  /// await it: the start report is fired the same way the timeout's end report
  /// is, so a failure surfaces only in the log.
  void handleAppResumed() {
    switch (_state) {
      case SessionState.paused:
        _cancelTimer();
        _state = SessionState.active;
      case SessionState.stopped:
        if (_stoppedExplicitly) return;
        // Nothing is running, so this starts a session without ending one:
        // there is no end to report and no caller to await the start.
        _reportStartUnawaited(_startFresh());
      case SessionState.active:
        break;
    }
  }

  /// Records stop metadata on the current session, moves to the stopped state,
  /// and reports the ended session to [OnSessionEnded].
  ///
  /// Returns `null` when there was no session to end, which is what keeps a
  /// session from being ended — or reported — twice: whichever end path runs
  /// first takes it to [SessionState.stopped], and every later one is a no-op.
  /// That covers stopping twice, closing after a stop, and closing after a
  /// timeout.
  ///
  /// Deliberately does not touch the explicit-stop flag, so the timeout path
  /// and [startSession]'s implicit stop stay restartable by
  /// [handleAppResumed].
  Future<void>? _endCurrent() {
    _cancelTimer();
    if (_state == SessionState.stopped || _session == null) return null;
    final now = DateTime.now();
    final ended = Session(
      id: _session!.id,
      startTimestamp: _session!.startTimestamp,
      stopTimestamp: now.toUtc().toIso8601String(),
      duration: now.difference(_sessionStart!).inMilliseconds,
    );
    _session = ended;
    _state = SessionState.stopped;
    return _onSessionEnded?.call(ended) ?? Future<void>.value();
  }

  /// Creates and activates a new session, clearing the explicit-stop flag.
  ///
  /// Returns the new session so the caller can report it. Each call produces a
  /// distinct session, so a start is reported at most once per session.
  Session _startFresh() {
    _stoppedExplicitly = false;
    _sessionStart = DateTime.now();
    final started = Session(
      id: _generateSessionId(),
      startTimestamp: _sessionStart!.toUtc().toIso8601String(),
    );
    _session = started;
    _state = SessionState.active;
    return started;
  }

  Future<void> _reportStart(Session started) =>
      _onSessionStarted?.call(started) ?? Future<void>.value();

  /// Reports a start that nothing can await, logging anything that escapes the
  /// callback's own handling.
  void _reportStartUnawaited(Session started) {
    unawaited(
      _reportStart(started).onError<Object>(
        (e, st) =>
            _logger.error('Failed to report the start of a session', e, st),
      ),
    );
  }

  void _onTimeoutExpired() {
    // A timer has no caller, so nothing can await this. OnSessionEnded is
    // contracted not to throw; if one does anyway, the log is the only place
    // the failure can surface.
    final ended = _endCurrent();
    if (ended == null) return;
    unawaited(
      ended.onError<Object>(
        (e, st) => _logger.error(
          'Failed to report the end of a session that timed out',
          e,
          st,
        ),
      ),
    );
  }

  void _cancelTimer() {
    _pauseTimer?.cancel();
    _pauseTimer = null;
  }

  String _generateSessionId() {
    var prefix = _appId;
    if (prefix.length > 8) {
      prefix = prefix.substring(0, 8);
    } else {
      prefix = prefix.padLeft(8, '_');
    }
    final uniqueId = _generateId().substring(0, 8);
    final now = DateTime.now().toUtc();
    final date =
        '${now.year}${_pad(now.month)}${_pad(now.day)}'
        '-${_pad(now.hour)}${_pad(now.minute)}${_pad(now.second)}'
        '${now.millisecond.toString().padLeft(3, '0')}';
    return '$prefix-$uniqueId-$date';
  }

  static String _pad(int n) => n.toString().padLeft(2, '0');
}
