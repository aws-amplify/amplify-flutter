import 'dart:async';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/session_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/stoppable_timer.dart';
import 'package:amplify_core/amplify_core.dart';

import '../../sdk/pinpoint.dart';

import 'endpoint_client/endpoint_client.dart';
import 'event_client/event_client.dart';
import 'event_creator/event_creator.dart';
import 'key_value_store.dart';

class AnalyticsClient {
  // Should be managed by SessionTracker
  late final SessionManager _sessionManager; // = SessionManager();

  late final EventClient _eventClient;

  late final StoppableTimer _autoEventSubmitter;

  late final EventCreator _eventCreator;

  late final EndpointClient _endpointClient;

  Future<void> configure(
      String appId,
      KeyValueStore keyValueStore,
      PinpointClient pinpointClient,
      CachedEventsPathProvider? pathProvider,
      AppLifecycleProvider? appLifecycleProvider,
      DeviceContextInfo? deviceContextInfo) async {
    _eventCreator =
        await EventCreator.getInstance(keyValueStore, deviceContextInfo);

    _endpointClient = await EndpointClient.getInstance(
        appId, keyValueStore, pinpointClient, deviceContextInfo);

    /// TODO - clarify - what is behavior on app refresh / hot reload?
    _autoEventSubmitter =
        StoppableTimer(const Duration(seconds: 10), (Timer t) {
      safePrint('StoppableTimer - beginning flushEvents');
      flushEvents();
      safePrint('StoppableTimer - finished flushEvents');
    });

    _eventClient = EventClient(
        appId, keyValueStore, _endpointClient, pinpointClient, pathProvider);

    _sessionManager =
        SessionManager(keyValueStore, appLifecycleProvider, onSessionEnd: (sb) {
      _eventClient.recordEvent(
          _eventCreator.createPinpointEvent(sessionStopEventType, sb));
      _eventClient.flushEvents();
    }, onSessionStart: (sb) async {
      await _endpointClient.updateEndpoint();
      _eventClient.recordEvent(
          _eventCreator.createPinpointEvent(sessionStartEventType, sb));
    });
  }

  Future<void> flushEvents() async {
    await _eventClient.flushEvents();
  }

  void recordEvent(AnalyticsEvent analyticsEvent) {
    Event pinpointEvent = _eventCreator.createPinpointEvent(
        analyticsEvent.name, _sessionManager.sessionBuilder, analyticsEvent);
    _eventClient.recordEvent(pinpointEvent);
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
      _eventCreator.registerGlobalProperties(globalProperties);

  Future<void> unregisterGlobalProperties(List<String> propertyNames) =>
      _eventCreator.unregisterGlobalProperties(propertyNames);

  Future<void> identifyUser(
    String userId,
    AnalyticsUserProfile userProfile,
  ) async {
    await _endpointClient.setUser(userId, userProfile);
  }
}
