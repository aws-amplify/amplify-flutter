// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_global_fields_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/event_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/event_storage_adapter.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_creator/event_creator.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_creator/event_global_fields_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/session_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/stoppable_timer.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_db_common_dart/amplify_db_common_dart.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

/// The Analytics Pinpoint session start event type.
@visibleForTesting
const zSessionStartEventType = '_session.start';

/// The Analytics Pinpoint session stop event type.
@visibleForTesting
const zSessionStopEventType = '_session.stop';

/// {@template amplify_analytics_pinpoint_dart.amplify_analytics_pinpoint_dart}
/// The AWS Pinpoint Dart implementation of the Amplify Analytics category.
///
/// - Validates and parses inputs
/// - Receives and provides external Flutter Provider implementations
/// {@endtemplate}
class AmplifyAnalyticsPinpointDart extends AnalyticsPluginInterface {
  /// {@macro amplify_analytics_pinpoint_dart.amplify_analytics_pinpoint_dart}
  AmplifyAnalyticsPinpointDart({
    SecureStorageInterface? endpointInfoStore,
    CachedEventsPathProvider? pathProvider,
    AppLifecycleProvider? appLifecycleProvider,
    DeviceContextInfoProvider? deviceContextInfoProvider,
    required Connect dbConnectFunction,
  })  : _endpointInfoStore = endpointInfoStore ??
            AmplifySecureStorageWorker(
              config: AmplifySecureStorageConfig(
                scope: 'analyticsPinpoint',
              ),
            ),
        _pathProvider = pathProvider,
        _appLifecycleProvider = appLifecycleProvider,
        _deviceContextInfoProvider = deviceContextInfoProvider,
        _dbConnectFunction = dbConnectFunction;

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

  /// Storage key for the static Pinpoint endpoint id
  @visibleForTesting
  static const String endpointIdStorageKey = 'UniqueId';
  static const String _endpointGlobalAttrsKey = 'EndpointGlobalAttributesKey';
  static const String _endpointGlobalMetricsKey = 'EndpointGlobalMetricsKey';

  late final EventCreator _eventCreator;
  late final EndpointClient _endpointClient;
  late final EventClient _eventClient;
  late final SessionManager _sessionManager;
  late final EndpointGlobalFieldsManager _endpointGlobalFieldsManager;
  late final EventGlobalFieldsManager _eventGlobalFieldsManager =
      EventGlobalFieldsManager();
  late final EventStorageAdapter _eventStorageAdapter;
  late final StoppableTimer _autoEventSubmitter;

  final SecureStorageInterface _endpointInfoStore;

  /// External Flutter Provider implementations
  final CachedEventsPathProvider? _pathProvider;
  final AppLifecycleProvider? _appLifecycleProvider;
  final DeviceContextInfoProvider? _deviceContextInfoProvider;
  final Connect _dbConnectFunction;

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
    final appId = pinpointConfig.pinpointAnalytics.appId;
    final region = pinpointConfig.pinpointAnalytics.region;

    // Prepare PinpointClient
    final authProvider = authProviderRepo
        .getAuthProvider(APIAuthorizationType.iam.authProviderToken);

    if (authProvider == null) {
      throw const AnalyticsException(
        'No AWSIamAmplifyAuthProvider available. Is Auth category added and configured?',
      );
    }

    final pinpointClient = PinpointClient(
      region: region,
      credentialsProvider: authProvider,
    );

    final deviceContextInfo =
        await _deviceContextInfoProvider?.getDeviceInfoDetails();

    final driftStoragePath = await _pathProvider?.getApplicationSupportPath();
    final driftQueryExecutor = _dbConnectFunction(
      name: 'analytics_cached_events',
      path: driftStoragePath,
    );

    _eventCreator = EventCreator(
      globalFieldsManager: _eventGlobalFieldsManager,
      deviceContextInfo: deviceContextInfo,
    );

    // Retrieve Unique ID
    final savedFixedEndpointId =
        await _endpointInfoStore.read(key: endpointIdStorageKey);
    final fixedEndpointId = savedFixedEndpointId ?? const Uuid().v1();
    if (savedFixedEndpointId == null) {
      await _endpointInfoStore.write(
        key: endpointIdStorageKey,
        value: fixedEndpointId,
      );
    }

