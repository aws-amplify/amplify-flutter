import 'dart:async';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/session_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/shared_prefs.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/stoppable_timer.dart';
import 'package:amplify_core/amplify_core.dart';

import '../../sdk/pinpoint.dart';

import 'endpoint_client/endpoint_client.dart';
import 'event_client/event_client.dart';
import 'event_creator/event_creator.dart';

class AnalyticsClient {
  // Should be managed by SessionTracker
  late final SessionManager _sessionManager; // = SessionManager();

  late final EventClient _eventManager;

  late final StoppableTimer _autoEventSubmitter;

  late final EventCreator _eventClient;

  late final EndpointClient _endpointClient;

  Future<void> configure(
      String appId,
      SharedPrefs sharedPrefs,
      PinpointClient pinpointClient,
      AppLifecycleProvider? appLifecycleProvider,
      DeviceContextInfoProvider? deviceInfoProvider) async {
    _eventClient =
        await EventCreator.getInstance(sharedPrefs, deviceInfoProvider);

    _endpointClient = await EndpointClient.getInstance(
        appId, sharedPrefs, pinpointClient, deviceInfoProvider);

    /// TODO - clarify - what is behavior on app refresh / hot reload?
    _autoEventSubmitter =
        StoppableTimer(const Duration(seconds: 10), (Timer t) => flushEvents);

    _eventManager =
        EventClient(appId, sharedPrefs, _endpointClient, pinpointClient);

    _sessionManager =
        SessionManager(sharedPrefs, appLifecycleProvider, onSessionEnd: (sb) {
      _eventManager.recordEvent(
          _eventClient.createPinpointEvent(sessionStopEventType, sb));
      _eventManager.flushEvents();
    }, onSessionStart: (sb) async {
      await _endpointClient.updateEndpoint();
      _eventManager.recordEvent(
          _eventClient.createPinpointEvent(sessionStartEventType, sb));
    });
  }

  Future<void> flushEvents() async {
    await _eventManager.flushEvents();
  }

  void recordEvent(AnalyticsEvent analyticsEvent) {
    Event pinpointEvent = _eventClient.createPinpointEvent(
        analyticsEvent.name, _sessionManager.sessionBuilder, analyticsEvent);
    _eventManager.recordEvent(pinpointEvent);
  }

  void enable() {
    _autoEventSubmitter.start();
    _sessionManager.startSessionTracking();
  }

  void disable() {
    _autoEventSubmitter.stop();
    _sessionManager.stopSessionTracking();
  }

  Future<void> registerGlobalProperties(
    AnalyticsProperties globalProperties,
  ) =>
      _eventClient.registerGlobalProperties(globalProperties);

  Future<void> unregisterGlobalProperties(List<String> propertyNames) =>
      _eventClient.unregisterGlobalProperties(propertyNames);

  Future<void> identifyUser(
    String userId,
    AnalyticsUserProfile userProfile,
  ) async {
    await _endpointClient.setUser(userId, userProfile);
  }
}
