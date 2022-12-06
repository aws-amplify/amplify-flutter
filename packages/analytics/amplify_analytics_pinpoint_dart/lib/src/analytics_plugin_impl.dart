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
    SecureStorageInterface? keyValueStore,
    CachedEventsPathProvider? pathProvider,
    AppLifecycleProvider? appLifecycleProvider,
    DeviceContextInfoProvider? deviceContextInfoProvider,
    required Connect dbConnectFunction,
  })  : _keyValueStore = keyValueStore ??
            AmplifySecureStorageWorker(
              config: AmplifySecureStorageConfig(
                scope: 'analyticsPinpoint',
              ),
            ),
        _pathProvider = pathProvider,
        _appLifecycleProvider = appLifecycleProvider,
        _deviceContextInfoProvider = deviceContextInfoProvider,
        _dbConnectFunction = dbConnectFunction;

  var _isConfigured = false;
  void _ensureConfigured() {
    if (!_isConfigured) {
      throw const AnalyticsException(
        'Analytics not configured',
        recoverySuggestion:
            'Please make sure to call: await Amplify.configure(amplifyconfig)',
      );
    }
  }

  late bool _analyticsEnabled;

  static const String _endpointIdStorageKey = 'UniqueId';
  static const String _endpointGlobalAttrsKey = 'EndpointGlobalAttributesKey';
  static const String _endpointGlobalMetricsKey = 'EndpointGlobalMetricsKey';
  static const String _analyticsEnabledKey = 'Enabled';

  late final EventCreator _eventCreator;
  late final EndpointClient _endpointClient;
  late final EventClient _eventClient;
  late final SessionManager _sessionManager;
  late final EndpointGlobalFieldsManager _endpointGlobalFieldsManager;
  late final EventGlobalFieldsManager _eventGlobalFieldsManager =
      EventGlobalFieldsManager();
  late final EventStorageAdapter _eventStorageAdapter;
  late final StoppableTimer _autoEventSubmitter;

  final SecureStorageInterface _keyValueStore;

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
        await _keyValueStore.read(key: _endpointIdStorageKey);
    final fixedEndpointId = savedFixedEndpointId ?? const Uuid().v1();
    if (savedFixedEndpointId == null) {
      await _keyValueStore.write(
        key: _endpointIdStorageKey,
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
        await _keyValueStore.read(key: _endpointGlobalAttrsKey);
    final globalAttributes = cachedAttributes == null
        ? <String, String>{}
        : (jsonDecode(cachedAttributes) as Map<String, Object?>)
            .cast<String, String>();

    /// Retrieve stored GlobalMetrics
    final cachedMetrics =
        await _keyValueStore.read(key: _endpointGlobalMetricsKey);
    final globalMetrics = cachedMetrics == null
        ? <String, double>{}
        : (jsonDecode(cachedMetrics) as Map<String, Object?>)
            .cast<String, double>();

    _endpointGlobalFieldsManager = EndpointGlobalFieldsManager(
      _keyValueStore,
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
        if (_analyticsEnabled) _endpointClient.updateEndpoint();
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
      // TODO(fjnoyp): How are errors handled here?
      callback: flushEvents,
    );

    _analyticsEnabled = await Future.sync(() async {
      final enabled = await _keyValueStore.read(key: _analyticsEnabledKey);
      return enabled == null || enabled == 'true';
    });
    _isConfigured = true;
    _logger.debug('Analytics enabled: $_analyticsEnabled');
    if (_analyticsEnabled) {
      _sessionManager
        ..startSession()
        ..startSessionTracking();
    }
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
    _sessionManager
      ..startSession()
      ..startSessionTracking();
    await _keyValueStore.write(
      key: _analyticsEnabledKey,
      value: 'true',
    );
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
    _sessionManager
      ..stopSession()
      ..stopSessionTracking();
    await _keyValueStore.write(
      key: _analyticsEnabledKey,
      value: 'false',
    );
  }

  @override
  Future<void> flushEvents() async {
    _ensureConfigured();
    // TODO(fjnoyp): What is the behavior supposed to be when analytics is disabled?
    if (!_analyticsEnabled) return;
    await _eventClient.flushEvents();
  }

  @override
  Future<void> recordEvent({
    required AnalyticsEvent event,
  }) async {
    _ensureConfigured();
    // TODO(fjnoyp): What is the behavior supposed to be when analytics is disabled?
    if (!_analyticsEnabled) return;
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
    // TODO(fjnoyp): What is the behavior supposed to be when analytics is disabled?
    if (!_analyticsEnabled) return;
    _eventCreator.registerGlobalProperties(globalProperties);
  }

  @override
  Future<void> unregisterGlobalProperties({
    List<String> propertyNames = const <String>[],
  }) async {
    _ensureConfigured();
    // TODO(fjnoyp): What is the behavior supposed to be when analytics is disabled?
    if (!_analyticsEnabled) return;
    _eventCreator.unregisterGlobalProperties(propertyNames);
  }

  @override
  Future<void> identifyUser({
    required String userId,
    required AnalyticsUserProfile userProfile,
  }) async {
    _ensureConfigured();
    // TODO(fjnoyp): What is the behavior supposed to be when analytics is disabled?
    if (!_analyticsEnabled) return;
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
