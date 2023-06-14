// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/analytics_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/event_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/dart_queued_item_store.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/session_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/stoppable_timer.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/app_lifecycle_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/cached_events_path_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/device_context_info_provider.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/legacy_native_data_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
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
    LegacyNativeDataProvider? legacyNativeDataProvider,
    DeviceContextInfoProvider? deviceContextInfoProvider,
    AppLifecycleProvider? appLifecycleProvider,
    SecureStorageFactory? secureStorageFactory,
  })  : _pathProvider = pathProvider,
        _legacyNativeDataProvider = legacyNativeDataProvider,
        _deviceContextInfoProvider = deviceContextInfoProvider,
        _appLifecycleProvider = appLifecycleProvider,
        _secureStorageFactory =
            secureStorageFactory ?? AmplifySecureStorageWorker.factoryFrom();

  void _ensureConfigured() {
    if (!_isConfigured) {
      throw ConfigurationError(
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

  /// Autoflush timer for cached analytics events.
  @visibleForTesting
  late final StoppableTimer? autoEventSubmitter;

  /// External Flutter Provider implementations
  final AppLifecycleProvider? _appLifecycleProvider;
  final CachedEventsPathProvider? _pathProvider;
  final SecureStorageFactory _secureStorageFactory;
  final DeviceContextInfoProvider? _deviceContextInfoProvider;
  final LegacyNativeDataProvider? _legacyNativeDataProvider;

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
      throw ConfigurationError('No Pinpoint plugin config available.');
    }

    final pinpointConfig = config.analytics!.awsPlugin!;
    final pinpointAppId = pinpointConfig.pinpointAnalytics.appId;
    final region = pinpointConfig.pinpointAnalytics.region;

    // Prepare PinpointClient
    final authProvider = authProviderRepo
        .getAuthProvider(APIAuthorizationType.iam.authProviderToken);

    if (authProvider == null) {
      throw ConfigurationError(
        'No credential provider found for Analytics.',
        recoverySuggestion:
            "If you haven't already, please add amplify_auth_cognito plugin to your App.",
      );
    }

    final eventStoragePath = await _pathProvider?.getApplicationSupportPath();
    final eventStore = DartQueuedItemStore(eventStoragePath);

    final endpointStorage = _secureStorageFactory(
      AmplifySecureStorageScope.awsPinpointAnalyticsPlugin,
    );

    final analyticsClient = dependencies.get<AnalyticsClient>() ??
        AnalyticsClient(
          endpointStorage: endpointStorage,
          deviceContextInfoProvider: _deviceContextInfoProvider,
          legacyNativeDataProvider: _legacyNativeDataProvider,
        );

    await analyticsClient.init(
      pinpointAppId: pinpointAppId,
      region: region,
      authProvider: authProvider,
      eventStore: eventStore,
    );

    _endpointClient = analyticsClient.endpointClient;
    _eventClient = analyticsClient.eventClient;

    await _endpointClient.updateEndpoint();

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

    final autoFlushEventsInterval = pinpointConfig.autoFlushEventsInterval;

    if (autoFlushEventsInterval.isNegative) {
      throw ConfigurationError(
        'The autoFlushEventsInterval field in your Amplify configuration must be a positive integer or 0 to disable auto-flushing.',
      );
    }

    /// Setting autoFlushEventsInterval to 0 disables autoflush.
    if (autoFlushEventsInterval.inSeconds > 0) {
      autoEventSubmitter = StoppableTimer(
        duration: autoFlushEventsInterval,
        callback: flushEvents,
        onError: (e) => _logger.warn('Exception in events auto flush', e),
      );
    } else {
      autoEventSubmitter = null;
    }

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
    autoEventSubmitter?.start();
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
    autoEventSubmitter?.stop();
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
      properties: event.customProperties,
    );
  }

  @override
  Future<void> registerGlobalProperties({
    required CustomProperties globalProperties,
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
    required UserProfile userProfile,
  }) async {
    _ensureConfigured();
    await _endpointClient.setUser(userId, userProfile);
    await _endpointClient.updateEndpoint();
  }

  @override
  Future<void> reset() async {
    await super.reset();

    if (!_isConfigured) {
      return;
    }
    _isConfigured = false;
    autoEventSubmitter?.stop();
    await _eventClient.close();
  }
}
