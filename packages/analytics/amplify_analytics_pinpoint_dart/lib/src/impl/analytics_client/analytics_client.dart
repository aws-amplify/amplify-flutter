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
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/event_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_creator/event_creator.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/session_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/stoppable_timer.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:meta/meta.dart';

/// {@template amplify_analytics_pinpoint_dart.analytics_client}
/// Top level client for executing all behaviors of the Analytics Plugin.
///
/// Manages behaviors and interdependencies of sub clients and helper classes.
/// {@endtemplate}
class AnalyticsClient {
  /// {@macro amplify_analytics_pinpoint_dart.analytics_client}
  @visibleForTesting
  AnalyticsClient(
    this._sessionManager,
    this._eventClient,
    this._eventCreator,
    this._endpointClient,
  ) {
    _autoEventSubmitter = StoppableTimer(
      duration: const Duration(seconds: 10),
      callback: flushEvents,
    );
  }

  static AnalyticsClient? _instance;

  /// {@macro amplify_analytics_pinpoint_dart.analytics_client}
  static Future<AnalyticsClient> getInstance({
    required String appId,
    required SecureStorageInterface keyValueStore,
    required PinpointClient pinpointClient,
    String? driftStoragePath,
    AppLifecycleProvider? appLifecycleProvider,
    DeviceContextInfo? deviceContextInfo,
  }) async {
    if (_instance != null) return _instance!;

    // Initialize EventCreator
    final eventCreator = EventCreator.getInstance(
      deviceContextInfo: deviceContextInfo,
    );

    // Initialize EndpointClient
    final endpointClient = await EndpointClient.getInstance(
      appId,
      keyValueStore,
      pinpointClient,
      deviceContextInfo,
    );

    final fixedEndpointId = endpointClient.fixedEndpointId;

    // Initialize EventClient
    final eventClient = EventClient.getInstance(
      appId: appId,
      fixedEndpointId: fixedEndpointId,
      endpointClient: endpointClient,
      pinpointClient: pinpointClient,
      driftStoragePath: driftStoragePath,
    );

    // Initialize SessionManager
    // Define events sent on session start/end
    final sessionManager = SessionManager.getInstance(
      fixedEndpointId: fixedEndpointId,
      appLifecycleProvider: appLifecycleProvider,
      onSessionEnd: (sb) {
        eventClient
          ..recordEvent(
            eventCreator.createPinpointEvent(_sessionStopEventType, sb),
          )
          ..flushEvents();
      },
      onSessionStart: (sb) async {
        await endpointClient.updateEndpoint();
        await eventClient.recordEvent(
          eventCreator.createPinpointEvent(_sessionStartEventType, sb),
        );
      },
    );

    return _instance = AnalyticsClient(
      sessionManager,
      eventClient,
      eventCreator,
      endpointClient,
    );
  }

  final SessionManager _sessionManager;
  final EventClient _eventClient;
  final EventCreator _eventCreator;
  final EndpointClient _endpointClient;

  static const String _sessionStartEventType = '_session.start';
  static const String _sessionStopEventType = '_session.stop';

  late final StoppableTimer _autoEventSubmitter;

  /// Send all cached events to AWS Pinpoint
  Future<void> flushEvents() async {
    await _eventClient.flushEvents();
  }

  /// Create a Pinpoint [Event] object from the [AnalyticsEvent] received from the public API.
  ///
  /// The public analytics API accepts [AnalyticsEvent]
  /// But the [PinpointClient] can only send [Event]
  /// Received events are NEVER sent immediately but cached to be sent in a batch.
  Future<void> recordEvent(AnalyticsEvent analyticsEvent) async {
    final pinpointEvent = _eventCreator.createPinpointEvent(
      analyticsEvent.name,
      _sessionManager.session,
      analyticsEvent,
    );
    await _eventClient.recordEvent(pinpointEvent);
  }

  /// Resume auto event submission and session tracking
  void enable() {
    _autoEventSubmitter.start();
    _sessionManager.startSessionTracking();
  }

  /// Stops auto event submission and session tracking
  void disable() {
    _autoEventSubmitter.stop();
    _sessionManager.stopSessionTracking();
  }

  /// Register a property that will be sent with all future events
  void registerGlobalProperties(
    AnalyticsProperties globalProperties,
  ) =>
      _eventCreator.registerGlobalProperties(globalProperties);

  /// Unregister a property so it is not sent with all future events
  void unregisterGlobalProperties(
    List<String> propertyNames,
  ) =>
      _eventCreator.unregisterGlobalProperties(propertyNames);

  /// Update Pinpoint Endpoint with User information
  Future<void> identifyUser(
    String userId,
    AnalyticsUserProfile userProfile,
  ) async {
    await _endpointClient.setUser(userId, userProfile);
  }
}
