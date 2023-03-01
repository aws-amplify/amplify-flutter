// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/event_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/dart_queued_item_store.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/session_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/stoppable_timer.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// The Analytics Pinpoint session start event type.
@visibleForTesting
const zSessionStartEventType = '_session.start';

/// The Analytics Pinpoint session stop event type.
@visibleForTesting
const zSessionStopEventType = '_session.stop';

/// {@template amplify_analytics_pinpoint_dart.amplify_analytics_pinpoint_dart}
/// The AWS Pinpoint Dart implementation of the Amplify Analytics category.
///
/// - Validates and parses inputs.
/// - Receives and provides external Flutter Provider implementations.
/// {@endtemplate}
class AmplifyAnalyticsPinpointDart extends AnalyticsPluginInterface {
  /// {@macro amplify_analytics_pinpoint_dart.amplify_analytics_pinpoint_dart}
  AmplifyAnalyticsPinpointDart({
    CachedEventsPathProvider? pathProvider,
    AppLifecycleProvider? appLifecycleProvider,
    AnalyticsClient? analyticsClient,
  })  : _appLifecycleProvider = appLifecycleProvider,
        _pathProvider = pathProvider,
        _analyticsClient = analyticsClient ?? AnalyticsClient();

  void _ensureConfigured() {
    if (!_isConfigured) {
      throw const AnalyticsException(
        'Analytics not configured',
        recoverySuggestion:
            'Please make sure to call: await Amplify.configure(amplifyconfig)',
      );
    }
  }

  var _isConfigured = false;
  var _analyticsEnabled = false;

  late final EndpointClient _endpointClient;
  late final EventClient _eventClient;
  late final SessionManager _sessionManager;
  late final StoppableTimer _autoEventSubmitter;

  /// External Flutter Provider implementations
  final AppLifecycleProvider? _appLifecycleProvider;
  final AnalyticsClient _analyticsClient;
  final CachedEventsPathProvider? _pathProvider;

  static final _logger = AmplifyLogger.category(Category.analytics);

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    // Parse config values from amplifyconfiguration.json
    if (config == null ||
        config.analytics == null ||
        config.analytics?.awsPlugin == null) {
      throw const AnalyticsException('No Pinpoint plugin config available');
    }

    final pinpointConfig = config.analytics!.awsPlugin!;
    final pinpointAppId = pinpointConfig.pinpointAnalytics.appId;
    final region = pinpointConfig.pinpointAnalytics.region;

    // Prepare PinpointClient
    final authProvider = authProviderRepo
        .getAuthProvider(APIAuthorizationType.iam.authProviderToken);

    if (authProvider == null) {
      throw const AnalyticsException(
        'No AWSIamAmplifyAuthProvider available. Is Auth category added and configured?',
      );
    }

    final eventStoragePath = await _pathProvider?.getApplicationSupportPath();
    final eventStore = DartQueuedItemStore(eventStoragePath);

    await _analyticsClient.init(
      pinpointAppId: pinpointAppId,
      region: region,
      authProvider: authProvider,
      eventStore: eventStore,
    );

    _endpointClient = _analyticsClient.endpointClient;
    _eventClient = _analyticsClient.eventClient;

    unawaited(
      Amplify.asyncConfig.then((_) {
        _endpointClient.updateEndpoint();
      }),
    );

    _sessionManager = SessionManager(
      fixedEndpointId: _endpointClient.fixedEndpointId,
      appLifecycleProvider: _appLifecycleProvider,
      onSessionStart: (session) async {
        _logger.debug('Session started');
        if (!_analyticsEnabled) return;
        await _eventClient.recordEvent(
          eventType: zSessionStartEventType,
          session: session,
        );
        await _eventClient.flushEvents();
      },
      onSessionEnd: (session) async {
        _logger.debug('Session ended');
        if (!_analyticsEnabled) return;
        await _eventClient.recordEvent(
          eventType: zSessionStopEventType,
          session: session,
        );
        await _eventClient.flushEvents();
      },
    );

    _autoEventSubmitter = StoppableTimer(
      duration: const Duration(seconds: 10),
      callback: flushEvents,
      onError: (e) => _logger.warn('Exception in events auto flush', e),
    );

    _isConfigured = true;
    await enable();
    _sessionManager.startSession();
  }

  @override
  Future<void> enable() async {
    _ensureConfigured();
    _logger.debug('Enabling analytics');
    if (_analyticsEnabled) {
      return;
    }
    _analyticsEnabled = true;
    _autoEventSubmitter.start();
    _sessionManager.startSessionTracking();
  }

  @override
  Future<void> disable() async {
    _ensureConfigured();
    _logger.debug('Disabling analytics');
    if (!_analyticsEnabled) {
      return;
    }
    _analyticsEnabled = false;
    _autoEventSubmitter.stop();
    _sessionManager.stopSessionTracking();
  }

  @override
  Future<void> flushEvents() async {
    _ensureConfigured();
    await _eventClient.flushEvents();
  }

  @override
  Future<void> recordEvent({
    required AnalyticsEvent event,
  }) async {
    _ensureConfigured();
    await _eventClient.recordEvent(
      eventType: event.name,
      session: _sessionManager.session,
      properties: event.properties,
    );
  }

  @override
  Future<void> registerGlobalProperties({
    required AnalyticsProperties globalProperties,
  }) async {
    _ensureConfigured();
    _eventClient.registerGlobalProperties(globalProperties);
  }

  @override
  Future<void> unregisterGlobalProperties({
    List<String> propertyNames = const <String>[],
  }) async {
    _ensureConfigured();
    _eventClient.unregisterGlobalProperties(propertyNames);
  }

  @override
  Future<void> identifyUser({
    required String userId,
    required AnalyticsUserProfile userProfile,
  }) async {
    _ensureConfigured();
    await _endpointClient.setUser(userId, userProfile);
    await _endpointClient.updateEndpoint();
  }

  @override
  Future<void> reset() async {
    if (!_isConfigured) {
      return;
    }
    _isConfigured = false;
    _autoEventSubmitter.stop();
    await _eventClient.close();
  }
}
