// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_event_enrichment_dart/src/session/session.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:meta/meta.dart';

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
/// Every session end is reported to the optional [OnSessionEnded] callback
/// supplied at construction, which is how the client turns a session end into
/// an emitted event. The manager itself knows nothing about senders or events.
/// {@endtemplate}
class SessionManager {
  /// {@macro amplify_event_enrichment.session_manager}
  ///
  /// [onSessionEnded] is invoked once per session end, after stop metadata has
  /// been recorded.
  SessionManager({
    required String appId,
    required Duration sessionTimeout,
    required String Function() generateId,
    OnSessionEnded? onSessionEnded,
  }) : _appId = appId,
       _sessionTimeout = sessionTimeout,
       _generateId = generateId,
       _onSessionEnded = onSessionEnded;

  final String _appId;
  final Duration _sessionTimeout;
  final String Function() _generateId;
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
  /// The state change is synchronous: [session] and [state] describe the new
  /// session as soon as this returns. The returned future completes once a
  /// displaced session's end has been reported to [OnSessionEnded], and is
  /// already complete when there was no session to displace.
  Future<void> startSession() {
    final ended = _endCurrent();
    _startFresh();
    return ended;
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
    return ended;
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
  void handleAppResumed() {
    switch (_state) {
      case SessionState.paused:
        _cancelTimer();
        _state = SessionState.active;
      case SessionState.stopped:
        if (_stoppedExplicitly) return;
        // Nothing is running, so this starts a session without ending one —
        // there is no session end to report and nothing for a caller to await.
        _startFresh();
      case SessionState.active:
        break;
    }
  }

  /// Records stop metadata on the current session, moves to the stopped state,
  /// and reports the ended session to [OnSessionEnded].
  ///
  /// Does nothing when no session is running, which is what keeps a session
  /// from being ended — or reported — twice: whichever end path runs first
  /// takes it to [SessionState.stopped], and every later one is a no-op. That
  /// covers stopping twice, closing after a stop, and closing after a timeout.
  ///
  /// Deliberately does not touch the explicit-stop flag, so the timeout path
  /// and [startSession]'s implicit stop stay restartable by
  /// [handleAppResumed].
  Future<void> _endCurrent() {
    _cancelTimer();
    if (_state == SessionState.stopped || _session == null) {
      return Future<void>.value();
    }
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
  void _startFresh() {
    _stoppedExplicitly = false;
    _sessionStart = DateTime.now();
    _session = Session(
      id: _generateSessionId(),
      startTimestamp: _sessionStart!.toUtc().toIso8601String(),
    );
    _state = SessionState.active;
  }

  void _onTimeoutExpired() {
    // A timer has no caller, so nothing can await this. OnSessionEnded is
    // contracted not to throw; if one does anyway, the log is the only place
    // the failure can surface.
    unawaited(
      _endCurrent().onError<Object>(
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
