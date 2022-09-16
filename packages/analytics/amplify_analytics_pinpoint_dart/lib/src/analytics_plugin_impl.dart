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
import 'package:aws_signature_v4/aws_signature_v4.dart';

import 'impl/analytics_client/analytics_client.dart';
import 'impl/analytics_client/shared_prefs.dart';
import 'impl/device_context_info_provider.dart';

// TODO - what are campaignattributes android? (setCampaignAttributes)

/// Public facing Plugin
/// Validate and parse inputs
/// Before delegating to AnalyticsClient
class AmplifyAnalyticsPinpointDart extends AnalyticsPluginInterface {
  late AnalyticsClient? _analyticsClient;

  AppLifecycleProvider? _appLifecycleProvider;
  DeviceContextInfoProvider? _deviceContextInfoProvider;

  AmplifyAnalyticsPinpointDart(
      {AppLifecycleProvider? appLifecycleProvider,
      DeviceContextInfoProvider? deviceContextInfoProvider}) {
    _appLifecycleProvider = appLifecycleProvider;
    _deviceContextInfoProvider = deviceContextInfoProvider;
  }

  @override
  Future<void> configure({
    AmplifyConfig? config,
  }) async {
    if (config == null ||
        config.analytics == null ||
        config.analytics?.awsPlugin == null) {
      throw const AnalyticsException('No Pinpoint plugin config available');
    }

    // TODO PUT IN SEPARATE FACTORY CLASS ?
    PinpointPluginConfig pinpointConfig = config.analytics!.awsPlugin!;
    String appId = pinpointConfig.pinpointAnalytics.appId;
    String region = pinpointConfig.pinpointAnalytics.region;

    /// TODO: missing config fields
    /// - Auto flush interval
    /// - Track app lifecycle events (bool)

    // TODO - values hardcoded because default CredentialProvider is giving null values ...
    AWSCredentialsProvider credentialsProvider =
        const AWSCredentialsProvider.environment();

    var pinpointClient = PinpointClient(
        region: region, credentialsProvider: credentialsProvider);

    var sharedPrefs = await SharedPrefs.getInstance();

    if (_deviceContextInfoProvider != null) {
      await _deviceContextInfoProvider!.getDeviceInfoDetails();
    }

    _analyticsClient = AnalyticsClient();
    await _analyticsClient!.configure(appId, sharedPrefs, pinpointClient,
        _appLifecycleProvider, _deviceContextInfoProvider);
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
}
