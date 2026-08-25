// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_event_enrichment_dart/src/session/session.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:clock/clock.dart';
import 'package:meta/meta.dart';

/// {@template amplify_event_enrichment.on_session_started}
/// Called once per session when it starts, from every start path.
///
/// When a session is displaced or restarted after a timeout, this runs only
/// after [OnSessionEnded] has completed for the previous session, so a stop is
/// always reported before the start that replaced it.
///
/// Implementations must not throw: every start path is a lifecycle transition,
/// and some have no caller to hand a failure back to.
/// {@endtemplate}
typedef OnSessionStarted = Future<void> Function(Session session);

/// {@template amplify_event_enrichment.on_session_ended}
/// Called once per session when it ends, with its stop timestamp and duration
/// already recorded on the [Session] passed in.
///
/// Implementations must not throw: every end path is a lifecycle transition,
/// and some have no caller to hand a failure back to.
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
/// Backgrounding the app pauses the session. Returning within the configured
/// timeout resumes it; returning after the timeout ends it and starts a new
/// one. An explicit [stopSession] or [clearSession] is different from a
/// timeout: it means tracking was ended on purpose, so [handleAppResumed]
/// leaves it ended.
///
/// Session boundaries are reported to the [OnSessionStarted] and
/// [OnSessionEnded] callbacks supplied at construction, which is how the client
/// turns a boundary into an emitted event. The manager itself knows nothing
/// about senders or events.
/// {@endtemplate}
class SessionManager {
  /// {@macro amplify_event_enrichment.session_manager}
  ///
  /// [onSessionStarted] and [onSessionEnded] are each invoked once per session
  /// boundary, after the state transition has been applied.
  ///
  /// [generateId] must return at least 8 characters: session ids take the first
  /// 8 as their unique segment, so a shorter value throws. A UUID v4 is the
  /// expected source.
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
  DateTime? _pausedAt;

  /// Whether the app is currently in the background.
  ///
  /// Tracked separately from [SessionState] because the two are different
  /// facts: a session can end while the app stays backgrounded, and any session
  /// started after that is backgrounded too. Without this, a session started
  /// from a background task would be [SessionState.active] with no pause
  /// timestamp and no timer, and would never time out.
  bool _backgrounded = false;

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
  /// A session ended by [stopSession] or by the timeout stays readable here
  /// carrying its stop timestamp and duration. Only [clearSession] nulls it.
  Session? get session => _session;

  /// Visible for testing — allows injecting a custom timer factory.
  @visibleForTesting
  Timer Function(Duration, void Function()) timerFactory = Timer.new;

  /// Starts a new session, ending any session already running.
  ///
  /// Also clears the explicit-stop flag, so lifecycle transitions resume
  /// managing sessions after this call.
  ///
  /// State changes are applied synchronously, so [session] and [state] describe
  /// the new session as soon as this returns whether or not the caller awaits.
  /// The returned future completes once the boundary has been reported: a
  /// displaced session's end first, then the new session's start.
  ///
  /// With no session to displace the start is reported synchronously rather
  /// than after a microtask, so an event recorded immediately after cannot be
  /// reported ahead of the session's start.
  ///
  /// Called while the app is backgrounded, the new session starts
  /// [SessionState.paused] rather than [SessionState.active], with its timeout
  /// armed from now — a session that begins in the background has to be able to
  /// time out there too.
  Future<void> startSession() => _restart();