    final endpoint = PublicEndpoint(
      effectiveDate: DateTime.now().toUtc().toIso8601String(),
      demographic: EndpointDemographic(
        appVersion: deviceContextInfo?.appVersion,
        locale: deviceContextInfo?.locale,
        make: deviceContextInfo?.make,
        model: deviceContextInfo?.model,
        modelVersion: deviceContextInfo?.modelVersion,
        platform: deviceContextInfo?.platform?.name,
        platformVersion: deviceContextInfo?.platformVersion,
        timezone: deviceContextInfo?.timezone,
      ),
      location: EndpointLocation(
        country: deviceContextInfo?.countryCode,
      ),
    );

    /// Retrieve stored GlobalAttributes
    final cachedAttributes =
        await _endpointInfoStore.read(key: _endpointGlobalAttrsKey);
    final globalAttributes = cachedAttributes == null
        ? <String, String>{}
        : (jsonDecode(cachedAttributes) as Map<String, Object?>)
            .cast<String, String>();

    /// Retrieve stored GlobalMetrics
    final cachedMetrics =
        await _endpointInfoStore.read(key: _endpointGlobalMetricsKey);
    final globalMetrics = cachedMetrics == null
        ? <String, double>{}
        : (jsonDecode(cachedMetrics) as Map<String, Object?>)
            .cast<String, double>();

    _endpointGlobalFieldsManager = EndpointGlobalFieldsManager(
      _endpointInfoStore,
      globalAttributes,
      globalMetrics,
    );

    _endpointClient = EndpointClient(
      appId,
      fixedEndpointId,
      pinpointClient,
      _endpointGlobalFieldsManager,
      endpoint.toBuilder(),
    );
    unawaited(
      Amplify.asyncConfig.then((_) {
        _endpointClient.updateEndpoint();
      }),
    );

    _eventStorageAdapter = EventStorageAdapter(driftQueryExecutor);

    _eventClient = EventClient(
      appId: appId,
      fixedEndpointId: fixedEndpointId,
      pinpointClient: pinpointClient,
      endpointClient: _endpointClient,
      storageAdapter: _eventStorageAdapter,
    );

    _sessionManager = SessionManager(
      fixedEndpointId: fixedEndpointId,
      appLifecycleProvider: _appLifecycleProvider,
      onSessionStart: (sb) async {
        _logger.debug('Session started');
        if (!_analyticsEnabled) return;
        await _eventClient.recordEvent(
          _eventCreator.createPinpointEvent(
            zSessionStartEventType,
            sb,
          ),
        );
        await _eventClient.flushEvents();
      },
      onSessionEnd: (sb) async {
        _logger.debug('Session ended');
        if (!_analyticsEnabled) return;
        await _eventClient.recordEvent(
          _eventCreator.createPinpointEvent(zSessionStopEventType, sb),
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
    final pinpointEvent = _eventCreator.createPinpointEvent(
      event.name,
      _sessionManager.session,
      event,
    );
    await _eventClient.recordEvent(pinpointEvent);
  }

  @override
  Future<void> registerGlobalProperties({
    required AnalyticsProperties globalProperties,
  }) async {
    _ensureConfigured();
    _eventCreator.registerGlobalProperties(globalProperties);
  }

  @override
  Future<void> unregisterGlobalProperties({
    List<String> propertyNames = const <String>[],
  }) async {
    _ensureConfigured();
    _eventCreator.unregisterGlobalProperties(propertyNames);
  }

  @override
  Future<void> identifyUser({
    required String userId,
    required AnalyticsUserProfile userProfile,
  }) async {
    _ensureConfigured();
    await _endpointClient.setUser(userId, userProfile);
  }

  @override
  Future<void> reset() async {
    if (!_isConfigured) {
      return;
    }
    _isConfigured = false;
    _autoEventSubmitter.stop();
    await _eventClient.close();
    await _eventStorageAdapter.close();
  }
}
