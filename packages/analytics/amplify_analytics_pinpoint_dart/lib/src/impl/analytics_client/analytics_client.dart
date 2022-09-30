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

import 'dart:async';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/session_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/stoppable_timer.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';

import 'endpoint_client/endpoint_client.dart';
import 'event_client/event_client.dart';
import 'event_creator/event_creator.dart';
import 'key_value_store.dart';

/// Top level client for executing all behaviors of the Analytics Plugin
/// by managing behaviors and inter dependencies of sub clients and helper classes
class AnalyticsClient {
  late final SessionManager _sessionManager;

  late final EventClient _eventClient;

  late final StoppableTimer _autoEventSubmitter;

  late final EventCreator _eventCreator;

  late final EndpointClient _endpointClient;

  /// Use parameters to initialize sub clients and helper classes
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
    _autoEventSubmitter = StoppableTimer(
      const Duration(seconds: 10),
      (Timer t) => flushEvents(),
    );

    _eventClient = EventClient(
        appId, keyValueStore, _endpointClient, pinpointClient, pathProvider);

    // Initialize session manager
    // And define auto session start/end Events to be sent on session start/end events
    _sessionManager = SessionManager(
      keyValueStore,
      appLifecycleProvider,
      onSessionEnd: (sb) {
        _eventClient.recordEvent(
          _eventCreator.createPinpointEvent(sessionStopEventType, sb),
        );
        _eventClient.flushEvents();
      },
      onSessionStart: (sb) async {
        await _endpointClient.updateEndpoint();
        _eventClient.recordEvent(
          _eventCreator.createPinpointEvent(sessionStartEventType, sb),
        );
      },
    );
  }

  Future<void> flushEvents() async {
    await _eventClient.flushEvents();
  }

  /// Create a [Event] object from [AnalyticsEvent] received from the public API
  /// Received events are NEVER sent immediately but cached to be sent in a batch
  void recordEvent(AnalyticsEvent analyticsEvent) {
    Event pinpointEvent = _eventCreator.createPinpointEvent(
        analyticsEvent.name, _sessionManager.sessionBuilder, analyticsEvent);
    _eventClient.recordEvent(pinpointEvent);
  }

  void enable() {
    _autoEventSubmitter.start();
    _sessionManager.startSessionTracking();
  }

  /// Disable stops auto event sent and session tracking
  void disable() {
    _autoEventSubmitter.stop();
    _sessionManager.stopSessionTracking();
  }

  Future<void> registerGlobalProperties(
    AnalyticsProperties globalProperties,
  ) =>
      _eventCreator.registerGlobalProperties(globalProperties);

  Future<void> unregisterGlobalProperties(
    List<String> propertyNames,
  ) =>
      _eventCreator.unregisterGlobalProperties(propertyNames);

  Future<void> identifyUser(
    String userId,
    AnalyticsUserProfile userProfile,
  ) async {
    await _endpointClient.setUser(userId, userProfile);
  }
}
