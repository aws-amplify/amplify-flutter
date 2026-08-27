// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_event_enrichment_dart/src/session/session.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:clock/clock.dart';
import 'package:meta/meta.dart';

/// Called once per session when it starts. Implementations must not throw.
typedef OnSessionStarted = Future<void> Function(Session session);

/// Called once per session when it ends, with stop timestamp and duration
/// recorded on the [Session]. Implementations must not throw.
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
/// Backgrounding the app pauses the session; returning within the configured
/// timeout resumes it, and returning later starts a new one. Boundaries are
/// reported to the [OnSessionStarted] and [OnSessionEnded] callbacks.
/// {@endtemplate}
class SessionManager {
  /// {@macro amplify_event_enrichment.session_manager}
  ///
  /// [generateId] must return at least 8 characters, typically a UUID v4.
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
  bool _backgrounded = false;
  bool _stoppedExplicitly = false;

  /// Current session state.
  SessionState get state => _state;

  /// Current session, or `null` if none has started yet or [clearSession]
  /// dropped it.
  Session? get session => _session;

  /// Timer factory, injectable for tests.
  @visibleForTesting
  Timer Function(Duration, void Function()) timerFactory = Timer.new;

  /// Starts a new session, ending any session already running. The returned
  /// future completes once the boundary has been reported, end before start.
  Future<void> startSession() => _restart();

  /// Returns the session an event recorded now belongs to, starting a fresh
  /// one when there is none or the current pause has outlasted the timeout.
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

  /// Stops the current session and reports it to [OnSessionEnded].
  /// [handleAppResumed] will not start a new session afterwards.
  Future<void> stopSession() {
    final ended = _endCurrent();
    _stoppedExplicitly = true;
    return ended ?? Future<void>.value();
  }

  /// Drops the current session without recording or reporting a stop. Used
  /// when disposing the client.
  void clearSession() {
    _cancelTimer();
    _session = null;
    _sessionStart = null;
    _pausedAt = null;
    _state = SessionState.stopped;
    _stoppedExplicitly = true;
  }

  /// Called when the app moves to background. Stamps the pause and arms the
  /// timeout timer; the timestamp, not the timer, is authoritative, since iOS
  /// can suspend timers while backgrounded.
  void handleAppPaused() {
    _backgrounded = true;
    if (_state != SessionState.active) return;
    _pauseCurrent();
  }

  /// Called when the app returns to foreground. Resumes a pause shorter than
  /// the timeout, replaces the session after a longer one, and does nothing
  /// after an explicit stop.
  void handleAppResumed() {
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

  bool get _pauseExpired {
    final pausedAt = _pausedAt;
    return pausedAt != null &&
        clock.now().difference(pausedAt) >= _sessionTimeout;
  }

  void _pauseCurrent() {
    _state = SessionState.paused;
    _pausedAt = clock.now();
    _pauseTimer = timerFactory(_sessionTimeout, _onTimeoutExpired);
  }

  Future<void> _restart() {
    final ended = _endCurrent();
    final started = _startFresh();
    if (ended == null) return _reportStart(started);
    return ended.then((_) => _reportStart(started));
  }

  // A paused session's stop is stamped at the pause, so no end path counts
  // background time. Returns null when there was nothing to end.
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

  Session _startFresh() {
    _stoppedExplicitly = false;
    _sessionStart = clock.now();
    final started = Session(
      id: _generateSessionId(),
      startTimestamp: _sessionStart!.toUtc().toIso8601String(),
    );
    _session = started;
    _state = SessionState.active;
    // A session started while backgrounded pauses immediately so it can still
    // time out.
    if (_backgrounded) _pauseCurrent();
    return started;
  }

  Future<void> _reportStart(Session started) =>
      _onSessionStarted?.call(started) ?? Future<void>.value();

  void _fireAndLog(Future<void> reported, String failureMessage) {
    unawaited(
      reported.onError<Object>((e, st) => _logger.error(failureMessage, e, st)),
    );
  }

  void _onTimeoutExpired() {
    // A timer that outlived its pause must not end the session after it.
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
