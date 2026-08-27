// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_event_enrichment_dart/src/session/session.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:clock/clock.dart';
import 'package:meta/meta.dart';

/// {@template amplify_event_enrichment.on_session_started}
/// Called once per session when it starts, after [OnSessionEnded] has
/// completed for any session it displaced.
///
/// Implementations must not throw: some start paths are lifecycle transitions
/// with no caller to hand a failure back to.
/// {@endtemplate}
typedef OnSessionStarted = Future<void> Function(Session session);

/// {@template amplify_event_enrichment.on_session_ended}
/// Called once per session when it ends, with its stop timestamp and duration
/// already recorded on the [Session] passed in.
///
/// Implementations must not throw: some end paths are lifecycle transitions
/// with no caller to hand a failure back to.
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
/// one. An explicit [stopSession] or [clearSession] means tracking was ended
/// on purpose, so [handleAppResumed] leaves it ended.
///
/// Session boundaries are reported to the [OnSessionStarted] and
/// [OnSessionEnded] callbacks supplied at construction. The manager knows
/// nothing about senders or events.
/// {@endtemplate}
class SessionManager {
  /// {@macro amplify_event_enrichment.session_manager}
  ///
  /// [generateId] must return at least 8 characters (a UUID v4 is the expected
  /// source): session ids take the first 8 as their unique segment.
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
  /// Tracked separately from [SessionState] so a session started while
  /// backgrounded starts paused with its timeout armed, rather than active and
  /// unable to time out.
  bool _backgrounded = false;

  /// Whether the stopped state was reached by [stopSession] or [clearSession]
  /// rather than by the timeout. A timeout is something the app comes back
  /// from; an explicit stop is the customer ending tracking.
  bool _stoppedExplicitly = false;

  /// Current session state.
  SessionState get state => _state;

  /// Current session, or `null` if none has started yet or [clearSession]
  /// dropped it. A stopped session stays readable here with its stop metadata.
  Session? get session => _session;

  /// Visible for testing — allows injecting a custom timer factory.
  @visibleForTesting
  Timer Function(Duration, void Function()) timerFactory = Timer.new;

  /// Starts a new session, ending any session already running and clearing the
  /// explicit-stop flag.
  ///
  /// State changes apply synchronously; the returned future completes once the
  /// boundary has been reported, end before start. While the app is
  /// backgrounded the new session starts [SessionState.paused] with its
  /// timeout armed.
  Future<void> startSession() => _restart();

  /// The session an event recorded now belongs to: the current one, or a fresh
  /// one when there is none or the current pause has outlasted the timeout.
  ///
  /// Consults the same expiry decision as [handleAppResumed], so an event is
  /// never stamped with a session that logically ended before the app was
  /// backgrounded. Unlike a lifecycle transition, this restarts tracking even
  /// after an explicit [stopSession].
  ///
  /// The returned future completes once any boundary this caused has been
  /// reported.
  Future<Session> sessionForRecording() {
    if (_state == SessionState.paused) {
      if (!_pauseExpired) return Future.value(_session!);
      return _restart().then((_) => _session!);
    }
    if (_state == SessionState.stopped || _session == null) {
      return _restart().then((_) => _session!);
    }
    return Future.value(_session!);
  }

  /// Stops the current session, recording stop metadata and reporting it to
  /// [OnSessionEnded]. Safe to call more than once.
  ///
  /// This is an explicit end to tracking: [handleAppResumed] will not start a
  /// new session afterwards. [startSession], or recording an event, begins
  /// tracking again.
  Future<void> stopSession() {
    final ended = _endCurrent();
    _stoppedExplicitly = true;
    return ended ?? Future<void>.value();
  }

  /// Drops the current session without recording stop metadata or reporting
  /// anything. Used when disposing the client, after the session has already
  /// been ended and reported. Like [stopSession], an explicit end to tracking.
  void clearSession() {
    _cancelTimer();
    _session = null;
    _sessionStart = null;
    _pausedAt = null;
    _state = SessionState.stopped;
    _stoppedExplicitly = true;
  }

  /// Called when the app moves to background: stamps the pause and arms the
  /// timeout timer.
  ///
  /// The timestamp, not the timer, is authoritative — iOS suspends the Dart
  /// event loop while backgrounded, so the timer can fire late or not at all.
  void handleAppPaused() {
    // Recorded even with no session, so one started while backgrounded knows
    // to start paused.
    _backgrounded = true;
    if (_state != SessionState.active) return;
    _pauseCurrent();
  }

  /// Called when the app returns to foreground.
  ///
  /// Resumes a pause shorter than the timeout; a longer one ends the session
  /// as of the pause and starts a new one, even if the timer never ran. Does
  /// nothing after an explicit stop. A restart has no caller to await it, so a
  /// failure surfaces only in the log.
  void handleAppResumed() {
    // Cleared first so a session started below is active, not paused.
    _backgrounded = false;
    switch (_state) {
      case SessionState.paused:
        if (!_pauseExpired) {
          _cancelTimer();
          _pausedAt = null;
          _state = SessionState.active;
          return;
        }
        _fireAndLog(
          _restart(),
          'Failed to report a session boundary after a background timeout',
        );
      case SessionState.stopped:
        if (_stoppedExplicitly) return;
        _fireAndLog(
          _reportStart(_startFresh()),
          'Failed to report the start of a session',
        );
      case SessionState.active:
        break;
    }
  }

  /// Whether the current pause has outlasted the session timeout.
  ///
  /// The only place expiry is measured. Every path that can end a paused
  /// session consults it, so no two can disagree.
  bool get _pauseExpired {
    final pausedAt = _pausedAt;
    return pausedAt != null &&
        clock.now().difference(pausedAt) >= _sessionTimeout;
  }

  /// Moves the running session to [SessionState.paused], stamping the pause
  /// and arming the timeout.
  void _pauseCurrent() {
    _state = SessionState.paused;
    _pausedAt = clock.now();
    _pauseTimer = timerFactory(_sessionTimeout, _onTimeoutExpired);
  }

  /// Ends any running session and starts a fresh one, reporting the end before
  /// the start.
  Future<void> _restart() {
    final ended = _endCurrent();
    final started = _startFresh();
    if (ended == null) return _reportStart(started);
    return ended.then((_) => _reportStart(started));
  }

  /// Records stop metadata on the current session, moves it to
  /// [SessionState.stopped], and reports it to [OnSessionEnded].
  ///
  /// Returns `null` when there was no session to end, which is what keeps an
  /// end from being reported twice. A paused session's stop is stamped at the
  /// pause — it went inactive then, so no end path counts background time.
  /// Leaves the explicit-stop flag to [stopSession] and [clearSession].
  Future<void>? _endCurrent() {
    _cancelTimer();
    final pausedAt = _pausedAt;
    _pausedAt = null;
    if (_state == SessionState.stopped || _session == null) return null;
    final stoppedAt = pausedAt ?? clock.now();
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
  /// While the app is backgrounded the session is paused straight away so its
  /// timeout runs from now.
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

  /// Reports a boundary nothing can await, logging anything that escapes the
  /// callback's own handling.
  void _fireAndLog(Future<void> reported, String failureMessage) {
    unawaited(
      reported.onError<Object>((e, st) => _logger.error(failureMessage, e, st)),
    );
  }

  void _onTimeoutExpired() {
    // A timer that outlived its pause must not end the session that came
    // after it.
    if (_state != SessionState.paused) return;
    final ended = _endCurrent();
    if (ended == null) return;
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
