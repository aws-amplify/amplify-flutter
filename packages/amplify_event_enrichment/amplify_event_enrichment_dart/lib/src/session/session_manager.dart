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

  /// Current session state.
  SessionState get state => _state;

  /// Current session, or `null` if stopped.
  Session? get session => _session;

  /// Visible for testing — allows injecting a custom timer factory.
  @visibleForTesting
  Timer Function(Duration, void Function()) timerFactory = Timer.new;

  /// Starts a new session. If one is active, stops it first.
  void startSession() {
    if (_state != SessionState.stopped) {
      stopSession();
    }
    _sessionStart = DateTime.now();
    _session = Session(
      id: _generateSessionId(),
      startTimestamp: _sessionStart!.toUtc().toIso8601String(),
    );
    _state = SessionState.active;
  }

  /// Stops the current session, recording stop time and duration.
  void stopSession() {
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

  /// Called when the app moves to background.
  void handleAppPaused() {
    if (_state != SessionState.active) return;
    _state = SessionState.paused;
    _pauseTimer = timerFactory(_sessionTimeout, _onTimeoutExpired);
  }

  /// Called when the app returns to foreground.
  void handleAppResumed() {
    switch (_state) {
      case SessionState.paused:
        _cancelTimer();
        _state = SessionState.active;
      case SessionState.stopped:
        startSession();
      case SessionState.active:
        break;
    }
  }

  void _onTimeoutExpired() {
    stopSession();
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
