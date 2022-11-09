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
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/analytics_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_db_common_dart/amplify_db_common_dart.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

/// {@template amplify_analytics_pinpoint_dart.amplify_analytics_pinpoint_dart}
/// The AWS Pinpoint Dart implementation of the Amplify Analytics category.
///
/// - Validates and parses inputs
/// - Receives and provides external Flutter Provider implementations
/// - Delegates work to the [AnalyticsClient]
/// {@endtemplate}
class AmplifyAnalyticsPinpointDart extends AnalyticsPluginInterface {
  /// {@macro amplify_analytics_pinpoint_dart.amplify_analytics_pinpoint_dart}
  AmplifyAnalyticsPinpointDart({
    SecureStorageInterface? keyValueStore,
    CachedEventsPathProvider? pathProvider,
    AppLifecycleProvider? appLifecycleProvider,
    DeviceContextInfoProvider? deviceContextInfoProvider,
    required Connect dbConnectFunction,
  })  : _keyValueStore = keyValueStore,
        _pathProvider = pathProvider,
        _appLifecycleProvider = appLifecycleProvider,
        _deviceContextInfoProvider = deviceContextInfoProvider,
        _dbConnectFunction = dbConnectFunction;

  AnalyticsClient? __analyticsClient;
  AnalyticsClient get _analyticsClient {
    if (__analyticsClient == null) {
      throw const AnalyticsException(
        'Analytics not configured',
        recoverySuggestion:
            'Please make sure to call: await Amplify.configure(amplifyconfig)',
      );
    }
    return __analyticsClient!;
  }

  final SecureStorageInterface? _keyValueStore;

  /// External Flutter Provider implementations
  final CachedEventsPathProvider? _pathProvider;
  final AppLifecycleProvider? _appLifecycleProvider;
  final DeviceContextInfoProvider? _deviceContextInfoProvider;
  final Connect _dbConnectFunction;

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

    // Prepare AnalyticsClient
    final keyValueStore = _keyValueStore ??
        AmplifySecureStorageWorker(
          config: AmplifySecureStorageConfig(
            scope: 'analyticsPinpoint',
          ),
        );

    final deviceContextInfo =
        await _deviceContextInfoProvider?.getDeviceInfoDetails();

    final driftStoragePath = await _pathProvider?.getApplicationSupportPath();
    final driftQueryExecutor = _dbConnectFunction(
      name: 'analytics_cached_events',
      path: driftStoragePath,
    );

    __analyticsClient = await AnalyticsClient.getInstance(
      appId: appId,
      keyValueStore: keyValueStore,
      pinpointClient: pinpointClient,
      driftQueryExecutor: driftQueryExecutor,
      appLifecycleProvider: _appLifecycleProvider,
      deviceContextInfo: deviceContextInfo,
    );
  }

  @override
  Future<void> enable() async {
    _analyticsClient.enable();
  }

  @override
  Future<void> disable() async {
    _analyticsClient.disable();
  }

  @override
  Future<void> flushEvents() async {
    await _analyticsClient.flushEvents();
  }

  @override
  Future<void> recordEvent({
    required AnalyticsEvent event,
  }) async {
    await _analyticsClient.recordEvent(event);
  }

  @override
  Future<void> registerGlobalProperties({
    required AnalyticsProperties globalProperties,
  }) async {
    _analyticsClient.registerGlobalProperties(globalProperties);
  }

  @override
  Future<void> unregisterGlobalProperties({
    List<String> propertyNames = const <String>[],
  }) async {
    _analyticsClient.unregisterGlobalProperties(propertyNames);
  }

  @override
  Future<void> identifyUser({
    required String userId,
    required AnalyticsUserProfile userProfile,
  }) async {
    await _analyticsClient.identifyUser(userId, userProfile);
  }
}
