// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/app_lifecycle_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

/// Enum indicating the state of the app session.
enum SessionState {
  /// App is not active (backgrounded).
  inactive,

  /// App is running (foregrounded).
  active,

  /// App is paused.
  paused,
}

/// Function that listens to Session lifecycle updates.
typedef OnSessionUpdated = void Function(Session);

/// {@template amplify_analytics_pinpoint_dart.session_manager}
/// Manage creation and deletion of current Session.
///
/// Updates session based on App foreground/background events.
/// Used for provisioning Events sent to Pinpoint with a Session.
/// {@endtemplate}
class SessionManager {
  /// {@template amplify_analytics_pinpoint_dart.session_manager_constructor}
  /// {@macro amplify_analytics_pinpoint_dart.session_manager}
  ///
  /// The parameters: [onSessionStart] and [onSessionEnd] are callbacks to
  /// allow parent classes to react to session events.
  /// {@endtemplate}
  SessionManager({
    required String fixedEndpointId,
    AppLifecycleProvider? appLifecycleProvider,
    required OnSessionUpdated onSessionStart,
    required OnSessionUpdated onSessionEnd,
  }) : _fixedEndpointId = fixedEndpointId,
       _appLifecycleProvider = appLifecycleProvider,
       _onSessionStart = onSessionStart,
       _onSessionEnd = onSessionEnd {
    _appLifecycleProvider?.setOnForegroundListener(startSession);
    _appLifecycleProvider?.setOnBackgroundListener(stopSession);
  }

  final String _fixedEndpointId;
  final AppLifecycleProvider? _appLifecycleProvider;
  final OnSessionUpdated _onSessionStart;
  final OnSessionUpdated _onSessionEnd;

  _SessionCreator? _sessionCreator;

  /// Get the current session.
  Session? get session => _sessionCreator?.session;

  /// Start a new session.
  void startSession() {
    if (session != null) {
      stopSession();
    }
    _executeStart();
  }

  /// Stop the current session.
  void stopSession() {
    _executeStop();
  }

  /// Start auto tracking sessions.
  void startSessionTracking() {
    _appLifecycleProvider?.startObserving();
  }

  /// Stop auto tracking sessions.
  void stopSessionTracking() {
    _appLifecycleProvider?.stopObserving();
  }

  /// Get the current session state.
  SessionState getSessionState() {
    if (_sessionCreator == null) return SessionState.inactive;

    return SessionState.active;
  }

  /// Start a session.
  void _executeStart() {
    _sessionCreator = _SessionCreator.createSession(_fixedEndpointId);
    _onSessionStart(_sessionCreator!.session);
  }

  /// Stop and delete current session.
  void _executeStop() {
    if (_sessionCreator == null) {
      return;
    }

    _sessionCreator!.endSession();
    _onSessionEnd(_sessionCreator!.session);

    // Delete current session
    _sessionCreator = null;
  }
}

class _SessionCreator {
  @visibleForTesting
  const _SessionCreator({
    required int startTimeMilliseconds,
    required SessionBuilder sessionBuilder,
  }) : _startTimeMilliseconds = startTimeMilliseconds,
       _sessionBuilder = sessionBuilder;

  factory _SessionCreator.createSession(String fixedEndpointId) {
    final curTime = DateTime.now();

    final sessionBuilder = SessionBuilder()
      ..id = _generateSessionId(fixedEndpointId)
      ..startTimestamp = curTime.toUtc().toIso8601String();

    final startTimeMilliseconds = curTime.millisecondsSinceEpoch;

    return _SessionCreator(
      startTimeMilliseconds: startTimeMilliseconds,
      sessionBuilder: sessionBuilder,
    );
  }

  final int _startTimeMilliseconds;
  final SessionBuilder _sessionBuilder;

  static const _maxIdLength = 8;

  Session get session => _sessionBuilder.build();

  void endSession() {
    final curTime = DateTime.now();

    _sessionBuilder
      ..stopTimestamp = curTime.toUtc().toIso8601String()
      ..duration = curTime.millisecondsSinceEpoch - _startTimeMilliseconds;
  }

  static String _generateSessionId(String fixedEndpointId) {
    var id = fixedEndpointId;

    if (id.length > _maxIdLength) {
      id = id.substring(0, _maxIdLength);
    } else {
      id = id.padLeft(_maxIdLength, '_');
    }

    final date = DateTime.now().toUtc();

    final dateFormat = DateFormat('yyyyMMdd-HHmmssSSS', 'en_US');

    final dateString = dateFormat.format(date) + date.millisecond.toString();

    return '$id-$dateString';
  }
}
