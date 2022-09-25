import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:intl/intl.dart';

import '../../sdk/pinpoint.dart';
import 'key_value_store.dart';

const String sessionStartEventType = '_session.start';
const String sessionStopEventType = '_session.stop';

enum SessionState { inactive, active, paused }

typedef SessionFunc = Function(SessionBuilder);

/// Manage Session object
class SessionManager {
  final _maxIdLength = 8;
  final String _noSessionId = '00000000-00000000';

  late SessionFunc _onSessionStart;
  late SessionFunc _onSessionEnd;

  SessionBuilder? _sessionBuilder;
  SessionBuilder? get sessionBuilder => _sessionBuilder;

  final AppLifecycleProvider? _lifecycleObserver;

  final KeyValueStore _keyValueStore;

  SessionManager(this._keyValueStore, this._lifecycleObserver,
      {required SessionFunc onSessionStart,
      required SessionFunc onSessionEnd}) {
    _onSessionStart = onSessionStart;
    _onSessionEnd = onSessionEnd;

    _sessionBuilder = SessionBuilder()
      ..id = _noSessionId
      ..startTimestamp = DateTime(0).toIso8601String();

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
    _sessionBuilder = SessionBuilder()
      ..id = _generateSessionId()
      ..startTimestamp = DateTime.now().toUtc().toIso8601String();

    _onSessionStart(_sessionBuilder!);
  }

  void _executeStop() {
    if (_sessionBuilder == null) return;

    _sessionBuilder!.stopTimestamp = DateTime.now().toUtc().toIso8601String();

    _onSessionEnd(_sessionBuilder!);

    _sessionBuilder = null;
  }
}