  /// The session an event recorded now belongs to, starting a fresh one when
  /// there is none and replacing one whose background timeout has passed.
  ///
  /// The recording path has to make the same expiry decision [handleAppResumed]
  /// makes, and for the same reason: a platform that suspended the pause timer
  /// can leave a long-dead session sitting in [SessionState.paused], and an
  /// event stamped with it would be attributed to a session that logically
  /// ended before the app was even backgrounded. Both paths ask
  /// [_expiredPauseTime], so they cannot disagree.
  ///
  /// Unlike [handleAppResumed] this starts a session even after an explicit
  /// [stopSession]: recording is a caller asking for tracking, not a lifecycle
  /// transition.
  ///
  /// The returned future completes once any boundary this caused has been
  /// reported, so an event built from the returned session cannot reach the
  /// sender ahead of that session's own start.
  Future<Session> sessionForRecording() {
    if (_state == SessionState.paused) {
      final expiredAt = _expiredPauseTime();
      // Still inside the timeout, so this is the same session and no boundary.
      if (expiredAt == null) return Future.value(_session!);
      return _restart(endedAt: expiredAt).then((_) => _session!);
    }
    if (_state == SessionState.stopped || _session == null) {
      return _restart().then((_) => _session!);
    }
    return Future.value(_session!);
  }

  /// Stops the current session, recording stop time and duration, and reports
  /// it to [OnSessionEnded].
  ///
  /// This is an explicit end to tracking: [handleAppResumed] will not start a
  /// new session afterwards. Call [startSession], or record an event on the
  /// client, to begin tracking again.
  ///
  /// The state change is synchronous; the returned future completes once the
  /// end has been reported. Stopping an already-stopped session reports
  /// nothing, so this is safe to call more than once.
  Future<void> stopSession() {
    final ended = _endCurrent();
    _stoppedExplicitly = true;
    return ended ?? Future<void>.value();
  }

  /// Clears the current session without recording stop metadata.
  ///
  /// Unlike [stopSession] this records no stop timestamp or duration, reports
  /// nothing to [OnSessionEnded], and drops the session so none remains
  /// readable. Used when disposing the client, after the session has already
  /// been ended and reported.
  ///
  /// Like [stopSession], this is an explicit end to tracking.
  void clearSession() {
    _cancelTimer();
    _session = null;
    _sessionStart = null;
    _pausedAt = null;
    _state = SessionState.stopped;
    _stoppedExplicitly = true;
  }

  /// Called when the app moves to background.
  ///
  /// Records when the pause happened and arms a timer for the timeout. The
  /// timestamp is what [handleAppResumed] and [sessionForRecording] measure the
  /// background against, because a platform that suspends timers while
  /// backgrounded (iOS suspends the Dart event loop) may not run the timer until
  /// after the app is already back in the foreground, or at all.
  void handleAppPaused() {
    // Recorded even with no session to pause, so a session started later while
    // still backgrounded knows to start paused.
    _backgrounded = true;
    if (_state != SessionState.active) return;
    _pauseCurrent();
  }

  /// Called when the app returns to foreground.
  ///
  /// Resumes a paused session that was backgrounded for less than the timeout.
  /// A longer background is the timeout path even if the timer never ran: the
  /// old session is ended, stamped at the moment it was paused, and a new one
  /// starts. Does nothing if tracking was stopped explicitly via [stopSession]
  /// or [clearSession] — a session the customer ended is not resurrected by a
  /// lifecycle transition.
  ///
  /// Resuming is not a session boundary, so nothing is reported for it. A
  /// restart is, and there is no caller to await it, so a failure surfaces only
  /// in the log.
  void handleAppResumed() {
    // Cleared before anything below can start a session, so a session started
    // here is active rather than immediately paused.
    _backgrounded = false;
    switch (_state) {
      case SessionState.paused:
        final expiredAt = _expiredPauseTime();
        if (expiredAt == null) {
          _cancelTimer();
          _pausedAt = null;
          _state = SessionState.active;
          return;
        }
        _fireAndLog(
          _restart(endedAt: expiredAt),
          'Failed to report a session boundary after a background timeout',
        );
      case SessionState.stopped:
        if (_stoppedExplicitly) return;
        // Nothing is running, so this starts a session without ending one:
        // there is no end to report and no caller to await the start.
        _fireAndLog(
          _reportStart(_startFresh()),
          'Failed to report the start of a session',
        );
      case SessionState.active:
        break;
    }
  }

