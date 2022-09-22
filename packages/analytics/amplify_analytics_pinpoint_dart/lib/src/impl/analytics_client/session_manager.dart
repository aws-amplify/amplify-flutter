import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:intl/intl.dart';

import '../../sdk/pinpoint.dart';
import 'key_value_store.dart';

const String sessionStartEventType = '_session.start';
const String sessionStopEventType = '_session.stop';

// Note: Android allows manual session pause/resume.  But this is only possible via escapeHatch

enum SessionState { inactive, active, paused }

typedef SessionFunc = Function(SessionBuilder);

// TODO instructions if no session provider is given?

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

    //  Android retrieves a serialized session JSON here ... but doesn't make sense as app close is supposed to kill session

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

    // Android doesn't call code path for pause/resume of Session ..
    if (sessionBuilder!.stopTimestamp == null) {
      return SessionState.active;
    } else {
      return SessionState.paused;
    }
  }

  String _generateSessionId() {
    String id = _keyValueStore.getUniqueId();
    id = id.padLeft(_maxIdLength, '_');
    id = id.substring(0, _maxIdLength);

    DateTime date = DateTime.now().toUtc();

    // TODO: confirm locale is set correctly
    DateFormat dateFormat = DateFormat('yyyyMMdd-HHmmss', 'en_US');

    String dateString = dateFormat.format(date) + date.millisecond.toString();

    return id + '-' + dateString;
  }

  void _executeStart() {
    _sessionBuilder = SessionBuilder()
      ..id = _generateSessionId()
      ..startTimestamp = DateTime.now().toIso8601String();

    _onSessionStart(_sessionBuilder!);
  }

  void _executeStop() {
    if (_sessionBuilder == null) return;

    _sessionBuilder!.stopTimestamp = DateTime.now().toIso8601String();

    _onSessionEnd(_sessionBuilder!);

    _sessionBuilder = null;
  }
}
