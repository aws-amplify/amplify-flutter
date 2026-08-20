// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_event_enrichment_dart/src/session/session.dart';
import 'package:meta/meta.dart';

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
/// {@endtemplate}
class SessionManager {
  /// {@macro amplify_event_enrichment.session_manager}
  SessionManager({
    required String appId,
    required Duration sessionTimeout,
    required String Function() generateId,
  }) : _appId = appId,
       _sessionTimeout = sessionTimeout,
       _generateId = generateId;

  final String _appId;
  final Duration _sessionTimeout;
  final String Function() _generateId;

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

  /// Starts a new session. If one is active, stops it first.
  ///
  /// Also clears the explicit-stop flag, so lifecycle transitions resume
  /// managing sessions again after this call.
  void startSession() {
    if (_state != SessionState.stopped) {
      _stop();
    }
    _stoppedExplicitly = false;
    _sessionStart = DateTime.now();
    _session = Session(
      id: _generateSessionId(),
      startTimestamp: _sessionStart!.toUtc().toIso8601String(),
    );
    _state = SessionState.active;
  }

  /// Stops the current session, recording stop time and duration.
  ///
  /// This is an explicit end to tracking: [handleAppResumed] will not start a
  /// new session afterwards. Call [startSession], or record an event on the
  /// client, to begin tracking again.
  void stopSession() {
    _stop();
    _stoppedExplicitly = true;
  }

  /// Clears the current session without recording stop metadata.
  ///
  /// Unlike [stopSession], which records a stop timestamp and duration and
  /// leaves the stopped session readable, this drops the session entirely and
  /// returns the manager to the stopped state. Used when disposing the client
  /// so no stale session remains readable after close.
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
        startSession();
      case SessionState.active:
        break;
    }
  }

  /// Records stop metadata on the current session and moves to the stopped
  /// state, without marking the stop as explicit.
  ///
  /// The timeout path and [startSession]'s implicit stop both go through here
  /// so they stay restartable by [handleAppResumed].
  void _stop() {
    _cancelTimer();
    if (_session == null) return;
    final now = DateTime.now();
    _session = Session(
      id: _session!.id,
      startTimestamp: _session!.startTimestamp,
      stopTimestamp: now.toUtc().toIso8601String(),
      duration: now.difference(_sessionStart!).inMilliseconds,
    );
    _state = SessionState.stopped;
  }

  void _onTimeoutExpired() {
    _stop();
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