  /// The time the current pause began, when it has outlasted the session
  /// timeout, or `null` when it has not.
  ///
  /// The only place the timeout is measured against the pause timestamp.
  /// [handleAppResumed] and [sessionForRecording] both consult it so a
  /// background cannot be expired by one and live to the other.
  DateTime? _expiredPauseTime() {
    final pausedAt = _pausedAt;
    if (pausedAt == null) return null;
    if (clock.now().difference(pausedAt) < _sessionTimeout) return null;
    return pausedAt;
  }

  /// Moves the running session to [SessionState.paused], stamping the pause and
  /// arming the timeout.
  void _pauseCurrent() {
    _state = SessionState.paused;
    _pausedAt = clock.now();
    _pauseTimer = timerFactory(_sessionTimeout, _onTimeoutExpired);
  }

  /// Ends any running session and starts a fresh one, reporting the end before
  /// the start.
  ///
  /// [endedAt] stamps the stop, for an end that happened earlier than this call
  /// — a session whose background timeout is only being detected now.
  Future<void> _restart({DateTime? endedAt}) {
    final ended = _endCurrent(at: endedAt);
    final started = _startFresh();
    if (ended == null) return _reportStart(started);
    return ended.then((_) => _reportStart(started));
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
  Future<void>? _endCurrent({DateTime? at}) {
    _cancelTimer();
    _pausedAt = null;
    if (_state == SessionState.stopped || _session == null) return null;
    final stoppedAt = at ?? clock.now();
    final ended = Session(
      id: _session!.id,
      startTimestamp: _session!.startTimestamp,
      stopTimestamp: stoppedAt.toUtc().toIso8601String(),
      duration: stoppedAt.difference(_sessionStart!).inMilliseconds,
    );
    _session = ended;
    _state = SessionState.stopped;
    return _onSessionEnded?.call(ended) ?? Future<void>.value();
  }

  /// Creates and activates a new session, clearing the explicit-stop flag.
  ///
  /// Returns the new session so the caller can report it. Each call produces a
  /// distinct session, so a start is reported at most once per session.
  ///
  /// A session created while the app is backgrounded is paused straight away,
  /// so its timeout runs from now rather than never running at all.
  Session _startFresh() {
    _stoppedExplicitly = false;
    _sessionStart = clock.now();
    final started = Session(
      id: _generateSessionId(),
      startTimestamp: _sessionStart!.toUtc().toIso8601String(),
    );
    _session = started;
    _state = SessionState.active;
    if (_backgrounded) _pauseCurrent();
    return started;
  }

  Future<void> _reportStart(Session started) =>
      _onSessionStarted?.call(started) ?? Future<void>.value();

  /// Reports a boundary that nothing can await, logging anything that escapes
  /// the callback's own handling.
  void _fireAndLog(Future<void> reported, String failureMessage) {
    unawaited(
      reported.onError<Object>((e, st) => _logger.error(failureMessage, e, st)),
    );
  }

  void _onTimeoutExpired() {
    // Only the pause this timer was armed for may end a session. A timer that
    // outlived its pause — cancelled late, or fired after the resume already
    // handled the timeout — must not end the session that came after it.
    if (_state != SessionState.paused) return;
    // The session went inactive when the app was backgrounded, not when the
    // timeout elapsed, so the stop belongs at the pause. This is the same
    // attribution the resume path makes, and matches the Swift client.
    final ended = _endCurrent(at: _pausedAt);
    if (ended == null) return;
    // A timer has no caller, so nothing can await this.
    _fireAndLog(ended, 'Failed to report the end of a session that timed out');
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
    final now = clock.now().toUtc();
    final date =
        '${now.year}${_pad(now.month)}${_pad(now.day)}'
        '-${_pad(now.hour)}${_pad(now.minute)}${_pad(now.second)}'
        '${now.millisecond.toString().padLeft(3, '0')}';
    return '$prefix-$uniqueId-$date';
  }

  static String _pad(int n) => n.toString().padLeft(2, '0');
}
