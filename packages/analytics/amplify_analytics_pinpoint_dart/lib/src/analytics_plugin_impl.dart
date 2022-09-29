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
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';

import 'impl/analytics_client/analytics_client.dart';
import 'impl/analytics_client/key_value_store.dart';

/// Public facing Plugin
/// Validate and parse inputs
/// Receive and provide external Flutter Provider implementations
/// Delegate work to PinpointClient
class AmplifyAnalyticsPinpointDart extends AnalyticsPluginInterface {
  AmplifyAnalyticsPinpointDart({
    SecureStorageInterface? keyValueStorage,
    CachedEventsPathProvider? pathProvider,
    AppLifecycleProvider? appLifecycleProvider,
    DeviceContextInfoProvider? deviceContextInfoProvider,
  })  : _credentialStorage = keyValueStorage,
        _pathProvider = pathProvider,
        _appLifecycleProvider = appLifecycleProvider,
        _deviceContextInfoProvider = deviceContextInfoProvider;

  late AnalyticsClient? _analyticsClient;
  final SecureStorageInterface? _credentialStorage;

  /// External Flutter Provider implementations
  final CachedEventsPathProvider? _pathProvider;
  final AppLifecycleProvider? _appLifecycleProvider;
  final DeviceContextInfoProvider? _deviceContextInfoProvider;

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    /// Parse config values from amplifyconfiguration.json
    if (config == null ||
        config.analytics == null ||
        config.analytics?.awsPlugin == null) {
      throw const AnalyticsException('No Pinpoint plugin config available');
    }

    PinpointPluginConfig pinpointConfig = config.analytics!.awsPlugin!;
    String appId = pinpointConfig.pinpointAnalytics.appId;
    String region = pinpointConfig.pinpointAnalytics.region;

    /// Prepare PinpointClient
    const providerKey = AmplifyAuthProviderToken<AWSIamAmplifyAuthProvider>();
    AWSIamAmplifyAuthProvider? authProvider =
        authProviderRepo.getAuthProvider(providerKey);

    if (authProvider == null) {
      throw const AnalyticsException(
          'No AWSIamAmplifyAuthProvider available.  Is Auth cateogry added and configured?');
    }

    AWSCredentials credentials = await authProvider.retrieve();
    AWSCredentialsProvider credentialsProvider =
        AWSCredentialsProvider(credentials);

    final pinpointClient = PinpointClient(
        region: region, credentialsProvider: credentialsProvider);

    /// Prepare AnalyticsClient
    final keyValueStore = await KeyValueStore.getInstance(_credentialStorage);

    DeviceContextInfo? deviceContextInfo = null;
    if (_deviceContextInfoProvider != null) {
      deviceContextInfo =
          await _deviceContextInfoProvider!.getDeviceInfoDetails();
    }

    _analyticsClient = AnalyticsClient();
    await _analyticsClient!.configure(appId, keyValueStore, pinpointClient,
        _pathProvider, _appLifecycleProvider, deviceContextInfo);
  }

  @override
  Future<void> enable() async {
    _analyticsClient?.enable();
  }

  @override
  Future<void> disable() async {
    _analyticsClient?.disable();
  }

  @override
  Future<void> flushEvents() async {
    await _analyticsClient?.flushEvents();
  }

  @override
  Future<void> recordEvent({
    required AnalyticsEvent event,
  }) async {
    _analyticsClient?.recordEvent(event);
  }

  @override
  Future<void> registerGlobalProperties({
    required AnalyticsProperties globalProperties,
  }) async {
    await _analyticsClient?.registerGlobalProperties(globalProperties);
  }

  @override
  Future<void> unregisterGlobalProperties({
    List<String> propertyNames = const <String>[],
  }) async {
    await _analyticsClient?.unregisterGlobalProperties(propertyNames);
  }

  @override
  Future<void> identifyUser({
    required String userId,
    required AnalyticsUserProfile userProfile,
  }) async {
    _analyticsClient?.identifyUser(userId, userProfile);
  }

  void _checkConfigured() {
    if (_analyticsClient == null) {
      throw new AnalyticsException('Analytics not configured',
          recoverySuggestion: 'Please call Amplify.configure(amplifyconfig)');
    }
  }
}
