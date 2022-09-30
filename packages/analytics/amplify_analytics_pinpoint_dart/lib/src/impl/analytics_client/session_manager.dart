// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:intl/intl.dart';

import 'key_value_store.dart';

const String sessionStartEventType = '_session.start';
const String sessionStopEventType = '_session.stop';

enum SessionState { inactive, active, paused }

typedef SessionFunc = Function(SessionBuilder);

/// Manage creation and deletion of Session objects
/// Based on App foreground/background events
/// Events sent to Pinpoint must have an attached Session object
class SessionManager {
  final _maxIdLength = 8;

  SessionFunc _onSessionStart;
  SessionFunc _onSessionEnd;

  SessionBuilder? _sessionBuilder;
  SessionBuilder? get sessionBuilder => _sessionBuilder;

  final AppLifecycleProvider? _lifecycleObserver;

  final KeyValueStore _keyValueStore;

  int startTimeMilliseconds = DateTime.now().millisecondsSinceEpoch;

  /// [onSessionStart] [onSessionEnd] are callbacks to
  /// allow parent classes to react to session events
  SessionManager(
    this._keyValueStore,
    this._lifecycleObserver, {
    required SessionFunc onSessionStart,
    required SessionFunc onSessionEnd,
  })  : _onSessionStart = onSessionStart,
        _onSessionEnd = onSessionEnd {
    // Start session by _executeStart()
    // By the time we start observing on lifecycleObserver,
    // we have missed the first onForeground event
    _executeStart();

    _lifecycleObserver?.setOnForegroundListener(startSession);
    _lifecycleObserver?.setOnBackgroundListener(stopSession);
    _lifecycleObserver?.startObserving();
  }

  void startSession() {
    _executeStop();
    _executeStart();
  }

  void stopSession() {
    _executeStop();
  }

  void startSessionTracking() {
    _lifecycleObserver?.startObserving();
  }

  void stopSessionTracking() {
    _lifecycleObserver?.stopObserving();
  }

  SessionState getSessionState() {
    if (_sessionBuilder == null) return SessionState.inactive;

    return SessionState.active;
  }

  String _generateSessionId() {
    String id = _keyValueStore.getFixedEndpointId();
    id = id.padLeft(_maxIdLength, '_');
    id = id.substring(0, _maxIdLength);

    DateTime date = DateTime.now().toUtc();

    DateFormat dateFormat = DateFormat('yyyyMMdd-HHmmssSSS', 'en_US');

    String dateString = dateFormat.format(date) + date.millisecond.toString();

    return id + '-' + dateString;
  }

  void _executeStart() {
    final curTime = DateTime.now();

    _sessionBuilder = SessionBuilder()
      ..id = _generateSessionId()
      ..startTimestamp = curTime.toUtc().toIso8601String();

    startTimeMilliseconds = curTime.millisecondsSinceEpoch;

    _onSessionStart(_sessionBuilder!);
  }

  void _executeStop() {
    if (_sessionBuilder == null) {
      safePrint(
          'Warning - stop session called without sessionBuilder initialized');
      return;
    }

    final curTime = DateTime.now();

    _sessionBuilder!.stopTimestamp = curTime.toUtc().toIso8601String();

    _sessionBuilder!.duration =
        curTime.millisecondsSinceEpoch - startTimeMilliseconds;

    _onSessionEnd(_sessionBuilder!);

    // Delete the session
    _sessionBuilder = null;
  }
}
